ifeq ($(strip $(PyACTSinCMSSWGeometryBuilder)),)
PyACTSinCMSSWGeometryBuilder := self/src/ACTSinCMSSW/GeometryBuilder/python
src_ACTSinCMSSW_GeometryBuilder_python_parent := src/ACTSinCMSSW/GeometryBuilder
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/ACTSinCMSSW/GeometryBuilder/python)
PyACTSinCMSSWGeometryBuilder_files := $(patsubst src/ACTSinCMSSW/GeometryBuilder/python/%,%,$(wildcard $(foreach dir,src/ACTSinCMSSW/GeometryBuilder/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyACTSinCMSSWGeometryBuilder_LOC_USE := self   
PyACTSinCMSSWGeometryBuilder_PACKAGE := self/src/ACTSinCMSSW/GeometryBuilder/python
ALL_PRODS += PyACTSinCMSSWGeometryBuilder
PyACTSinCMSSWGeometryBuilder_INIT_FUNC        += $$(eval $$(call PythonProduct,PyACTSinCMSSWGeometryBuilder,src/ACTSinCMSSW/GeometryBuilder/python,src_ACTSinCMSSW_GeometryBuilder_python))
else
$(eval $(call MultipleWarningMsg,PyACTSinCMSSWGeometryBuilder,src/ACTSinCMSSW/GeometryBuilder/python))
endif
ALL_COMMONRULES += src_ACTSinCMSSW_GeometryBuilder_python
src_ACTSinCMSSW_GeometryBuilder_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_ACTSinCMSSW_GeometryBuilder_python,src/ACTSinCMSSW/GeometryBuilder/python,PYTHON))
