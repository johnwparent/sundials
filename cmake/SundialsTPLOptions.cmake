# ---------------------------------------------------------------
# Programmer(s): Cody J. Balos @ LLNL
# ---------------------------------------------------------------
# SUNDIALS Copyright Start
# Copyright (c) 2002-2023, Lawrence Livermore National Security
# and Southern Methodist University.
# All rights reserved.
#
# See the top-level LICENSE and NOTICE files for details.
#
# SPDX-License-Identifier: BSD-3-Clause
# SUNDIALS Copyright End
# ---------------------------------------------------------------
# SUNDIALS options for third-party libraries
# ---------------------------------------------------------------

# ---------------------------------------------------------------
# Enable MPI support?
# ---------------------------------------------------------------
sundials_option(ENABLE_MPI BOOL "Enable MPI support" OFF)

# ---------------------------------------------------------------
# Enable OpenMP support?
# ---------------------------------------------------------------
sundials_option(ENABLE_OPENMP BOOL "Enable OpenMP support" OFF)

# ---------------------------------------------------------------
# Enable OpenMP target offloading support?
# ---------------------------------------------------------------
sundials_option(ENABLE_OPENMP_DEVICE BOOL
                "Enable OpenMP device offloading support" OFF)

# Advanced option to skip OpenMP device offloading support check.
# This is needed for a specific compiler that doesn't correctly
# report its OpenMP spec date (with CMake >= 3.9).
sundials_option(OPENMP_DEVICE_WORKS BOOL
                "Skip the OpenMP device offloading support check" OFF
                ADVANCED)

# ---------------------------------------------------------------
# Enable Pthread support?
# ---------------------------------------------------------------
sundials_option(ENABLE_PTHREAD BOOL "Enable Pthreads support" OFF)

# -------------------------------------------------------------
# Enable CUDA support?
# -------------------------------------------------------------
sundials_option(ENABLE_CUDA BOOL "Enable CUDA support" OFF)

# CMake 3.18 adds this option.
sundials_option(CMAKE_CUDA_ARCHITECTURES STRING "Target CUDA architecture" "70"
                DEPENDS_ON ENABLE_CUDA)

# -------------------------------------------------------------
# Enable HIP support?
# -------------------------------------------------------------
sundials_option(ENABLE_HIP BOOL "Enable HIP support" OFF)

# -------------------------------------------------------------
# Enable SYCL support?
# -------------------------------------------------------------
sundials_option(ENABLE_SYCL BOOL "Enable SYCL support" OFF)

sundials_option(SUNDIALS_SYCL_2020_UNSUPPORTED BOOL
                "Disable the use of some SYCL 2020 features in SUNDIALS libraries and examples" OFF
                DEPENDS_ON ENABLE_SYCL
                ADVANCED)

# ---------------------------------------------------------------
# Enable LAPACK support?
# ---------------------------------------------------------------
sundials_option(ENABLE_LAPACK BOOL "Enable Lapack support" OFF)

sundials_option(LAPACK_LIBRARIES STRING "Lapack and Blas libraries" "${LAPACK_LIBRARIES}"
                DEPENDS_ON ENABLE_LAPACK)

sundials_option(LAPACK_WORKS BOOL "Set to ON to force CMake to accept a given LAPACK configuration" OFF
                DEPENDS_ON ENABLE_LAPACK
                ADVANCED)

# ---------------------------------------------------------------
# Enable Ginkgo support?
# ---------------------------------------------------------------
sundials_option(ENABLE_GINKGO BOOL "Enable Ginkgo support" OFF)

sundials_option(Ginkgo_DIR PATH "Path to the root of a Ginkgo installation" "${Ginkgo_DIR}"
                DEPENDS_ON ENABLE_GINKGO)

sundials_option(SUNDIALS_GINKGO_BACKENDS STRING "Which Ginkgo backend(s) to build the SUNDIALS Ginkgo interfaces for (REF, OMP, CUDA, HIP, DPCPP)" "REF;OMP"
                DEPENDS_ON ENABLE_GINKGO)

sundials_option(GINKGO_WORKS BOOL "Set to ON to force CMake to accept a given Ginkgo configuration" OFF
                DEPENDS_ON ENABLE_GINKGO
                ADVANCED)

