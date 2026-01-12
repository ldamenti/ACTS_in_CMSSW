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
