add_mlir_dialect_library(MLIRDeepLC
        DeepLCDialect.cpp
        DeepLCOps.cpp

        ADDITIONAL_HEADER_DIRS
        ${PROJECT_SOURCE_DIR}/include/DeepLC

        DEPENDS
        MLIRDeepLCOpsIncGen

	LINK_LIBS PUBLIC
	MLIRIR
	)