# ---------------------------------------------------------------
# Enable MAGMA support?
# ---------------------------------------------------------------
sundials_option(ENABLE_MAGMA BOOL "Enable MAGMA support" OFF)

sundials_option(MAGMA_DIR PATH "Path to the root of a MAGMA installation" "${MAGMA_DIR}"
                DEPENDS_ON ENABLE_MAGMA)

sundials_option(SUNDIALS_MAGMA_BACKENDS STRING "Which MAGMA backend to use under the SUNDIALS MAGMA interfaces (CUDA, HIP)" "CUDA"
                OPTIONS "CUDA;HIP"
                DEPENDS_ON ENABLE_MAGMA)

sundials_option(MAGMA_WORKS BOOL "Set to ON to force CMake to accept a given MAGMA configuration" OFF
                DEPENDS_ON ENABLE_MAGMA
                ADVANCED)

# ---------------------------------------------------------------
# Enable SuperLU_DIST support?
# ---------------------------------------------------------------
sundials_option(ENABLE_SUPERLUDIST BOOL "Enable SuperLU_DIST support" OFF)

sundials_option(SUPERLUDIST_DIR PATH "Path to the root of the SuperLU_DIST installation" "${SUPERLUDIST_DIR}"
                DEPENDS_ON ENABLE_SUPERLUDIST)

sundials_option(SUPERLUDIST_INCLUDE_DIRS PATH "SuperLU_DIST include directories" "${SUPERLUDIST_INCLUDE_DIRS}"
                DEPENDS_ON ENABLE_SUPERLUDIST
                ADVANCED)

sundials_option(SUPERLUDIST_LIBRARIES STRING "Semi-colon separated list of libraries needed for SuperLU_DIST." "${SUPERLUDIST_LIBRARIES}"
                DEPENDS_ON ENABLE_SUPERLUDIST
                ADVANCED)

sundials_option(SUPERLUDIST_OpenMP BOOL "Enable SUNDIALS support for SuperLU_DIST OpenMP on-node parallelism" OFF
                DEPENDS_ON ENABLE_SUPERLUDIST)

sundials_option(SUPERLUDIST_WORKS BOOL "Set to ON to force CMake to accept a given SuperLU_DIST configuration" OFF
                DEPENDS_ON ENABLE_SUPERLUDIST
                ADVANCED)

# ---------------------------------------------------------------
# Enable SuperLU_MT support?
# ---------------------------------------------------------------
sundials_option(ENABLE_SUPERLUMT BOOL "Enable SuperLU_MT support" OFF)

sundials_option(SUPERLUMT_INCLUDE_DIR PATH "SuperLU_MT include directory" "${SUPERLUMT_INCLUDE_DIR}"
                DEPENDS_ON ENABLE_SUPERLUMT)

sundials_option(SUPERLUMT_LIBRARY_DIR PATH "SuperLU_MT library directory" "${SUPERLUMT_LIBRARY_DIR}"
                DEPENDS_ON ENABLE_SUPERLUMT)

sundials_option(SUPERLUMT_LIBRARIES STRING "Semi-colon separated list of additional libraries needed for SuperLU_MT." "${SUPERLUMT_LIBRARIES}"
                DEPENDS_ON ENABLE_SUPERLUMT)

sundials_option(SUPERLUMT_THREAD_TYPE STRING "SuperLU_MT threading type: OPENMP or PTHREAD" "PTHREAD"
                DEPENDS_ON ENABLE_SUPERLUMT)

sundials_option(SUPERLUMT_WORKS BOOL "Set to ON to force CMake to accept a given SUPERLUMT configuration" OFF
                DEPENDS_ON ENABLE_SUPERLUMT
                ADVANCED)

# ---------------------------------------------------------------
# Enable KLU support?
# ---------------------------------------------------------------
sundials_option(ENABLE_KLU BOOL "Enable KLU support" OFF)

sundials_option(KLU_INCLUDE_DIR PATH "KLU include directory" "${KLU_INCLUDE_DIR}"
                DEPENDS_ON ENABLE_KLU)

sundials_option(KLU_LIBRARY_DIR PATH "KLU library directory" "${KLU_LIBRARY_DIR}"
                DEPENDS_ON ENABLE_KLU)

sundials_option(KLU_WORKS BOOL "Set to ON to force CMake to accept a given KLU configuration" OFF
                DEPENDS_ON ENABLE_KLU
                ADVANCED)

