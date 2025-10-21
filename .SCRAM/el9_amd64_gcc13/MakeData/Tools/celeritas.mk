ALL_TOOLS      += celeritas
celeritas_EX_INCLUDE := /cvmfs/cms.cern.ch/el9_amd64_gcc13/external/celeritas/v0.6.0-83e163ba78e5fd34056de732529bdbe9/include
celeritas_EX_LIB := accel celeritas geocel corecel g4vg
celeritas_EX_USE := geant4core expat xerces-c vecgeom_interface vecgeom
celeritas_EX_FLAGS_CXXFLAGS  := -Wno-error=missing-braces

