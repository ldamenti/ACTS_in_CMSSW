ifeq ($(strip $(Alignment/OfflineValidation)),)
ALL_COMMONRULES += src_Alignment_OfflineValidation_src
src_Alignment_OfflineValidation_src_parent := Alignment/OfflineValidation
src_Alignment_OfflineValidation_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_Alignment_OfflineValidation_src,src/Alignment/OfflineValidation/src,LIBRARY))
AlignmentOfflineValidation := self/Alignment/OfflineValidation
Alignment/OfflineValidation := AlignmentOfflineValidation
AlignmentOfflineValidation_files := $(patsubst src/Alignment/OfflineValidation/src/%,%,$(wildcard $(foreach dir,src/Alignment/OfflineValidation/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
AlignmentOfflineValidation_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/BuildFile
AlignmentOfflineValidation_LOC_FLAGS_USE_SOURCE_ONLY   := Geometry/CommonDetUnit
AlignmentOfflineValidation_LOC_LIB   := MultiProc
AlignmentOfflineValidation_LOC_USE := self   DataFormats/TrackReco FWCore/Framework FWCore/Utilities FWCore/ParameterSet Geometry/TrackerGeometryBuilder TrackingTools/PatternTools TrackingTools/TrackFitters MagneticField/Engine Alignment/TrackerAlignment CondFormats/Alignment DataFormats/GeometryCommonDetAlgo DataFormats/GeometrySurface DataFormats/Math DataFormats/SiPixelDetId DataFormats/SiStripDetId DataFormats/TrackerRecHit2D FWCore/MessageLogger Geometry/CommonTopologies Geometry/Records MagneticField/Records TrackingTools/GeomPropagators TrackingTools/TrajectoryState TrackingTools/TransientTrackingRecHit clhep rootmath roothistmatrix rootgraphics roofit
AlignmentOfflineValidation_LCGDICTS  := x 
AlignmentOfflineValidation_PRE_INIT_FUNC += $$(eval $$(call LCGDict,AlignmentOfflineValidation,src/Alignment/OfflineValidation/src/classes.h,src/Alignment/OfflineValidation/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) $(root_EX_FLAGS_GENREFLEX_FAILES_ON_WARNS)))
AlignmentOfflineValidation_EX_LIB   := AlignmentOfflineValidation
AlignmentOfflineValidation_EX_USE   := $(foreach d,$(AlignmentOfflineValidation_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AlignmentOfflineValidation_PACKAGE := self/src/Alignment/OfflineValidation/src
ALL_PRODS += AlignmentOfflineValidation
AlignmentOfflineValidation_CLASS := LIBRARY
Alignment/OfflineValidation_forbigobj+=AlignmentOfflineValidation
AlignmentOfflineValidation_INIT_FUNC        += $$(eval $$(call Library,AlignmentOfflineValidation,src/Alignment/OfflineValidation/src,src_Alignment_OfflineValidation_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
