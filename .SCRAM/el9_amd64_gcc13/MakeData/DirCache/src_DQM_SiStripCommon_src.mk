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
