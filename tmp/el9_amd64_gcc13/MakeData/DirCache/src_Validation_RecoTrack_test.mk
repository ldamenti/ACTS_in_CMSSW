ifeq ($(strip $(testMakeTrackValidationPlots)),)
testMakeTrackValidationPlots := self/src/Validation/RecoTrack/test
testMakeTrackValidationPlots_files := 1
testMakeTrackValidationPlots_BuildFile    := $(WORKINGDIR)/cache/bf/src/Validation/RecoTrack/test/BuildFile
testMakeTrackValidationPlots_LOC_USE := self   
testMakeTrackValidationPlots_PACKAGE := self/src/Validation/RecoTrack/test
ALL_PRODS += testMakeTrackValidationPlots
testMakeTrackValidationPlots_INIT_FUNC        += $$(eval $$(call Binary,testMakeTrackValidationPlots,src/Validation/RecoTrack/test,src_Validation_RecoTrack_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
testMakeTrackValidationPlots_CLASS := TEST
testMakeTrackValidationPlots_TEST_RUNNER_CMD :=  test_makeTrackValidationPlots.sh
else
$(eval $(call MultipleWarningMsg,testMakeTrackValidationPlots,src/Validation/RecoTrack/test))
endif
ifeq ($(strip $(testSimpleTrackValidation)),)
testSimpleTrackValidation := self/src/Validation/RecoTrack/test
testSimpleTrackValidation_files := 1
testSimpleTrackValidation_BuildFile    := $(WORKINGDIR)/cache/bf/src/Validation/RecoTrack/test/BuildFile
testSimpleTrackValidation_LOC_USE := self   
testSimpleTrackValidation_PACKAGE := self/src/Validation/RecoTrack/test
ALL_PRODS += testSimpleTrackValidation
testSimpleTrackValidation_INIT_FUNC        += $$(eval $$(call Binary,testSimpleTrackValidation,src/Validation/RecoTrack/test,src_Validation_RecoTrack_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
testSimpleTrackValidation_CLASS := TEST
testSimpleTrackValidation_TEST_RUNNER_CMD :=  test_SimpleTrackValidation.sh
else
$(eval $(call MultipleWarningMsg,testSimpleTrackValidation,src/Validation/RecoTrack/test))
endif
ALL_COMMONRULES += src_Validation_RecoTrack_test
src_Validation_RecoTrack_test_parent := Validation/RecoTrack
src_Validation_RecoTrack_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Validation_RecoTrack_test,src/Validation/RecoTrack/test,TEST))
