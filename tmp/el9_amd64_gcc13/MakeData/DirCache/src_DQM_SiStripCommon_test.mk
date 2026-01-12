ifeq ($(strip $(test_SiStripHitId)),)
test_SiStripHitId := self/src/DQM/SiStripCommon/test
test_SiStripHitId_files := 1
test_SiStripHitId_BuildFile    := $(WORKINGDIR)/cache/bf/src/DQM/SiStripCommon/test/BuildFile
test_SiStripHitId_LOC_USE := self   DQM/SiStripCommon FWCore/Framework DQMServices/Core boost
test_SiStripHitId_PACKAGE := self/src/DQM/SiStripCommon/test
ALL_PRODS += test_SiStripHitId
test_SiStripHitId_INIT_FUNC        += $$(eval $$(call Binary,test_SiStripHitId,src/DQM/SiStripCommon/test,src_DQM_SiStripCommon_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
test_SiStripHitId_CLASS := TEST
test_SiStripHitId_TEST_RUNNER_CMD :=  cmsRun ${LOCALTOP}/src/DQM/SiStripCommon/test/testSiStripHistId_cfg.py
else
$(eval $(call MultipleWarningMsg,test_SiStripHitId,src/DQM/SiStripCommon/test))
endif
ifeq ($(strip $(test_TkHistoMap)),)
test_TkHistoMap := self/src/DQM/SiStripCommon/test
test_TkHistoMap_files := 1
test_TkHistoMap_BuildFile    := $(WORKINGDIR)/cache/bf/src/DQM/SiStripCommon/test/BuildFile
test_TkHistoMap_LOC_USE := self   DQM/SiStripCommon FWCore/Framework DQMServices/Core boost
test_TkHistoMap_PACKAGE := self/src/DQM/SiStripCommon/test
ALL_PRODS += test_TkHistoMap
test_TkHistoMap_INIT_FUNC        += $$(eval $$(call Binary,test_TkHistoMap,src/DQM/SiStripCommon/test,src_DQM_SiStripCommon_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
test_TkHistoMap_CLASS := TEST
test_TkHistoMap_TEST_RUNNER_CMD :=  cmsRun ${LOCALTOP}/src/DQM/SiStripCommon/test/testTkHistoMap_cfg.py
else
$(eval $(call MultipleWarningMsg,test_TkHistoMap,src/DQM/SiStripCommon/test))
endif
ifeq ($(strip $(testSiStripHistId)),)
testSiStripHistId := self/src/DQM/SiStripCommon/test
testSiStripHistId_files := $(patsubst src/DQM/SiStripCommon/test/%,%,$(foreach file,plugins/testSiStripHistId.cc,$(eval xfile:=$(wildcard src/DQM/SiStripCommon/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DQM/SiStripCommon/test/$(file). Please fix src/DQM/SiStripCommon/test/BuildFile.))))
testSiStripHistId_BuildFile    := $(WORKINGDIR)/cache/bf/src/DQM/SiStripCommon/test/BuildFile
testSiStripHistId_LOC_USE := self   DQM/SiStripCommon FWCore/Framework DQMServices/Core boost
testSiStripHistId_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testSiStripHistId,testSiStripHistId,$(SCRAMSTORENAME_LIB),src/DQM/SiStripCommon/test))
testSiStripHistId_PACKAGE := self/src/DQM/SiStripCommon/test
ALL_PRODS += testSiStripHistId
testSiStripHistId_INIT_FUNC        += $$(eval $$(call Library,testSiStripHistId,src/DQM/SiStripCommon/test,src_DQM_SiStripCommon_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
testSiStripHistId_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,testSiStripHistId,src/DQM/SiStripCommon/test))
endif
ifeq ($(strip $(testTkHistoMap)),)
testTkHistoMap := self/src/DQM/SiStripCommon/test
testTkHistoMap_files := $(patsubst src/DQM/SiStripCommon/test/%,%,$(foreach file,plugins/testTkHistoMap.cc,$(eval xfile:=$(wildcard src/DQM/SiStripCommon/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DQM/SiStripCommon/test/$(file). Please fix src/DQM/SiStripCommon/test/BuildFile.))))
testTkHistoMap_BuildFile    := $(WORKINGDIR)/cache/bf/src/DQM/SiStripCommon/test/BuildFile
testTkHistoMap_LOC_USE := self   DQM/SiStripCommon FWCore/Framework DQMServices/Core boost Geometry/TrackerGeometryBuilder Geometry/Records root rootgraphics
testTkHistoMap_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testTkHistoMap,testTkHistoMap,$(SCRAMSTORENAME_LIB),src/DQM/SiStripCommon/test))
testTkHistoMap_PACKAGE := self/src/DQM/SiStripCommon/test
ALL_PRODS += testTkHistoMap
testTkHistoMap_INIT_FUNC        += $$(eval $$(call Library,testTkHistoMap,src/DQM/SiStripCommon/test,src_DQM_SiStripCommon_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
testTkHistoMap_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,testTkHistoMap,src/DQM/SiStripCommon/test))
endif
ALL_COMMONRULES += src_DQM_SiStripCommon_test
src_DQM_SiStripCommon_test_parent := DQM/SiStripCommon
src_DQM_SiStripCommon_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DQM_SiStripCommon_test,src/DQM/SiStripCommon/test,TEST))
