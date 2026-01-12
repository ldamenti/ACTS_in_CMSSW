ifeq ($(strip $(PyValidationRecoTrack)),)
PyValidationRecoTrack := self/src/Validation/RecoTrack/python
src_Validation_RecoTrack_python_parent := src/Validation/RecoTrack
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Validation/RecoTrack/python)
PyValidationRecoTrack_files := $(patsubst src/Validation/RecoTrack/python/%,%,$(wildcard $(foreach dir,src/Validation/RecoTrack/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyValidationRecoTrack_LOC_USE := self   
PyValidationRecoTrack_PACKAGE := self/src/Validation/RecoTrack/python
ALL_PRODS += PyValidationRecoTrack
PyValidationRecoTrack_INIT_FUNC        += $$(eval $$(call PythonProduct,PyValidationRecoTrack,src/Validation/RecoTrack/python,src_Validation_RecoTrack_python))
else
$(eval $(call MultipleWarningMsg,PyValidationRecoTrack,src/Validation/RecoTrack/python))
endif
ALL_COMMONRULES += src_Validation_RecoTrack_python
src_Validation_RecoTrack_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Validation_RecoTrack_python,src/Validation/RecoTrack/python,PYTHON))
