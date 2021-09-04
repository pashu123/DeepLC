//===- DeepLCDialect.td - DeepLC dialect -----------*- tablegen -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef DEEPLC_DIALECT
#define DEEPLC_DIALECT

include "mlir/IR/OpBase.td"

//===----------------------------------------------------------------------===//
// DeepLC dialect definition.
//===----------------------------------------------------------------------===//

def DeepLC_Dialect : Dialect {
    let name = "deeplc";
    let summary = "A standalone out-of-tree MLIR dialect.";
    let description = [{
        This dialect is an example of an out-of-tree MLIR dialect designed to
        illustrate the basic setup required to develop MLIR-based tools without
        working inside of the LLVM source tree.
    }];
    let cppNamespace = "::mlir::deeplc";
}

//===----------------------------------------------------------------------===//
// Base deeplc operation definition.
//===----------------------------------------------------------------------===//

class DeepLC_Op<string mnemonic, list<OpTrait> traits = []> :
        Op<DeepLC_Dialect, mnemonic, traits>;

#endif // DEEPLC_DIALECT
