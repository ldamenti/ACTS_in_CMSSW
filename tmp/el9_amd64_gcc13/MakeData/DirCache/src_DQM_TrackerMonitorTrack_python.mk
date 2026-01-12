ifeq ($(strip $(PyDQMTrackerMonitorTrack)),)
PyDQMTrackerMonitorTrack := self/src/DQM/TrackerMonitorTrack/python
src_DQM_TrackerMonitorTrack_python_parent := src/DQM/TrackerMonitorTrack
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/DQM/TrackerMonitorTrack/python)
PyDQMTrackerMonitorTrack_files := $(patsubst src/DQM/TrackerMonitorTrack/python/%,%,$(wildcard $(foreach dir,src/DQM/TrackerMonitorTrack/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyDQMTrackerMonitorTrack_LOC_USE := self   
PyDQMTrackerMonitorTrack_PACKAGE := self/src/DQM/TrackerMonitorTrack/python
ALL_PRODS += PyDQMTrackerMonitorTrack
PyDQMTrackerMonitorTrack_INIT_FUNC        += $$(eval $$(call PythonProduct,PyDQMTrackerMonitorTrack,src/DQM/TrackerMonitorTrack/python,src_DQM_TrackerMonitorTrack_python))
else
$(eval $(call MultipleWarningMsg,PyDQMTrackerMonitorTrack,src/DQM/TrackerMonitorTrack/python))
endif
ALL_COMMONRULES += src_DQM_TrackerMonitorTrack_python
src_DQM_TrackerMonitorTrack_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DQM_TrackerMonitorTrack_python,src/DQM/TrackerMonitorTrack/python,PYTHON))