# ---------------------------------------------------------------
# Enable hypre support?
# ---------------------------------------------------------------
sundials_option(ENABLE_HYPRE BOOL "Enable hypre support" OFF)

sundials_option(HYPRE_DIR PATH "Path to hypre installation" "${HYPRE_DIR}"
                DEPENDS_ON ENABLE_HYPRE)

sundials_option(HYPRE_INCLUDE_DIR PATH "HYPRE include directory" "${HYPRE_INCLUDE_DIR}"
                DEPENDS_ON ENABLE_HYPRE)

sundials_option(HYPRE_LIBRARY_DIR PATH "HYPRE library directory" "${HYPRE_LIBRARY_DIR}"
                DEPENDS_ON ENABLE_HYPRE)

sundials_option(HYPRE_WORKS BOOL "Set to ON to force CMake to accept a given hypre configuration" OFF
                DEPENDS_ON ENABLE_HYPRE
                ADVANCED)

# ---------------------------------------------------------------
# Enable PETSc support?
# ---------------------------------------------------------------

sundials_option(ENABLE_PETSC BOOL "Enable PETSc support" OFF)

sundials_option(PETSC_DIR PATH "Path to the root of a PETSc installation" "${PETSC_DIR}"
                DEPENDS_ON ENABLE_PETSC)

sundials_option(PETSC_ARCH STRING "PETSc architecture (optional)" "${PETSC_ARCH}"
                DEPENDS_ON ENABLE_PETSC)

sundials_option(PETSC_LIBRARIES STRING "Semi-colon separated list of PETSc link libraries" "${PETSC_LIBRARIES}"
                DEPENDS_ON ENABLE_PETSC
                ADVANCED)

sundials_option(PETSC_INCLUDES STRING "Semi-colon separated list of PETSc include directories" "${PETSC_INCLUDES}"
                DEPENDS_ON ENABLE_PETSC
                ADVANCED)

sundials_option(PETSC_WORKS BOOL "Set to ON to force CMake to accept a given PETSc configuration" OFF
                DEPENDS_ON ENABLE_PETSC
                ADVANCED)

# -------------------------------------------------------------
# Enable RAJA support?
# -------------------------------------------------------------
sundials_option(ENABLE_RAJA BOOL "Enable RAJA support" OFF)

sundials_option(RAJA_DIR PATH "Path to root of RAJA installation" "${RAJA_DIR}"
                DEPENDS_ON ENABLE_RAJA)

sundials_option(SUNDIALS_RAJA_BACKENDS STRING "Which RAJA backend under the SUNDIALS RAJA interfaces (CUDA, HIP, SYCL)" "CUDA"
                OPTIONS "CUDA;HIP;SYCL"
                DEPENDS_ON ENABLE_RAJA)

# ---------------------------------------------------------------
# Enable Trilinos support?
# ---------------------------------------------------------------
sundials_option(ENABLE_TRILINOS BOOL "Enable Trilinos support" OFF)

sundials_option(Trilinos_DIR PATH "Path to root of Trilinos installation" "${Trilinos_DIR}"
                DEPENDS_ON ENABLE_TRILINOS)

sundials_option(Trilinos_INTERFACE_CXX_COMPILER STRING
                "C++ compiler for Trilinos interface" "${Trilinos_CXX_COMPILER}"
                DEPENDS_ON ENABLE_TRILINOS
                ADVANCED)

sundials_option(Trilinos_INTERFACE_C_COMPILER STRING
                "C compiler for Trilinos interface" "${Trilinos_C_COMPILER}"
                DEPENDS_ON ENABLE_TRILINOS
                ADVANCED)

sundials_option(Trilinos_INTERFACE_CXX_COMPILER_FLAGS STRING
                "C++ compiler flags for Trilinos interface" "${Trilinos_CXX_COMPILER_FLAGS}"
                DEPENDS_ON ENABLE_TRILINOS
                ADVANCED)

sundials_option(Trilinos_INTERFACE_C_COMPILER_FLAGS STRING
                "C compiler flags for Trilinos interface" "${Trilinos_C_COMPILER_FLAGS}"
                DEPENDS_ON ENABLE_TRILINOS
                ADVANCED)

