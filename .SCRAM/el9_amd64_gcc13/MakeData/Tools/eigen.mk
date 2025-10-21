ALL_TOOLS      += eigen
eigen_EX_INCLUDE := /cvmfs/cms.cern.ch/el9_amd64_gcc13/external/eigen/3bb6a48d8c171cf20b5f8e48bfb4e424fbd4f79e-95c02b8a883b2934decb8bb53ff9b486/include /cvmfs/cms.cern.ch/el9_amd64_gcc13/external/eigen/3bb6a48d8c171cf20b5f8e48bfb4e424fbd4f79e-95c02b8a883b2934decb8bb53ff9b486/include/eigen3
eigen_EX_FLAGS_CUDA_FLAGS  := --diag-suppress 20014
eigen_EX_FLAGS_CXXFLAGS  := -DEIGEN_DONT_PARALLELIZE -DEIGEN_MAX_ALIGN_BYTES=64

