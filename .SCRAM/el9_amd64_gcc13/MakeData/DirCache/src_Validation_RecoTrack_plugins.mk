ifeq ($(strip $(ValidationRecoTrackPlugins)),)
ValidationRecoTrackPlugins := self/src/Validation/RecoTrack/plugins
PLUGINS:=yes
ValidationRecoTrackPlugins_files := $(patsubst src/Validation/RecoTrack/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/Validation/RecoTrack/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Validation/RecoTrack/plugins/$(file). Please fix src/Validation/RecoTrack/plugins/BuildFile.))))
ValidationRecoTrackPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/Validation/RecoTrack/plugins/BuildFile
ValidationRecoTrackPlugins_LOC_LIB   := MathMore
ValidationRecoTrackPlugins_LOC_USE := self   FWCore/Utilities FWCore/Framework CommonTools/UtilAlgos DataFormats/Common DataFormats/TrackReco clhep SimDataFormats/TrackerDigiSimLink FWCore/ParameterSet Geometry/TrackerGeometryBuilder Geometry/Records MagneticField/Records MagneticField/Engine SimDataFormats/Vertex SimDataFormats/TrackingAnalysis SimDataFormats/PileupSummaryInfo SimDataFormats/EncodedEventId root SimGeneral/TrackingAnalysis SimTracker/TrackAssociation SimTracker/TrackerHitAssociation SimTracker/TrackHistory Validation/RecoTrack RecoTracker/PixelTrackFitting DataFormats/VertexReco DataFormats/Phase2TrackerCluster
ValidationRecoTrackPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,ValidationRecoTrackPlugins,ValidationRecoTrackPlugins,$(SCRAMSTORENAME_LIB),src/Validation/RecoTrack/plugins))
ValidationRecoTrackPlugins_PACKAGE := self/src/Validation/RecoTrack/plugins
ALL_PRODS += ValidationRecoTrackPlugins
Validation/RecoTrack_forbigobj+=ValidationRecoTrackPlugins
ValidationRecoTrackPlugins_INIT_FUNC        += $$(eval $$(call Library,ValidationRecoTrackPlugins,src/Validation/RecoTrack/plugins,src_Validation_RecoTrack_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
ValidationRecoTrackPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,ValidationRecoTrackPlugins,src/Validation/RecoTrack/plugins))
endif
ALL_COMMONRULES += src_Validation_RecoTrack_plugins
src_Validation_RecoTrack_plugins_parent := Validation/RecoTrack
src_Validation_RecoTrack_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Validation_RecoTrack_plugins,src/Validation/RecoTrack/plugins,PLUGINS))