sundials_option(Trilinos_INTERFACE_MPIEXEC STRING
                "MPI executable for Trilinos interface" "${Trilinos_MPI_EXEC}"
                DEPENDS_ON ENABLE_TRILINOS
                ADVANCED)

sundials_option(Trilinos_WORKS BOOL "Set to ON to force CMake to accept a given Trilinos configuration" OFF
                DEPENDS_ON ENABLE_TRILINOS
                ADVANCED)

# ---------------------------------------------------------------
# Enable XBraid support?
# ---------------------------------------------------------------

sundials_option(ENABLE_XBRAID BOOL "Enable XBraid support" OFF)

sundials_option(XBRAID_DIR PATH "Path to the root of an XBraid installation" "${XBRAID_DIR}"
                DEPENDS_ON ENABLE_XBRAID)

sundials_option(XBRAID_LIBRARIES STRING "Semi-colon separated list of XBraid link libraries" "${XBRAID_LIBRARIES}"
                DEPENDS_ON ENABLE_XBRAID
                ADVANCED)

sundials_option(XBRAID_INCLUDES STRING "Semi-colon separated list of XBraid include directories" "${XBRAID_INCLUDES}"
                DEPENDS_ON ENABLE_XBRAID
                ADVANCED)

sundials_option(XBRAID_WORKS BOOL "Set to ON to force CMake to accept a given XBraid configuration" OFF
                DEPENDS_ON ENABLE_XBRAID
                ADVANCED)

# -------------------------------------------------------------
# Enable oneMKL support?
# -------------------------------------------------------------

sundials_option(ENABLE_ONEMKL BOOL "Enable oneMKL support" OFF)

sundials_option(ONEMKL_DIR PATH "Path to root of oneMKL installation" "${ONEMKL_DIR}"
                DEPENDS_ON ENABLE_ONEMKL)

sundials_option(ONEMKL_WORKS BOOL "Set to ON to force CMake to accept a given oneMKL configuration" OFF
                DEPENDS_ON ENABLE_ONEMKL
                ADVANCED)

sundials_option(SUNDIALS_ONEMKL_USE_GETRF_LOOP BOOL
                "Replace batched getrf call with loop over getrf" OFF
                DEPENDS_ON ENABLE_ONEMKL
                ADVANCED)

sundials_option(SUNDIALS_ONEMKL_USE_GETRS_LOOP BOOL
                "Replace batched getrs call with loop over getrs" OFF
                DEPENDS_ON ENABLE_ONEMKL
                ADVANCED)

# ---------------------------------------------------------------
# Enable Caliper support?
# ---------------------------------------------------------------

sundials_option(ENABLE_CALIPER BOOL "Enable CALIPER support" OFF
                DEPENDS_ON SUNDIALS_BUILD_WITH_PROFILING)

sundials_option(CALIPER_DIR PATH "Path to the root of an CALIPER installation" "${CALIPER_DIR}"
                DEPENDS_ON ENABLE_CALIPER)

sundials_option(CALIPER_WORKS BOOL "Set to ON to force CMake to accept a given CALIPER configuration" OFF
                DEPENDS_ON ENABLE_CALIPER
                ADVANCED)


# ---------------------------------------------------------------
# Enable Kokkos support?
# ---------------------------------------------------------------

sundials_option(ENABLE_KOKKOS BOOL "Enable Kokkos support" OFF)

sundials_option(Kokkos_DIR PATH "Path to the root of a Kokkos installation" "${Kokkos_DIR}")

sundials_option(KOKKOS_WORKS BOOL "Set to ON to force CMake to accept a given Kokkos configuration" OFF
                DEPENDS_ON ENABLE_KOKKOS
                ADVANCED)

# ---------------------------------------------------------------
# Enable Kokkos Kernels support?
# ---------------------------------------------------------------

sundials_option(ENABLE_KOKKOS_KERNELS BOOL "Enable Kokkos Kernels support" OFF)

sundials_option(KokkosKernels_DIR PATH "Path to the root of a Kokkos Kernels installation" "${KokkosKernels_DIR}")

sundials_option(KOKKOS_KERNELS_WORKS BOOL "Set to ON to force CMake to accept a given Kokkos configuration" OFF
                DEPENDS_ON ENABLE_KOKKOS ENABLE_KOKKOS_KERNELS
                ADVANCED)
