get_property(dialect_libs GLOBAL PROPERTY MLIR_DIALECT_LIBS)
get_property(conversion_libs GLOBAL PROPERTY MLIR_CONVERSION_LIBS)
set(LIBS
        ${dialect_libs}
        ${conversion_libs}
        MLIROptLib
        MLIRDeepLC
        )
add_llvm_executable(deeplc-opt deeplc-opt.cpp)

llvm_update_compile_flags(deeplc-opt)
target_link_libraries(deeplc-opt PRIVATE ${LIBS})

mlir_check_all_link_libraries(deeplc-opt)
