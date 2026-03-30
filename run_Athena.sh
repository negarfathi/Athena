#!/bin/bash

root_directory="$(cd "$(dirname "$0")" && pwd)"

athena_exe="$root_directory/cmake-build-debug/Athena"
benchmarks_directory="$root_directory/Benchmarks"
results_directory="$root_directory/ReproducedResults"

rm -rf "$results_directory"
cp -r "$benchmarks_directory" "$results_directory"

fse_original="$results_directory/FSE"
fse_BV="$results_directory/FSE_Bitvector_Mode"
fse_MA="$results_directory/FSE_Modulo_Arithmetic_Mode"
fse_MI="$results_directory/FSE_Mathematical_Integer_Mode"

if [[ -d "$fse_original" ]]; then
    cp -r "$fse_original" "$fse_BV"
    cp -r "$fse_original" "$fse_MA"
    cp -r "$fse_original" "$fse_MI"
    rm -rf "$fse_original"
fi

#Phase 1: Generate T2 files using Athena
find "$results_directory" -type f \( -name "*.c" -o -name "*.cpp" \) | sort | while read -r source_code; do

    if [[ "$source_code" == *"SourceCode_Ptr2Arr.c" || "$path" == *"SourceCode_SemanticAugmentor.c" ]]; then
        continue
    fi

    echo "Running: $source_code"

    # FSE - Bitvector Mode
    if [[ "$source_code" == *"/FSE_Bitvector_Mode/"* ]]; then
        "$athena_exe" "$source_code" \
            --timeout=600 \
            --semantic-augmentor-mode=none \
            --type-annotator-mode=all \
            --signedness-info=all \
            --unreachable-exit=true \
            --muval-mode=none

    # FSE - Modulo Arithmatic Mode
    elif [[ "$source_code" == *"/FSE_Modulo_Arithmetic_Mode/"* ]]; then
        "$athena_exe" "$source_code" \
            --timeout=300 \
            --semantic-augmentor-mode=only-nobv \
            --type-annotator-mode=only-bv \
            --signedness-info=only-bv \
            --unreachable-exit=true \
            --muval-mode=none

    # FSE - Mathematical Integer Mode
    elif [[ "$source_code" == *"/FSE_Mathematical_Integer_Mode/"* ]]; then
        "$athena_exe" "$source_code" \
            --timeout=270 \
            --semantic-augmentor-mode=none \
            --type-annotator-mode=all \
            --signedness-info=all \
            --unreachable-exit=true \
            --muval-mode=none

    # TermCOMP
    elif [[ "$source_code" == *"/TermCOMP/"* ]]; then
        "$athena_exe" "$source_code" \
            --timeout=900 \
            --semantic-augmentor-mode=none \
            --type-annotator-mode=none \
            --signedness-info=none \
            --unreachable-exit=true \
            --muval-mode=none

    else
        continue
    fi

    if [[ $? -ne 0 ]]; then
        echo "Error Running: $source_code"
    fi

done

#Phase 2: Evaluate T2 files using MuVal
cd "$results_directory"

while IFS= read -r path; do

    if [[ "$path" == *"SourceCode_Ptr2Arr.c" || "$path" == *"SourceCode_SemanticAugmentor.c" ]]; then
        continue
    fi

    echo "Processing $path ..."

    path_postfix="${path#./}"
    path_postfix_prefix="${path_postfix%.*}"
    t2_file_path="${path_postfix_prefix}.t2"
    directory_path=$(dirname "$path_postfix")
    output_file_path="$results_directory/$directory_path/Output.txt"

    if [[ "$path" == *"/FSE_Bitvector_Mode/"* ]]; then
        timeout=600
        dockerName="muval-fse2026"
        cFlag="./config/solver/muval_parallel_exc_tbq_ar.json"
        pFlag="ltstermbv"
    elif [[ "$path" == *"/FSE_Modulo_Arithmetic_Mode/"* ]]; then
        timeout=300
        dockerName="muval-fse2026"
        cFlag="./config/solver/muval_parallel_exc_tbq_ar.json"
        pFlag="ltsterm"
    elif [[ "$path" == *"/FSE_Mathematical_Integer_Mode/"* ]]; then
        timeout=270
        dockerName="muval-fse2026"
        cFlag="./config/solver/muval_parallel_exc_tbq_ar.json"
        pFlag="ltsterm"
    elif [[ "$path" == *"/TermCOMP/"* ]]; then
        timeout=900
        dockerName="muval-master"
        cFlag="./config/solver/muval_parallel_exc_tbq_ar.json"
        pFlag="ltsterm"
    else
        continue
    fi

    start_time=$(gdate +%s%N)
    {
        docker run --rm -v "$results_directory":/targetPath ${dockerName} /bin/bash -c " \
            cd /root/coar && \
            timeout ${timeout} ./main.exe -c ${cFlag} -p ${pFlag} /targetPath/\"$t2_file_path\""
    } > "$output_file_path" 2>&1

    exit_code=$?
    if [[ $exit_code -eq 124 ]]; then
        echo "TIMEOUT" >> "$output_file_path"
    elif [[ $exit_code -eq 137 ]]; then
        echo "OOM ERROR" >> "$output_file_path"
    elif [[ $exit_code -ne 0 ]]; then
        echo "MuVal execution failed." >&2
        echo "ERROR" >> "$output_file_path"
    fi

    end_time=$(gdate +%s%N)
    elapsed_time=$(((end_time - start_time) / 1000000))
    printf "Runtime: %d milliseconds" "$elapsed_time" >> "$output_file_path"

done < <(find . -type f \( -name "*.c" -o -name "*.cpp" \) | sort)