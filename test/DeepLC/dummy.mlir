// RUN: deeplc-opt %s | deeplc-opt | FileCheck %s

module {
    // CHECK-LABEL: func @bar()
    func @bar() {
        %0 = constant 1 : i32
        // CHECK: %{{.*}} = deeplc.foo %{{.*}} : i32
        %res = deeplc.foo %0 : i32
        return
    }
}
