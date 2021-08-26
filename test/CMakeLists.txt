configure_lit_site_cfg(
        ${CMAKE_CURRENT_SOURCE_DIR}/lit.site.cfg.py.in
        ${CMAKE_CURRENT_BINARY_DIR}/lit.site.cfg.py
        MAIN_CONFIG
        ${CMAKE_CURRENT_SOURCE_DIR}/lit.cfg.py
)

set(DEEPLC_TEST_DEPENDS
        FileCheck count not
        deeplc-opt
        deeplc-translate
        )

add_lit_testsuite(check-deeplc "Running the standalone regression tests"
        ${CMAKE_CURRENT_BINARY_DIR}
        DEPENDS ${DEEPLC_TEST_DEPENDS}
        )
set_target_properties(check-deeplc PROPERTIES FOLDER "Tests")

add_lit_testsuites(DEEPLC ${CMAKE_CURRENT_SOURCE_DIR} DEPENDS ${DEEPLC_TEST_DEPENDS})
