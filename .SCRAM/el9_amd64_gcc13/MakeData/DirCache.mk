ifeq ($(strip $(GeometryBuilder)),)
GeometryBuilder := self/src/ACTSinCMSSW/GeometryBuilder/plugins
PLUGINS:=yes
GeometryBuilder_files := $(patsubst src/ACTSinCMSSW/GeometryBuilder/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/ACTSinCMSSW/GeometryBuilder/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/ACTSinCMSSW/GeometryBuilder/plugins/$(file). Please fix src/ACTSinCMSSW/GeometryBuilder/plugins/BuildFile.))))
GeometryBuilder_BuildFile    := $(WORKINGDIR)/cache/bf/src/ACTSinCMSSW/GeometryBuilder/plugins/BuildFile
GeometryBuilder_LOC_USE := self   FWCore/Framework FWCore/ParameterSet FWCore/Utilities FWCore/MessageLogger Geometry/TrackerGeometryBuilder Geometry/CommonDetUnit Geometry/Records DataFormats/TrackerCommon DataFormats/TrackerRecHit2D DataFormats/SiStripDetId DataFormats/GeometrySurface CondFormats/SiStripObjects DetectorDescription/Core ACTSinCMSSW/GeometryDataFormat MagneticField/Engine MagneticField/Records SimDataFormats/TrackingAnalysis SimGeneral/TrackingAnalysis SimGeneral/MixingModule RecoTracker/TransientTrackingRecHit RecoTracker/TrackProducer FWCore/PluginManager FWCore/ServiceRegistry rootcore acts-core acts-json acts-svg acts-root
GeometryBuilder_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,GeometryBuilder,GeometryBuilder,$(SCRAMSTORENAME_LIB),src/ACTSinCMSSW/GeometryBuilder/plugins))
GeometryBuilder_PACKAGE := self/src/ACTSinCMSSW/GeometryBuilder/plugins
ALL_PRODS += GeometryBuilder
ACTSinCMSSW/GeometryBuilder_forbigobj+=GeometryBuilder
GeometryBuilder_INIT_FUNC        += $$(eval $$(call Library,GeometryBuilder,src/ACTSinCMSSW/GeometryBuilder/plugins,src_ACTSinCMSSW_GeometryBuilder_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
GeometryBuilder_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,GeometryBuilder,src/ACTSinCMSSW/GeometryBuilder/plugins))
endif
ALL_COMMONRULES += src_ACTSinCMSSW_GeometryBuilder_plugins
src_ACTSinCMSSW_GeometryBuilder_plugins_parent := ACTSinCMSSW/GeometryBuilder
src_ACTSinCMSSW_GeometryBuilder_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_ACTSinCMSSW_GeometryBuilder_plugins,src/ACTSinCMSSW/GeometryBuilder/plugins,PLUGINS))
ifeq ($(strip $(ACTSinCMSSW/GeometryDataFormat)),)
ALL_COMMONRULES += src_ACTSinCMSSW_GeometryDataFormat_src
src_ACTSinCMSSW_GeometryDataFormat_src_parent := ACTSinCMSSW/GeometryDataFormat
src_ACTSinCMSSW_GeometryDataFormat_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_ACTSinCMSSW_GeometryDataFormat_src,src/ACTSinCMSSW/GeometryDataFormat/src,LIBRARY))
ACTSinCMSSWGeometryDataFormat := self/ACTSinCMSSW/GeometryDataFormat
ACTSinCMSSW/GeometryDataFormat := ACTSinCMSSWGeometryDataFormat
ACTSinCMSSWGeometryDataFormat_files := $(patsubst src/ACTSinCMSSW/GeometryDataFormat/src/%,%,$(wildcard $(foreach dir,src/ACTSinCMSSW/GeometryDataFormat/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
ACTSinCMSSWGeometryDataFormat_BuildFile    := $(WORKINGDIR)/cache/bf/src/ACTSinCMSSW/GeometryDataFormat/BuildFile
ACTSinCMSSWGeometryDataFormat_LOC_USE := self   Geometry/TrackerGeometryBuilder Geometry/CommonDetUnit Geometry/Records DataFormats/TrackerCommon DataFormats/TrackerRecHit2D DataFormats/SiStripDetId DataFormats/GeometrySurface FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger CondFormats/SiStripObjects DetectorDescription/Core root acts-core acts-json acts-svg rootcore FWCore/Utilities
ACTSinCMSSWGeometryDataFormat_EX_LIB   := ACTSinCMSSWGeometryDataFormat
ACTSinCMSSWGeometryDataFormat_EX_USE   := $(foreach d,$(ACTSinCMSSWGeometryDataFormat_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ACTSinCMSSWGeometryDataFormat_PACKAGE := self/src/ACTSinCMSSW/GeometryDataFormat/src
ALL_PRODS += ACTSinCMSSWGeometryDataFormat
ACTSinCMSSWGeometryDataFormat_CLASS := LIBRARY
ACTSinCMSSW/GeometryDataFormat_forbigobj+=ACTSinCMSSWGeometryDataFormat
ACTSinCMSSWGeometryDataFormat_INIT_FUNC        += $$(eval $$(call Library,ACTSinCMSSWGeometryDataFormat,src/ACTSinCMSSW/GeometryDataFormat/src,src_ACTSinCMSSW_GeometryDataFormat_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(Geometry/Records)),)
ALL_COMMONRULES += src_Geometry_Records_src
src_Geometry_Records_src_parent := Geometry/Records
src_Geometry_Records_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_Geometry_Records_src,src/Geometry/Records/src,LIBRARY))
GeometryRecords := self/Geometry/Records
Geometry/Records := GeometryRecords
GeometryRecords_files := $(patsubst src/Geometry/Records/src/%,%,$(wildcard $(foreach dir,src/Geometry/Records/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
GeometryRecords_BuildFile    := $(WORKINGDIR)/cache/bf/src/Geometry/Records/BuildFile
GeometryRecords_LOC_USE := self   FWCore/Utilities FWCore/Framework CondFormats/AlignmentRecord boost
GeometryRecords_EX_LIB   := GeometryRecords
GeometryRecords_EX_USE   := $(foreach d,$(GeometryRecords_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryRecords_PACKAGE := self/src/Geometry/Records/src
ALL_PRODS += GeometryRecords
GeometryRecords_CLASS := LIBRARY
Geometry/Records_forbigobj+=GeometryRecords
GeometryRecords_INIT_FUNC        += $$(eval $$(call Library,GeometryRecords,src/Geometry/Records/src,src_Geometry_Records_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
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
ifeq ($(strip $(AlignmentOfflinevalidationPlugins)),)
AlignmentOfflinevalidationPlugins := self/src/Alignment/OfflineValidation/plugins
PLUGINS:=yes
AlignmentOfflinevalidationPlugins_files := $(patsubst src/Alignment/OfflineValidation/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/Alignment/OfflineValidation/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Alignment/OfflineValidation/plugins/$(file). Please fix src/Alignment/OfflineValidation/plugins/BuildFile.))))
AlignmentOfflinevalidationPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/plugins/BuildFile
AlignmentOfflinevalidationPlugins_LOC_FLAGS_USE_SOURCE_ONLY   := Geometry/CommonDetUnit
AlignmentOfflinevalidationPlugins_LOC_USE := self   Alignment/CommonAlignment Alignment/TrackerAlignment clhep CalibTracker/StandaloneTrackerTopology CommonTools/TrackerMap CommonTools/UtilAlgos CommonTools/Utils CondCore/DBOutputService CondFormats/Alignment CondFormats/BeamSpotObjects CondFormats/RunInfo CondFormats/SiPixelObjects CondCore/SiPixelPlugins CalibTracker/SiStripCommon DQM/TrackerRemapper DQM/SiPixelPhase1Common DQMServices/Core DataFormats/BeamSpot DataFormats/DetId DataFormats/EgammaCandidates DataFormats/MuonDetId DataFormats/MuonReco DataFormats/SiPixelDetId DataFormats/SiStripDetId DataFormats/TrackReco DataFormats/TrackerRecHit2D DataFormats/TrackingRecHit DataFormats/TrajectorySeed DataFormats/VertexReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities Geometry/CaloGeometry Geometry/Records Geometry/TrackerGeometryBuilder Geometry/TrackerNumberingBuilder HLTrigger/HLTcore MagneticField/Records RecoEcal/EgammaCoreTools RecoMuon/TrackingTools RecoVertex/PrimaryVertexProducer SimDataFormats/GeneratorProducts SimDataFormats/Track SimTracker/TrackerHitAssociation TrackPropagation/SteppingHelixPropagator TrackingTools/IPTools TrackingTools/TrackAssociator TrackingTools/TrackFitters TrackingTools/TrajectoryState TrackingTools/TransientTrack root rootcore rootmath rootrflx Alignment/OfflineValidation CondFormats/GeometryObjects
AlignmentOfflinevalidationPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,AlignmentOfflinevalidationPlugins,AlignmentOfflinevalidationPlugins,$(SCRAMSTORENAME_LIB),src/Alignment/OfflineValidation/plugins))
AlignmentOfflinevalidationPlugins_PACKAGE := self/src/Alignment/OfflineValidation/plugins
ALL_PRODS += AlignmentOfflinevalidationPlugins
Alignment/OfflineValidation_forbigobj+=AlignmentOfflinevalidationPlugins
AlignmentOfflinevalidationPlugins_INIT_FUNC        += $$(eval $$(call Library,AlignmentOfflinevalidationPlugins,src/Alignment/OfflineValidation/plugins,src_Alignment_OfflineValidation_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
AlignmentOfflinevalidationPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,AlignmentOfflinevalidationPlugins,src/Alignment/OfflineValidation/plugins))
endif
ALL_COMMONRULES += src_Alignment_OfflineValidation_plugins
src_Alignment_OfflineValidation_plugins_parent := Alignment/OfflineValidation
src_Alignment_OfflineValidation_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Alignment_OfflineValidation_plugins,src/Alignment/OfflineValidation/plugins,PLUGINS))
ifeq ($(strip $(DQM/TrackerMonitorTrack)),)
ALL_COMMONRULES += src_DQM_TrackerMonitorTrack_src
src_DQM_TrackerMonitorTrack_src_parent := DQM/TrackerMonitorTrack
src_DQM_TrackerMonitorTrack_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DQM_TrackerMonitorTrack_src,src/DQM/TrackerMonitorTrack/src,LIBRARY))
DQMTrackerMonitorTrack := self/DQM/TrackerMonitorTrack
DQM/TrackerMonitorTrack := DQMTrackerMonitorTrack
DQMTrackerMonitorTrack_files := $(patsubst src/DQM/TrackerMonitorTrack/src/%,%,$(wildcard $(foreach dir,src/DQM/TrackerMonitorTrack/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DQMTrackerMonitorTrack_BuildFile    := $(WORKINGDIR)/cache/bf/src/DQM/TrackerMonitorTrack/BuildFile
DQMTrackerMonitorTrack_LOC_USE := self   FWCore/Framework FWCore/ParameterSet DQM/SiStripCommon DQM/SiPixelCommon DQMServices/Core Geometry/TrackerGeometryBuilder Alignment/OfflineValidation CommonTools/TriggerUtils
DQMTrackerMonitorTrack_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DQMTrackerMonitorTrack,DQMTrackerMonitorTrack,$(SCRAMSTORENAME_LIB),src/DQM/TrackerMonitorTrack/src))
DQMTrackerMonitorTrack_PACKAGE := self/src/DQM/TrackerMonitorTrack/src
ALL_PRODS += DQMTrackerMonitorTrack
DQMTrackerMonitorTrack_CLASS := LIBRARY
DQM/TrackerMonitorTrack_forbigobj+=DQMTrackerMonitorTrack
DQMTrackerMonitorTrack_INIT_FUNC        += $$(eval $$(call Library,DQMTrackerMonitorTrack,src/DQM/TrackerMonitorTrack/src,src_DQM_TrackerMonitorTrack_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
endif
ifeq ($(strip $(DQM/SiStripCommon)),)
ALL_COMMONRULES += src_DQM_SiStripCommon_src
src_DQM_SiStripCommon_src_parent := DQM/SiStripCommon
src_DQM_SiStripCommon_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DQM_SiStripCommon_src,src/DQM/SiStripCommon/src,LIBRARY))
DQMSiStripCommon := self/DQM/SiStripCommon
DQM/SiStripCommon := DQMSiStripCommon
DQMSiStripCommon_files := $(patsubst src/DQM/SiStripCommon/src/%,%,$(wildcard $(foreach dir,src/DQM/SiStripCommon/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DQMSiStripCommon_BuildFile    := $(WORKINGDIR)/cache/bf/src/DQM/SiStripCommon/BuildFile
DQMSiStripCommon_LOC_USE := self   DataFormats/SiStripDetId DataFormats/DetId DataFormats/SiStripDigi DataFormats/Common CalibTracker/SiStripCommon CommonTools/TrackerMap DQMServices/Core FWCore/MessageLogger FWCore/Utilities FWCore/ServiceRegistry boost rootgraphics
DQMSiStripCommon_EX_LIB   := DQMSiStripCommon
DQMSiStripCommon_EX_USE   := $(foreach d,$(DQMSiStripCommon_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMSiStripCommon_PACKAGE := self/src/DQM/SiStripCommon/src
ALL_PRODS += DQMSiStripCommon
DQMSiStripCommon_CLASS := LIBRARY
DQM/SiStripCommon_forbigobj+=DQMSiStripCommon
DQMSiStripCommon_INIT_FUNC        += $$(eval $$(call Library,DQMSiStripCommon,src/DQM/SiStripCommon/src,src_DQM_SiStripCommon_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
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
