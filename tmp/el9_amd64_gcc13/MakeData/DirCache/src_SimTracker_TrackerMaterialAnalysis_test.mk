ifeq ($(strip $(trackerMaterialAnalysisPlots)),)
trackerMaterialAnalysisPlots := self/src/SimTracker/TrackerMaterialAnalysis/test
trackerMaterialAnalysisPlots_files := 1
trackerMaterialAnalysisPlots_BuildFile    := $(WORKINGDIR)/cache/bf/src/SimTracker/TrackerMaterialAnalysis/test/BuildFile
trackerMaterialAnalysisPlots_LOC_USE := self   
trackerMaterialAnalysisPlots_PACKAGE := self/src/SimTracker/TrackerMaterialAnalysis/test
ALL_PRODS += trackerMaterialAnalysisPlots
trackerMaterialAnalysisPlots_INIT_FUNC        += $$(eval $$(call Binary,trackerMaterialAnalysisPlots,src/SimTracker/TrackerMaterialAnalysis/test,src_SimTracker_TrackerMaterialAnalysis_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
trackerMaterialAnalysisPlots_CLASS := TEST
trackerMaterialAnalysisPlots_TEST_RUNNER_CMD :=  genTrackerPlots.sh
else
$(eval $(call MultipleWarningMsg,trackerMaterialAnalysisPlots,src/SimTracker/TrackerMaterialAnalysis/test))
endif
ALL_COMMONRULES += src_SimTracker_TrackerMaterialAnalysis_test
src_SimTracker_TrackerMaterialAnalysis_test_parent := SimTracker/TrackerMaterialAnalysis
src_SimTracker_TrackerMaterialAnalysis_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_SimTracker_TrackerMaterialAnalysis_test,src/SimTracker/TrackerMaterialAnalysis/test,TEST))
