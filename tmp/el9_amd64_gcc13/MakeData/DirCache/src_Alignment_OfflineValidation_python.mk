ifeq ($(strip $(PyAlignmentOfflineValidation)),)
PyAlignmentOfflineValidation := self/src/Alignment/OfflineValidation/python
src_Alignment_OfflineValidation_python_parent := src/Alignment/OfflineValidation
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Alignment/OfflineValidation/python)
PyAlignmentOfflineValidation_files := $(patsubst src/Alignment/OfflineValidation/python/%,%,$(wildcard $(foreach dir,src/Alignment/OfflineValidation/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyAlignmentOfflineValidation_LOC_USE := self   
PyAlignmentOfflineValidation_PACKAGE := self/src/Alignment/OfflineValidation/python
ALL_PRODS += PyAlignmentOfflineValidation
PyAlignmentOfflineValidation_INIT_FUNC        += $$(eval $$(call PythonProduct,PyAlignmentOfflineValidation,src/Alignment/OfflineValidation/python,src_Alignment_OfflineValidation_python))
else
$(eval $(call MultipleWarningMsg,PyAlignmentOfflineValidation,src/Alignment/OfflineValidation/python))
endif
ALL_COMMONRULES += src_Alignment_OfflineValidation_python
src_Alignment_OfflineValidation_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Alignment_OfflineValidation_python,src/Alignment/OfflineValidation/python,PYTHON))
