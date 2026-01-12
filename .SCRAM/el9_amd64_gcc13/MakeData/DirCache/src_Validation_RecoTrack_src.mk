ifeq ($(strip $(Validation/RecoTrack)),)
ALL_COMMONRULES += src_Validation_RecoTrack_src
src_Validation_RecoTrack_src_parent := Validation/RecoTrack
src_Validation_RecoTrack_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_Validation_RecoTrack_src,src/Validation/RecoTrack/src,LIBRARY))
ValidationRecoTrack := self/Validation/RecoTrack
Validation/RecoTrack := ValidationRecoTrack
ValidationRecoTrack_files := $(patsubst src/Validation/RecoTrack/src/%,%,$(wildcard $(foreach dir,src/Validation/RecoTrack/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
ValidationRecoTrack_BuildFile    := $(WORKINGDIR)/cache/bf/src/Validation/RecoTrack/BuildFile
ValidationRecoTrack_LOC_LIB   := MathMore
ValidationRecoTrack_LOC_USE := self   DQMServices/Core SimDataFormats/TrackingAnalysis DataFormats/TrackReco root SimTracker/TrackAssociation SimTracker/TrackerHitAssociation DQM/SiStripCommon CalibTracker/Records RecoTracker/TkSeedingLayers
ValidationRecoTrack_EX_LIB   := ValidationRecoTrack
ValidationRecoTrack_EX_USE   := $(foreach d,$(ValidationRecoTrack_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ValidationRecoTrack_PACKAGE := self/src/Validation/RecoTrack/src
ALL_PRODS += ValidationRecoTrack
ValidationRecoTrack_CLASS := LIBRARY
Validation/RecoTrack_forbigobj+=ValidationRecoTrack
ValidationRecoTrack_INIT_FUNC        += $$(eval $$(call Library,ValidationRecoTrack,src/Validation/RecoTrack/src,src_Validation_RecoTrack_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
