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
