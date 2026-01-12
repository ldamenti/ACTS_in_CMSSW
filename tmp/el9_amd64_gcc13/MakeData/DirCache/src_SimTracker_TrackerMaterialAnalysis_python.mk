ifeq ($(strip $(PySimTrackerTrackerMaterialAnalysis)),)
PySimTrackerTrackerMaterialAnalysis := self/src/SimTracker/TrackerMaterialAnalysis/python
src_SimTracker_TrackerMaterialAnalysis_python_parent := src/SimTracker/TrackerMaterialAnalysis
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/SimTracker/TrackerMaterialAnalysis/python)
PySimTrackerTrackerMaterialAnalysis_files := $(patsubst src/SimTracker/TrackerMaterialAnalysis/python/%,%,$(wildcard $(foreach dir,src/SimTracker/TrackerMaterialAnalysis/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PySimTrackerTrackerMaterialAnalysis_LOC_USE := self   
PySimTrackerTrackerMaterialAnalysis_PACKAGE := self/src/SimTracker/TrackerMaterialAnalysis/python
ALL_PRODS += PySimTrackerTrackerMaterialAnalysis
PySimTrackerTrackerMaterialAnalysis_INIT_FUNC        += $$(eval $$(call PythonProduct,PySimTrackerTrackerMaterialAnalysis,src/SimTracker/TrackerMaterialAnalysis/python,src_SimTracker_TrackerMaterialAnalysis_python))
else
$(eval $(call MultipleWarningMsg,PySimTrackerTrackerMaterialAnalysis,src/SimTracker/TrackerMaterialAnalysis/python))
endif
ALL_COMMONRULES += src_SimTracker_TrackerMaterialAnalysis_python
src_SimTracker_TrackerMaterialAnalysis_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_SimTracker_TrackerMaterialAnalysis_python,src/SimTracker/TrackerMaterialAnalysis/python,PYTHON))
