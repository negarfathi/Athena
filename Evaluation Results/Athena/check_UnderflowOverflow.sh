#Execute: ~/Desktop/check_UnderflowOverflow.sh

root_directory="$HOME/Desktop/liveness_analysis"

cd "$root_directory/Benchmarks"

while IFS= read -r path; do

    echo "Processing $path ..."

    path_postfix="${path#./}"
    directory_path=$(dirname "$path_postfix")
    output_file_path="$directory_path/output.txt"

    start_time=$(gdate +%s%N)
    {
        docker run --rm --entrypoint /bin/bash -v "$root_directory":/liveness_analysis sosylab/cpachecker:4.0 -c "
            cd /liveness_analysis && \
            timeout 30 /cpachecker/scripts/cpa.sh --predicateAnalysis--overflow --spec /cpachecker/config/properties/no-overflow.prp --option overflow.checkUnsigned=true --preprocess --heap 10000M --64 --stats Benchmarks/\"$path_postfix\""
    } >> "$output_file_path" 2>&1

    end_time=$(gdate +%s%N)
    elapsed_time=$(((end_time - start_time) / 1000000))
    printf "Runtime: %d milliseconds" "$elapsed_time" >> "$output_file_path"

done < <(find . -type f \( -name "*.c" -o -name "*.cpp" \) | sort)



output="$root_directory/Benchmarks/results_UnderflowOverflow.csv"

echo "Name,Verification Result Line,Last Line" > "$output"

find "$root_directory" -type f -iname "output.txt" | sort | while read -r file; do
    folder_name=$(basename "$(dirname "$file")")

    verification_result_line=$(grep -m 1 '^Verification result:' "$file")
    verification_result_line=$(echo "$verification_result_line" | sed 's/"/""/g')
    
    last_line=$(grep . "$file" | tail -n 1 | sed 's/"/""/g')

    echo "\"$folder_name\",\"$verification_result_line\",\"$last_line\"" >> "$output"
done