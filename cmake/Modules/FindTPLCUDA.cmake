
IF (KOKKOS_CXX_COMPILER_ID STREQUAL Clang)
   KOKKOS_FIND_IMPORTED(CUDA INTERFACE
    LIBRARIES cudart cuda
    LIBRARY_PATHS ${CUDA_ROOT}/lib64 ${KOKKOS_CUDA_DIR}/lib64 ENV LD_LIBRARY_PATH ENV CUDA_PATH
   )
ELSE()
   KOKKOS_CREATE_IMPORTED_TPL(CUDA INTERFACE
    LINK_LIBRARIES cuda
   )
ENDIF()
