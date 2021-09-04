//===- DeepLCDialect.cpp - Standalone dialect ---------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "DeepLC/Dialect/deeplc/DeepLCDialect.h"
#include "DeepLC/Dialect/deeplc/DeepLCOps.h"

using namespace mlir;
using namespace mlir::deeplc;

#include "DeepLC/Dialect/deeplc/DeepLCOpsDialect.cpp.inc"

//===----------------------------------------------------------------------===//
// Standalone dialect.
//===----------------------------------------------------------------------===//

void DeepLCDialect::initialize() {
  addOperations<
#define GET_OP_LIST
#include "DeepLC/Dialect/deeplc/DeepLCOps.cpp.inc"
      >();
}
