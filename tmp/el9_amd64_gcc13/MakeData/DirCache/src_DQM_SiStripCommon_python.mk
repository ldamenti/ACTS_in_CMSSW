ifeq ($(strip $(PyDQMSiStripCommon)),)
PyDQMSiStripCommon := self/src/DQM/SiStripCommon/python
src_DQM_SiStripCommon_python_parent := src/DQM/SiStripCommon
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/DQM/SiStripCommon/python)
PyDQMSiStripCommon_files := $(patsubst src/DQM/SiStripCommon/python/%,%,$(wildcard $(foreach dir,src/DQM/SiStripCommon/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyDQMSiStripCommon_LOC_USE := self   
PyDQMSiStripCommon_PACKAGE := self/src/DQM/SiStripCommon/python
ALL_PRODS += PyDQMSiStripCommon
PyDQMSiStripCommon_INIT_FUNC        += $$(eval $$(call PythonProduct,PyDQMSiStripCommon,src/DQM/SiStripCommon/python,src_DQM_SiStripCommon_python))
else
$(eval $(call MultipleWarningMsg,PyDQMSiStripCommon,src/DQM/SiStripCommon/python))
endif
ALL_COMMONRULES += src_DQM_SiStripCommon_python
src_DQM_SiStripCommon_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DQM_SiStripCommon_python,src/DQM/SiStripCommon/python,PYTHON))
