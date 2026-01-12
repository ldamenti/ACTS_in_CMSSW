ifeq ($(strip $(DD4hep_SimTrackerMaterialAnalysisPlugins)),)
DD4hep_SimTrackerMaterialAnalysisPlugins := self/src/SimTracker/TrackerMaterialAnalysis/plugins
PLUGINS:=yes
DD4hep_SimTrackerMaterialAnalysisPlugins_files := $(patsubst src/SimTracker/TrackerMaterialAnalysis/plugins/%,%,$(foreach file,dd4hep/*.cc,$(eval xfile:=$(wildcard src/SimTracker/TrackerMaterialAnalysis/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/SimTracker/TrackerMaterialAnalysis/plugins/$(file). Please fix src/SimTracker/TrackerMaterialAnalysis/plugins/BuildFile.))))
DD4hep_SimTrackerMaterialAnalysisPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/SimTracker/TrackerMaterialAnalysis/plugins/BuildFile
DD4hep_SimTrackerMaterialAnalysisPlugins_LOC_LIB   := Geom
DD4hep_SimTrackerMaterialAnalysisPlugins_LOC_USE := self   DataFormats/DetId DataFormats/GeometryVector FWCore/Framework FWCore/ParameterSet FWCore/PluginManager Geometry/CommonDetUnit Geometry/Records Geometry/TrackerGeometryBuilder SimDataFormats/ValidationFormats SimG4Core/Watcher boost geant4core rootgpad DetectorDescription/DDCMS dd4hep
DD4hep_SimTrackerMaterialAnalysisPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DD4hep_SimTrackerMaterialAnalysisPlugins,DD4hep_SimTrackerMaterialAnalysisPlugins,$(SCRAMSTORENAME_LIB),src/SimTracker/TrackerMaterialAnalysis/plugins))
DD4hep_SimTrackerMaterialAnalysisPlugins_PACKAGE := self/src/SimTracker/TrackerMaterialAnalysis/plugins
ALL_PRODS += DD4hep_SimTrackerMaterialAnalysisPlugins
SimTracker/TrackerMaterialAnalysis_forbigobj+=DD4hep_SimTrackerMaterialAnalysisPlugins
DD4hep_SimTrackerMaterialAnalysisPlugins_INIT_FUNC        += $$(eval $$(call Library,DD4hep_SimTrackerMaterialAnalysisPlugins,src/SimTracker/TrackerMaterialAnalysis/plugins,src_SimTracker_TrackerMaterialAnalysis_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
DD4hep_SimTrackerMaterialAnalysisPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,DD4hep_SimTrackerMaterialAnalysisPlugins,src/SimTracker/TrackerMaterialAnalysis/plugins))
endif
ifeq ($(strip $(SimTrackerTrackerMaterialAnalysisPlugins)),)
SimTrackerTrackerMaterialAnalysisPlugins := self/src/SimTracker/TrackerMaterialAnalysis/plugins
PLUGINS:=yes
SimTrackerTrackerMaterialAnalysisPlugins_files := $(patsubst src/SimTracker/TrackerMaterialAnalysis/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/SimTracker/TrackerMaterialAnalysis/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/SimTracker/TrackerMaterialAnalysis/plugins/$(file). Please fix src/SimTracker/TrackerMaterialAnalysis/plugins/BuildFile.))))
SimTrackerTrackerMaterialAnalysisPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/SimTracker/TrackerMaterialAnalysis/plugins/BuildFile
SimTrackerTrackerMaterialAnalysisPlugins_LOC_USE := self   DataFormats/DetId DataFormats/GeometryVector DetectorDescription/Core FWCore/Framework FWCore/ParameterSet FWCore/PluginManager Geometry/CommonDetUnit Geometry/Records Geometry/TrackerGeometryBuilder SimDataFormats/ValidationFormats SimG4Core/Watcher boost geant4core rootgpad
SimTrackerTrackerMaterialAnalysisPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,SimTrackerTrackerMaterialAnalysisPlugins,SimTrackerTrackerMaterialAnalysisPlugins,$(SCRAMSTORENAME_LIB),src/SimTracker/TrackerMaterialAnalysis/plugins))
SimTrackerTrackerMaterialAnalysisPlugins_PACKAGE := self/src/SimTracker/TrackerMaterialAnalysis/plugins
ALL_PRODS += SimTrackerTrackerMaterialAnalysisPlugins
SimTracker/TrackerMaterialAnalysis_forbigobj+=SimTrackerTrackerMaterialAnalysisPlugins
SimTrackerTrackerMaterialAnalysisPlugins_INIT_FUNC        += $$(eval $$(call Library,SimTrackerTrackerMaterialAnalysisPlugins,src/SimTracker/TrackerMaterialAnalysis/plugins,src_SimTracker_TrackerMaterialAnalysis_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
SimTrackerTrackerMaterialAnalysisPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,SimTrackerTrackerMaterialAnalysisPlugins,src/SimTracker/TrackerMaterialAnalysis/plugins))
endif
ALL_COMMONRULES += src_SimTracker_TrackerMaterialAnalysis_plugins
src_SimTracker_TrackerMaterialAnalysis_plugins_parent := SimTracker/TrackerMaterialAnalysis
src_SimTracker_TrackerMaterialAnalysis_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_SimTracker_TrackerMaterialAnalysis_plugins,src/SimTracker/TrackerMaterialAnalysis/plugins,PLUGINS))
