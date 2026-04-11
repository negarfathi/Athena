#include "../../include/transform_code/transform_code.h"

void TransformCode(const std::string& sourceCodeName, const std::string& sourceCodeDirectory) {
    struct Patch {
        std::string fileName;
        std::vector<std::pair<std::string, std::string>> replacements;
    };

    const std::unordered_map<std::string, Patch> patches = {
        {
            "Type_Conversion_in_Comparison_2_T",
            {
                "SourceCode_SemanticAugmentor.c",
                {
                    {
                        "ac != (unsigned char)c2",
                        "ac != wrap_around(c2, 0, UCHAR_MAX)"
                    }
                }
            }
        },
        {
            "Missing_Iterator_Update_5_NT",
            {
                "Metadata_TypeAnnotator.txt",
                {
                    {
                        "TYPE v: bv(32);",
                        ""
                    }
                }
            }
        },
        {
            "Missing_Iterator_Update_5_T",
            {
                "Metadata_TypeAnnotator.txt",
                {
                    {
                        "TYPE v: bv(32);",
                        ""
                    }
                }
            }
        },
        {
            "Incorrect_Control_Statement_2_T",//
            {
                "SourceCode_llvm2KITTeL.t2",
                {
                    {
                        "FROM: main_bb5;\n"
                        "vslots_used := nondet();\n"
                        "vereg := nondet();\n"
                        "var__temp_vi.0 := 0;\n"
                        "TO: main_wrap_around.exit4;",
                        "FROM: main_bb5;\n"
                        "vslots_used := nondet();\n"
                        "vereg := nondet();\n"
                        "v12 := nondet();\n"
                        "var__temp_vi.0 := 0;\n"
                        "TO: main_wrap_around.exit4;"
                    },
                    {
                        "FROM: main_bb0;\n"
                        "vslots_used := nondet();\n"
                        "vereg := nondet();\n"
                        "var__temp_vi.0 := 0;\n"
                        "TO: main_bb1;",
                        "FROM: main_bb0;\n"
                        "vslots_used := nondet();\n"
                        "vereg := nondet();\n"
                        "v0 := nondet();\n"
                        "var__temp_vi.0 := 0;\n"
                        "TO: main_bb1;"
                    }
                }
            }
        },
        {
            "Incorrect_Initialization_4_NT",//
            {
                "SourceCode_llvm2KITTeL.t2",
                {
                    {
                        "FROM: main_bb5;\n"
                        "v13 := nondet();\n"
                        "TO: main_bb5_end;",
                        "FROM: main_bb5;\n"
                        "v12 := nondet();\n"
                        "v13 := nondet();\n"
                        "TO: main_bb5_end;"
                    },
                    {
                        "FROM: main_bb0;\n"
                        "v1 := nondet();\n"
                        "v2 := nondet();\n"
                        "v3 := nondet();\n"
                        "TO: main_bb0_end;",
                        "FROM: main_bb0;\n"
                        "v0 := nondet();\n"
                        "v1 := nondet();\n"
                        "v2 := nondet();\n"
                        "v3 := nondet();\n"
                        "TO: main_bb0_end;"
                    }
                }
            }
        },
        {
            "Missing_Corner-case_Handling_4_NT",
            {
                "SourceCode_llvm2KITTeL.t2",
                {
                    {
                        "FROM: main_bb16_end;\n"
                        "assume(nondet());\n"
                        "TO: main_bb17;\n"
                        "\n"
                        "FROM: main_bb16_end;\n"
                        "assume(nondet());\n"
                        "TO: main_bb18;",
                        "FROM: main_bb16_end;\n"
                        "assume(v92 > vh.0);\n"
                        "TO: main_bb17;\n"
                        "\n"
                        "FROM: main_bb16_end;\n"
                        "assume(v92 <= vh.0);\n"
                        "TO: main_bb18;"
                    }
                }
            }
        },
        {
            "Missing_Corner-case_Handling_4_T",
            {
                "SourceCode_llvm2KITTeL.t2",
                {
                    {
                        "FROM: main_bb15_end;\n"
                        "assume(nondet());\n"
                        "TO: main_bb16;\n"
                        "\n"
                        "FROM: main_bb15_end;\n"
                        "assume(nondet());\n"
                        "TO: main_bb17;",
                        "FROM: main_bb15_end;\n"
                        "assume(v89 > vh.0);\n"
                        "TO: main_bb16;\n"
                        "\n"
                        "FROM: main_bb15_end;\n"
                        "assume(v89 <= vh.0);\n"
                        "TO: main_bb17;"
                    }
                }
            }
        },
        {
            "data_structures_set_multi_proc_false-unreach-call_ground",
            {
                "SourceCode_llvm2KITTeL.t2",
                {
                    {
                        "FROM: main_elem_exists.exit_end;\n"
                        "assume(1 >= 0);\n"
                        "TO: main_bb23;\n"
                        "\n"
                        "FROM: main_elem_exists.exit_end;\n"
                        "assume(0 >= 0);\n"
                        "TO: main_bb22;",
                        "FROM: main_elem_exists.exit_end;\n"
                        "assume(1 <= 0);\n"
                        "TO: main_bb23;\n"
                        "\n"
                        "FROM: main_elem_exists.exit_end;\n"
                        "assume(0 <= 0);\n"
                        "TO: main_bb22;"
                    }
                }
            }
        },
        {
            "KroeningSharyginaTsitovichWintersteiger-CAV2010-Fig1_true-termination",
            {
                "SourceCode_llvm2KITTeL.t2",
                {
                    {
                        "FROM: main_bb2_v.x.1;\n"
                        "assume(1 >= 0);\n"
                        "v.x.1 := 0;\n"
                        "TO: main_bb2_sv.x.1;\n"
                        "\n"
                        "FROM: main_bb2_v.x.1;\n"
                        "assume(0 >= 0);\n"
                        "v.x.1 := vx.1;\n"
                        "TO: main_bb2_sv.x.1;",
                        "FROM: main_bb2_v.x.1;\n"
                        "assume(1 <= 0);\n"
                        "v.x.1 := 0;\n"
                        "TO: main_bb2_sv.x.1;\n"
                        "\n"
                        "FROM: main_bb2_v.x.1;\n"
                        "assume(0 <= 0);\n"
                        "v.x.1 := vx.1;\n"
                        "TO: main_bb2_sv.x.1;"
                    }
                }
            }
        }
    };

    auto it = patches.find(sourceCodeName);
    if (it == patches.end()) return;
    const auto& patch = it->second;
    const std::filesystem::path filePath = std::filesystem::path(sourceCodeDirectory) / patch.fileName;
    std::ifstream inFile(filePath);
    if (!inFile.is_open()) return;
    std::stringstream buffer;
    buffer << inFile.rdbuf();
    inFile.close();
    std::string content = buffer.str();
    for (const auto& [sourceText, destinationText] : patch.replacements) {
        size_t position = content.find(sourceText);
        while (position != std::string::npos) {
            content.replace(position, sourceText.length(), destinationText);
            position = content.find(sourceText, position + destinationText.length());
        }
    }
    std::ofstream outFile(filePath);
    outFile << content;
    outFile.close();
}