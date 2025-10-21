ALL_TOOLS      += rocm
rocm_EX_INCLUDE := /cvmfs/cms.cern.ch/el9_amd64_gcc13/external/rocm/6.4.3-8bc52e5de186aa7fa61c7d17f290f0df/include
rocm_EX_LIB := amdhip64 hsa-runtime64 rocm_smi64
rocm_EX_USE := fmt
rocm_EX_FLAGS_CPPDEFINES  := -D__HIP_PLATFORM_HCC__ -D__HIP_PLATFORM_AMD__
rocm_EX_FLAGS_REM_ROCM_HOST_CXXFLAGS  := -march=%
rocm_EX_FLAGS_ROCM_FLAGS  := --offload-arch=gfx908:sramecc+ --offload-arch=gfx90a:sramecc+ --offload-arch=gfx942:sramecc+ --offload-arch=gfx1030 --offload-arch=gfx1100 --offload-arch=gfx1102 -fgpu-rdc
rocm_EX_FLAGS_ROCM_HOST_CXXFLAGS  := -march=x86-64-v2
rocm_EX_FLAGS_SYSTEM_INCLUDE  := 1

