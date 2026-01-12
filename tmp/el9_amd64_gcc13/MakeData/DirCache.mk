ALL_SUBSYSTEMS+=ACTSinCMSSW
subdirs_src_ACTSinCMSSW = src_ACTSinCMSSW_GeometryBuilder src_ACTSinCMSSW_GeometryDataFormat
subdirs_src += src_ACTSinCMSSW
ALL_PACKAGES += ACTSinCMSSW/GeometryBuilder
subdirs_src_ACTSinCMSSW_GeometryBuilder := src_ACTSinCMSSW_GeometryBuilder_plugins src_ACTSinCMSSW_GeometryBuilder_python
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
ALL_PACKAGES += ACTSinCMSSW/GeometryDataFormat
subdirs_src_ACTSinCMSSW_GeometryDataFormat := src_ACTSinCMSSW_GeometryDataFormat_src
ALL_SUBSYSTEMS+=Geometry
subdirs_src_Geometry = src_Geometry_Records
subdirs_src += src_Geometry
ALL_PACKAGES += Geometry/Records
subdirs_src_Geometry_Records := src_Geometry_Records_src
ALL_SUBSYSTEMS+=SimTracker
subdirs_src_SimTracker = src_SimTracker_TrackerMaterialAnalysis
subdirs_src += src_SimTracker
ALL_PACKAGES += SimTracker/TrackerMaterialAnalysis
subdirs_src_SimTracker_TrackerMaterialAnalysis := src_SimTracker_TrackerMaterialAnalysis_plugins src_SimTracker_TrackerMaterialAnalysis_python src_SimTracker_TrackerMaterialAnalysis_test
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
ALL_SUBSYSTEMS+=Alignment
subdirs_src_Alignment = src_Alignment_OfflineValidation
subdirs_src += src_Alignment
ALL_PACKAGES += Alignment/OfflineValidation
subdirs_src_Alignment_OfflineValidation := src_Alignment_OfflineValidation_bin src_Alignment_OfflineValidation_plugins src_Alignment_OfflineValidation_python src_Alignment_OfflineValidation_scripts src_Alignment_OfflineValidation_src src_Alignment_OfflineValidation_test
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
src_Alignment_OfflineValidation_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/Alignment/OfflineValidation/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_Alignment_OfflineValidation_scripts,src/Alignment/OfflineValidation/scripts,$(SCRAMSTORENAME_BIN),*))
ALL_SUBSYSTEMS+=DQM
subdirs_src_DQM = src_DQM_TrackerMonitorTrack src_DQM_SiStripCommon
subdirs_src += src_DQM
ALL_PACKAGES += DQM/TrackerMonitorTrack
subdirs_src_DQM_TrackerMonitorTrack := src_DQM_TrackerMonitorTrack_python src_DQM_TrackerMonitorTrack_src src_DQM_TrackerMonitorTrack_test
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
ALL_PACKAGES += DQM/SiStripCommon
subdirs_src_DQM_SiStripCommon := src_DQM_SiStripCommon_python src_DQM_SiStripCommon_src src_DQM_SiStripCommon_test
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
ALL_SUBSYSTEMS+=DatasetFarm
subdirs_src_DatasetFarm = 
subdirs_src += src_DatasetFarm
ALL_SUBSYSTEMS+=Validation
subdirs_src_Validation = src_Validation_RecoTrack
subdirs_src += src_Validation
ALL_PACKAGES += Validation/RecoTrack
subdirs_src_Validation_RecoTrack := src_Validation_RecoTrack_plugins src_Validation_RecoTrack_python src_Validation_RecoTrack_scripts src_Validation_RecoTrack_src src_Validation_RecoTrack_test
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
src_Validation_RecoTrack_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/Validation/RecoTrack/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_Validation_RecoTrack_scripts,src/Validation/RecoTrack/scripts,$(SCRAMSTORENAME_BIN),*))
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
ifeq ($(strip $(DMRmerge)),)
DMRmerge := self/src/Alignment/OfflineValidation/bin
DMRmerge_files := $(patsubst src/Alignment/OfflineValidation/bin/%,%,$(foreach file,DMRmerge.cc Options.cc,$(eval xfile:=$(wildcard src/Alignment/OfflineValidation/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Alignment/OfflineValidation/bin/$(file). Please fix src/Alignment/OfflineValidation/bin/BuildFile.))))
DMRmerge_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/bin/BuildFile
DMRmerge_LOC_FLAGS_CXXFLAGS   := -g -O3 -lASImage -lMultiProc
DMRmerge_LOC_LIB   := stdc++fs
DMRmerge_LOC_USE := self   Alignment/OfflineValidation boost boost_filesystem boost_program_options boost_system roofit rootcore rootgraphics rootmath
DMRmerge_PACKAGE := self/src/Alignment/OfflineValidation/bin
ALL_PRODS += DMRmerge
DMRmerge_INIT_FUNC        += $$(eval $$(call Binary,DMRmerge,src/Alignment/OfflineValidation/bin,src_Alignment_OfflineValidation_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
DMRmerge_CLASS := BINARY
else
$(eval $(call MultipleWarningMsg,DMRmerge,src/Alignment/OfflineValidation/bin))
endif
ifeq ($(strip $(DMRtrends)),)
DMRtrends := self/src/Alignment/OfflineValidation/bin
DMRtrends_files := $(patsubst src/Alignment/OfflineValidation/bin/%,%,$(foreach file,DMRtrends.cc Options.cc,$(eval xfile:=$(wildcard src/Alignment/OfflineValidation/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Alignment/OfflineValidation/bin/$(file). Please fix src/Alignment/OfflineValidation/bin/BuildFile.))))
DMRtrends_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/bin/BuildFile
DMRtrends_LOC_FLAGS_CXXFLAGS   := -g -O3 -lASImage -lMultiProc
DMRtrends_LOC_LIB   := stdc++fs
DMRtrends_LOC_USE := self   Alignment/OfflineValidation boost boost_filesystem boost_program_options boost_system roofit rootcore rootgraphics rootmath
DMRtrends_PACKAGE := self/src/Alignment/OfflineValidation/bin
ALL_PRODS += DMRtrends
DMRtrends_INIT_FUNC        += $$(eval $$(call Binary,DMRtrends,src/Alignment/OfflineValidation/bin,src_Alignment_OfflineValidation_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
DMRtrends_CLASS := BINARY
else
$(eval $(call MultipleWarningMsg,DMRtrends,src/Alignment/OfflineValidation/bin))
endif
ifeq ($(strip $(DiMuonVmerge)),)
DiMuonVmerge := self/src/Alignment/OfflineValidation/bin
DiMuonVmerge_files := $(patsubst src/Alignment/OfflineValidation/bin/%,%,$(foreach file,DiMuonVmerge.cc Options.cc,$(eval xfile:=$(wildcard src/Alignment/OfflineValidation/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Alignment/OfflineValidation/bin/$(file). Please fix src/Alignment/OfflineValidation/bin/BuildFile.))))
DiMuonVmerge_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/bin/BuildFile
DiMuonVmerge_LOC_FLAGS_CXXFLAGS   := -g -O3 -lASImage -lMultiProc
DiMuonVmerge_LOC_LIB   := stdc++fs
DiMuonVmerge_LOC_USE := self   Alignment/OfflineValidation boost boost_filesystem boost_program_options boost_system roofit rootcore rootgraphics rootmath
DiMuonVmerge_PACKAGE := self/src/Alignment/OfflineValidation/bin
ALL_PRODS += DiMuonVmerge
DiMuonVmerge_INIT_FUNC        += $$(eval $$(call Binary,DiMuonVmerge,src/Alignment/OfflineValidation/bin,src_Alignment_OfflineValidation_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
DiMuonVmerge_CLASS := BINARY
else
$(eval $(call MultipleWarningMsg,DiMuonVmerge,src/Alignment/OfflineValidation/bin))
endif
ifeq ($(strip $(GCP)),)
GCP := self/src/Alignment/OfflineValidation/bin
GCP_files := $(patsubst src/Alignment/OfflineValidation/bin/%,%,$(foreach file,GCP.cc Options.cc,$(eval xfile:=$(wildcard src/Alignment/OfflineValidation/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Alignment/OfflineValidation/bin/$(file). Please fix src/Alignment/OfflineValidation/bin/BuildFile.))))
GCP_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/bin/BuildFile
GCP_LOC_FLAGS_CXXFLAGS   := -g -O3 -lASImage -lMultiProc
GCP_LOC_LIB   := stdc++fs
GCP_LOC_USE := self   Alignment/OfflineValidation boost boost_filesystem boost_program_options boost_system roofit rootcore rootgraphics rootmath
GCP_PACKAGE := self/src/Alignment/OfflineValidation/bin
ALL_PRODS += GCP
GCP_INIT_FUNC        += $$(eval $$(call Binary,GCP,src/Alignment/OfflineValidation/bin,src_Alignment_OfflineValidation_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
GCP_CLASS := BINARY
else
$(eval $(call MultipleWarningMsg,GCP,src/Alignment/OfflineValidation/bin))
endif
ifeq ($(strip $(GCPtrends)),)
GCPtrends := self/src/Alignment/OfflineValidation/bin
GCPtrends_files := $(patsubst src/Alignment/OfflineValidation/bin/%,%,$(foreach file,GCPtrends.cc,$(eval xfile:=$(wildcard src/Alignment/OfflineValidation/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Alignment/OfflineValidation/bin/$(file). Please fix src/Alignment/OfflineValidation/bin/BuildFile.))))
GCPtrends_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/bin/BuildFile
GCPtrends_LOC_FLAGS_CXXFLAGS   := -g -O3 -lASImage -lMultiProc
GCPtrends_LOC_LIB   := stdc++fs
GCPtrends_LOC_USE := self   Alignment/OfflineValidation boost boost_filesystem boost_program_options boost_system roofit rootcore rootgraphics rootmath
GCPtrends_PACKAGE := self/src/Alignment/OfflineValidation/bin
ALL_PRODS += GCPtrends
GCPtrends_INIT_FUNC        += $$(eval $$(call Binary,GCPtrends,src/Alignment/OfflineValidation/bin,src_Alignment_OfflineValidation_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
GCPtrends_CLASS := BINARY
else
$(eval $(call MultipleWarningMsg,GCPtrends,src/Alignment/OfflineValidation/bin))
endif
ifeq ($(strip $(GenericVmerge)),)
GenericVmerge := self/src/Alignment/OfflineValidation/bin
GenericVmerge_files := $(patsubst src/Alignment/OfflineValidation/bin/%,%,$(foreach file,GenericVmerge.cc Options.cc,$(eval xfile:=$(wildcard src/Alignment/OfflineValidation/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Alignment/OfflineValidation/bin/$(file). Please fix src/Alignment/OfflineValidation/bin/BuildFile.))))
GenericVmerge_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/bin/BuildFile
GenericVmerge_LOC_FLAGS_CXXFLAGS   := -g -O3 -lASImage -lMultiProc
GenericVmerge_LOC_LIB   := stdc++fs
GenericVmerge_LOC_USE := self   Alignment/OfflineValidation boost boost_filesystem boost_program_options boost_system roofit rootcore rootgraphics rootmath
GenericVmerge_PACKAGE := self/src/Alignment/OfflineValidation/bin
ALL_PRODS += GenericVmerge
GenericVmerge_INIT_FUNC        += $$(eval $$(call Binary,GenericVmerge,src/Alignment/OfflineValidation/bin,src_Alignment_OfflineValidation_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
GenericVmerge_CLASS := BINARY
else
$(eval $(call MultipleWarningMsg,GenericVmerge,src/Alignment/OfflineValidation/bin))
endif
ifeq ($(strip $(MTSmerge)),)
MTSmerge := self/src/Alignment/OfflineValidation/bin
MTSmerge_files := $(patsubst src/Alignment/OfflineValidation/bin/%,%,$(foreach file,MTSmerge.cc Options.cc,$(eval xfile:=$(wildcard src/Alignment/OfflineValidation/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Alignment/OfflineValidation/bin/$(file). Please fix src/Alignment/OfflineValidation/bin/BuildFile.))))
MTSmerge_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/bin/BuildFile
MTSmerge_LOC_FLAGS_CXXFLAGS   := -g -O3 -lASImage -lMultiProc
MTSmerge_LOC_LIB   := stdc++fs
MTSmerge_LOC_USE := self   Alignment/OfflineValidation boost boost_filesystem boost_program_options boost_system roofit rootcore rootgraphics rootmath
MTSmerge_PACKAGE := self/src/Alignment/OfflineValidation/bin
ALL_PRODS += MTSmerge
MTSmerge_INIT_FUNC        += $$(eval $$(call Binary,MTSmerge,src/Alignment/OfflineValidation/bin,src_Alignment_OfflineValidation_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
MTSmerge_CLASS := BINARY
else
$(eval $(call MultipleWarningMsg,MTSmerge,src/Alignment/OfflineValidation/bin))
endif
ifeq ($(strip $(PVmerge)),)
PVmerge := self/src/Alignment/OfflineValidation/bin
PVmerge_files := $(patsubst src/Alignment/OfflineValidation/bin/%,%,$(foreach file,PVmerge.cc Options.cc,$(eval xfile:=$(wildcard src/Alignment/OfflineValidation/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Alignment/OfflineValidation/bin/$(file). Please fix src/Alignment/OfflineValidation/bin/BuildFile.))))
PVmerge_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/bin/BuildFile
PVmerge_LOC_FLAGS_CXXFLAGS   := -g -O3 -lASImage -lMultiProc
PVmerge_LOC_LIB   := stdc++fs
PVmerge_LOC_USE := self   Alignment/OfflineValidation boost boost_filesystem boost_program_options boost_system roofit rootcore rootgraphics rootmath
PVmerge_PACKAGE := self/src/Alignment/OfflineValidation/bin
ALL_PRODS += PVmerge
PVmerge_INIT_FUNC        += $$(eval $$(call Binary,PVmerge,src/Alignment/OfflineValidation/bin,src_Alignment_OfflineValidation_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
PVmerge_CLASS := BINARY
else
$(eval $(call MultipleWarningMsg,PVmerge,src/Alignment/OfflineValidation/bin))
endif
ifeq ($(strip $(PVtrends)),)
PVtrends := self/src/Alignment/OfflineValidation/bin
PVtrends_files := $(patsubst src/Alignment/OfflineValidation/bin/%,%,$(foreach file,PVtrends.cc Options.cc,$(eval xfile:=$(wildcard src/Alignment/OfflineValidation/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Alignment/OfflineValidation/bin/$(file). Please fix src/Alignment/OfflineValidation/bin/BuildFile.))))
PVtrends_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/bin/BuildFile
PVtrends_LOC_FLAGS_CXXFLAGS   := -g -O3 -lASImage -lMultiProc
PVtrends_LOC_LIB   := stdc++fs
PVtrends_LOC_USE := self   Alignment/OfflineValidation boost boost_filesystem boost_program_options boost_system roofit rootcore rootgraphics rootmath
PVtrends_PACKAGE := self/src/Alignment/OfflineValidation/bin
ALL_PRODS += PVtrends
PVtrends_INIT_FUNC        += $$(eval $$(call Binary,PVtrends,src/Alignment/OfflineValidation/bin,src_Alignment_OfflineValidation_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
PVtrends_CLASS := BINARY
else
$(eval $(call MultipleWarningMsg,PVtrends,src/Alignment/OfflineValidation/bin))
endif
ifeq ($(strip $(SplitVmerge)),)
SplitVmerge := self/src/Alignment/OfflineValidation/bin
SplitVmerge_files := $(patsubst src/Alignment/OfflineValidation/bin/%,%,$(foreach file,SplitVmerge.cc Options.cc,$(eval xfile:=$(wildcard src/Alignment/OfflineValidation/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Alignment/OfflineValidation/bin/$(file). Please fix src/Alignment/OfflineValidation/bin/BuildFile.))))
SplitVmerge_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/bin/BuildFile
SplitVmerge_LOC_FLAGS_CXXFLAGS   := -g -O3 -lASImage -lMultiProc
SplitVmerge_LOC_LIB   := stdc++fs
SplitVmerge_LOC_USE := self   Alignment/OfflineValidation boost boost_filesystem boost_program_options boost_system roofit rootcore rootgraphics rootmath
SplitVmerge_PACKAGE := self/src/Alignment/OfflineValidation/bin
ALL_PRODS += SplitVmerge
SplitVmerge_INIT_FUNC        += $$(eval $$(call Binary,SplitVmerge,src/Alignment/OfflineValidation/bin,src_Alignment_OfflineValidation_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
SplitVmerge_CLASS := BINARY
else
$(eval $(call MultipleWarningMsg,SplitVmerge,src/Alignment/OfflineValidation/bin))
endif
ifeq ($(strip $(Zmumumerge)),)
Zmumumerge := self/src/Alignment/OfflineValidation/bin
Zmumumerge_files := $(patsubst src/Alignment/OfflineValidation/bin/%,%,$(foreach file,Zmumumerge.cc Options.cc,$(eval xfile:=$(wildcard src/Alignment/OfflineValidation/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Alignment/OfflineValidation/bin/$(file). Please fix src/Alignment/OfflineValidation/bin/BuildFile.))))
Zmumumerge_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/bin/BuildFile
Zmumumerge_LOC_FLAGS_CXXFLAGS   := -g -O3 -lASImage -lMultiProc
Zmumumerge_LOC_LIB   := stdc++fs
Zmumumerge_LOC_USE := self   Alignment/OfflineValidation boost boost_filesystem boost_program_options boost_system roofit rootcore rootgraphics rootmath
Zmumumerge_PACKAGE := self/src/Alignment/OfflineValidation/bin
ALL_PRODS += Zmumumerge
Zmumumerge_INIT_FUNC        += $$(eval $$(call Binary,Zmumumerge,src/Alignment/OfflineValidation/bin,src_Alignment_OfflineValidation_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
Zmumumerge_CLASS := BINARY
else
$(eval $(call MultipleWarningMsg,Zmumumerge,src/Alignment/OfflineValidation/bin))
endif
ifeq ($(strip $(haddws)),)
haddws := self/src/Alignment/OfflineValidation/bin
haddws_files := $(patsubst src/Alignment/OfflineValidation/bin/%,%,$(foreach file,haddws.C,$(eval xfile:=$(wildcard src/Alignment/OfflineValidation/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Alignment/OfflineValidation/bin/$(file). Please fix src/Alignment/OfflineValidation/bin/BuildFile.))))
haddws_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/bin/BuildFile
haddws_LOC_FLAGS_CXXFLAGS   := -g -O3 -lASImage -lMultiProc
haddws_LOC_LIB   := stdc++fs
haddws_LOC_USE := self   Alignment/OfflineValidation boost boost_filesystem boost_program_options boost_system roofit rootcore rootgraphics rootmath
haddws_PACKAGE := self/src/Alignment/OfflineValidation/bin
ALL_PRODS += haddws
haddws_INIT_FUNC        += $$(eval $$(call Binary,haddws,src/Alignment/OfflineValidation/bin,src_Alignment_OfflineValidation_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
haddws_CLASS := BINARY
else
$(eval $(call MultipleWarningMsg,haddws,src/Alignment/OfflineValidation/bin))
endif
ifeq ($(strip $(jetHtPlotter)),)
jetHtPlotter := self/src/Alignment/OfflineValidation/bin
jetHtPlotter_files := $(patsubst src/Alignment/OfflineValidation/bin/%,%,$(foreach file,jetHtPlotter.cc JetHtPlotConfiguration.cc Options.cc,$(eval xfile:=$(wildcard src/Alignment/OfflineValidation/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Alignment/OfflineValidation/bin/$(file). Please fix src/Alignment/OfflineValidation/bin/BuildFile.))))
jetHtPlotter_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/bin/BuildFile
jetHtPlotter_LOC_FLAGS_CXXFLAGS   := -g -O3 -lASImage -lMultiProc
jetHtPlotter_LOC_LIB   := stdc++fs
jetHtPlotter_LOC_USE := self   Alignment/OfflineValidation boost boost_filesystem boost_program_options boost_system roofit rootcore rootgraphics rootmath
jetHtPlotter_PACKAGE := self/src/Alignment/OfflineValidation/bin
ALL_PRODS += jetHtPlotter
jetHtPlotter_INIT_FUNC        += $$(eval $$(call Binary,jetHtPlotter,src/Alignment/OfflineValidation/bin,src_Alignment_OfflineValidation_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
jetHtPlotter_CLASS := BINARY
else
$(eval $(call MultipleWarningMsg,jetHtPlotter,src/Alignment/OfflineValidation/bin))
endif
ALL_COMMONRULES += src_Alignment_OfflineValidation_bin
src_Alignment_OfflineValidation_bin_parent := Alignment/OfflineValidation
src_Alignment_OfflineValidation_bin_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Alignment_OfflineValidation_bin,src/Alignment/OfflineValidation/bin,BINARY))
ifeq ($(strip $(DMRall)),)
DMRall := self/src/Alignment/OfflineValidation/test
DMRall_files := 1
DMRall_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
DMRall_LOC_USE := self   
DMRall_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += DMRall
DMRall_INIT_FUNC        += $$(eval $$(call Binary,DMRall,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
DMRall_CLASS := TEST
DMRall_TEST_RUNNER_CMD :=  testingScripts/test_unitDMR.sh
DMRall_PRE_TEST := validateAlignments
else
$(eval $(call MultipleWarningMsg,DMRall,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(DiElectronVertex)),)
DiElectronVertex := self/src/Alignment/OfflineValidation/test
DiElectronVertex_files := 1
DiElectronVertex_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
DiElectronVertex_LOC_USE := self   
DiElectronVertex_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += DiElectronVertex
DiElectronVertex_INIT_FUNC        += $$(eval $$(call Binary,DiElectronVertex,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
DiElectronVertex_CLASS := TEST
DiElectronVertex_TEST_RUNNER_CMD :=  testingScripts/test_unitDiElectronVertex.sh
else
$(eval $(call MultipleWarningMsg,DiElectronVertex,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(DiMuonVall)),)
DiMuonVall := self/src/Alignment/OfflineValidation/test
DiMuonVall_files := 1
DiMuonVall_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
DiMuonVall_LOC_USE := self   
DiMuonVall_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += DiMuonVall
DiMuonVall_INIT_FUNC        += $$(eval $$(call Binary,DiMuonVall,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
DiMuonVall_CLASS := TEST
DiMuonVall_TEST_RUNNER_CMD :=  testingScripts/test_unitDiMuonV.sh
DiMuonVall_PRE_TEST := validateAlignments
else
$(eval $(call MultipleWarningMsg,DiMuonVall,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(DiMuonVertex)),)
DiMuonVertex := self/src/Alignment/OfflineValidation/test
DiMuonVertex_files := 1
DiMuonVertex_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
DiMuonVertex_LOC_USE := self   
DiMuonVertex_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += DiMuonVertex
DiMuonVertex_INIT_FUNC        += $$(eval $$(call Binary,DiMuonVertex,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
DiMuonVertex_CLASS := TEST
DiMuonVertex_TEST_RUNNER_CMD :=  testingScripts/test_unitDiMuonVertex.sh
else
$(eval $(call MultipleWarningMsg,DiMuonVertex,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(EoP)),)
EoP := self/src/Alignment/OfflineValidation/test
EoP_files := 1
EoP_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
EoP_LOC_USE := self   
EoP_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += EoP
EoP_INIT_FUNC        += $$(eval $$(call Binary,EoP,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
EoP_CLASS := TEST
EoP_TEST_RUNNER_CMD :=  testingScripts/test_unitEoP.sh
else
$(eval $(call MultipleWarningMsg,EoP,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(GCPall)),)
GCPall := self/src/Alignment/OfflineValidation/test
GCPall_files := 1
GCPall_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
GCPall_LOC_USE := self   
GCPall_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += GCPall
GCPall_INIT_FUNC        += $$(eval $$(call Binary,GCPall,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
GCPall_CLASS := TEST
GCPall_TEST_RUNNER_CMD :=  testingScripts/test_unitGCP.sh
GCPall_PRE_TEST := validateAlignments
else
$(eval $(call MultipleWarningMsg,GCPall,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(Genericall)),)
Genericall := self/src/Alignment/OfflineValidation/test
Genericall_files := 1
Genericall_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
Genericall_LOC_USE := self   
Genericall_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += Genericall
Genericall_INIT_FUNC        += $$(eval $$(call Binary,Genericall,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
Genericall_CLASS := TEST
Genericall_TEST_RUNNER_CMD :=  testingScripts/test_unitGeneric.sh
Genericall_PRE_TEST := validateAlignments
else
$(eval $(call MultipleWarningMsg,Genericall,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(JetHTall)),)
JetHTall := self/src/Alignment/OfflineValidation/test
JetHTall_files := 1
JetHTall_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
JetHTall_LOC_USE := self   
JetHTall_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += JetHTall
JetHTall_INIT_FUNC        += $$(eval $$(call Binary,JetHTall,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
JetHTall_CLASS := TEST
JetHTall_TEST_RUNNER_CMD :=  testingScripts/test_unitJetHT.sh
JetHTall_PRE_TEST := validateAlignments
else
$(eval $(call MultipleWarningMsg,JetHTall,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(MTSall)),)
MTSall := self/src/Alignment/OfflineValidation/test
MTSall_files := 1
MTSall_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
MTSall_LOC_USE := self   
MTSall_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += MTSall
MTSall_INIT_FUNC        += $$(eval $$(call Binary,MTSall,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
MTSall_CLASS := TEST
MTSall_TEST_RUNNER_CMD :=  testingScripts/test_unitMTS.sh
MTSall_PRE_TEST := validateAlignments
else
$(eval $(call MultipleWarningMsg,MTSall,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(Miscellanea)),)
Miscellanea := self/src/Alignment/OfflineValidation/test
Miscellanea_files := 1
Miscellanea_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
Miscellanea_LOC_USE := self   
Miscellanea_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += Miscellanea
Miscellanea_INIT_FUNC        += $$(eval $$(call Binary,Miscellanea,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
Miscellanea_CLASS := TEST
Miscellanea_TEST_RUNNER_CMD :=  testingScripts/test_unitMiscellanea.sh
else
$(eval $(call MultipleWarningMsg,Miscellanea,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(PVValidation)),)
PVValidation := self/src/Alignment/OfflineValidation/test
PVValidation_files := 1
PVValidation_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
PVValidation_LOC_USE := self   
PVValidation_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += PVValidation
PVValidation_INIT_FUNC        += $$(eval $$(call Binary,PVValidation,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
PVValidation_CLASS := TEST
PVValidation_TEST_RUNNER_CMD :=  testingScripts/test_unitPVValidation.sh
else
$(eval $(call MultipleWarningMsg,PVValidation,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(PVall)),)
PVall := self/src/Alignment/OfflineValidation/test
PVall_files := 1
PVall_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
PVall_LOC_USE := self   
PVall_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += PVall
PVall_INIT_FUNC        += $$(eval $$(call Binary,PVall,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
PVall_CLASS := TEST
PVall_TEST_RUNNER_CMD :=  testingScripts/test_unitPV.sh
PVall_PRE_TEST := validateAlignments
else
$(eval $(call MultipleWarningMsg,PVall,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(PixBaryall)),)
PixBaryall := self/src/Alignment/OfflineValidation/test
PixBaryall_files := 1
PixBaryall_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
PixBaryall_LOC_USE := self   
PixBaryall_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += PixBaryall
PixBaryall_INIT_FUNC        += $$(eval $$(call Binary,PixBaryall,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
PixBaryall_CLASS := TEST
PixBaryall_TEST_RUNNER_CMD :=  testingScripts/test_unitPixBary.sh
PixBaryall_PRE_TEST := validateAlignments
else
$(eval $(call MultipleWarningMsg,PixBaryall,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(PrimaryVertex)),)
PrimaryVertex := self/src/Alignment/OfflineValidation/test
PrimaryVertex_files := 1
PrimaryVertex_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
PrimaryVertex_LOC_USE := self   
PrimaryVertex_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += PrimaryVertex
PrimaryVertex_INIT_FUNC        += $$(eval $$(call Binary,PrimaryVertex,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
PrimaryVertex_CLASS := TEST
PrimaryVertex_TEST_RUNNER_CMD :=  testingScripts/test_unitPrimaryVertex.sh
else
$(eval $(call MultipleWarningMsg,PrimaryVertex,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(SagittaBiasNtuplizer)),)
SagittaBiasNtuplizer := self/src/Alignment/OfflineValidation/test
SagittaBiasNtuplizer_files := 1
SagittaBiasNtuplizer_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
SagittaBiasNtuplizer_LOC_USE := self   
SagittaBiasNtuplizer_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += SagittaBiasNtuplizer
SagittaBiasNtuplizer_INIT_FUNC        += $$(eval $$(call Binary,SagittaBiasNtuplizer,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
SagittaBiasNtuplizer_CLASS := TEST
SagittaBiasNtuplizer_TEST_RUNNER_CMD :=  testingScripts/test_unitSagittaBiasNtuplizer.sh
else
$(eval $(call MultipleWarningMsg,SagittaBiasNtuplizer,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(ShortTrackValidation)),)
ShortTrackValidation := self/src/Alignment/OfflineValidation/test
ShortTrackValidation_files := 1
ShortTrackValidation_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
ShortTrackValidation_LOC_USE := self   
ShortTrackValidation_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += ShortTrackValidation
ShortTrackValidation_INIT_FUNC        += $$(eval $$(call Binary,ShortTrackValidation,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
ShortTrackValidation_CLASS := TEST
ShortTrackValidation_TEST_RUNNER_CMD :=  testingScripts/test_unitShortTrackValidation.sh
else
$(eval $(call MultipleWarningMsg,ShortTrackValidation,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(SplitVall)),)
SplitVall := self/src/Alignment/OfflineValidation/test
SplitVall_files := 1
SplitVall_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
SplitVall_LOC_USE := self   
SplitVall_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += SplitVall
SplitVall_INIT_FUNC        += $$(eval $$(call Binary,SplitVall,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
SplitVall_CLASS := TEST
SplitVall_TEST_RUNNER_CMD :=  testingScripts/test_unitSplitV.sh
SplitVall_PRE_TEST := validateAlignments
else
$(eval $(call MultipleWarningMsg,SplitVall,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(SubmitPVrbr)),)
SubmitPVrbr := self/src/Alignment/OfflineValidation/test
SubmitPVrbr_files := 1
SubmitPVrbr_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
SubmitPVrbr_LOC_USE := self   
SubmitPVrbr_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += SubmitPVrbr
SubmitPVrbr_INIT_FUNC        += $$(eval $$(call Binary,SubmitPVrbr,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
SubmitPVrbr_CLASS := TEST
SubmitPVrbr_TEST_RUNNER_CMD :=  testingScripts/test_unitSubmitPVrbr.sh
else
$(eval $(call MultipleWarningMsg,SubmitPVrbr,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(SubmitPVsplit)),)
SubmitPVsplit := self/src/Alignment/OfflineValidation/test
SubmitPVsplit_files := 1
SubmitPVsplit_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
SubmitPVsplit_LOC_USE := self   
SubmitPVsplit_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += SubmitPVsplit
SubmitPVsplit_INIT_FUNC        += $$(eval $$(call Binary,SubmitPVsplit,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
SubmitPVsplit_CLASS := TEST
SubmitPVsplit_TEST_RUNNER_CMD :=  testingScripts/test_unitSubmitPVsplit.sh
else
$(eval $(call MultipleWarningMsg,SubmitPVsplit,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(Zmumuall)),)
Zmumuall := self/src/Alignment/OfflineValidation/test
Zmumuall_files := 1
Zmumuall_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
Zmumuall_LOC_USE := self   
Zmumuall_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += Zmumuall
Zmumuall_INIT_FUNC        += $$(eval $$(call Binary,Zmumuall,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
Zmumuall_CLASS := TEST
Zmumuall_TEST_RUNNER_CMD :=  testingScripts/test_unitZmumu.sh
Zmumuall_PRE_TEST := validateAlignments
else
$(eval $(call MultipleWarningMsg,Zmumuall,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(testDiMuonBiasesPlotting)),)
testDiMuonBiasesPlotting := self/src/Alignment/OfflineValidation/test
testDiMuonBiasesPlotting_files := $(patsubst src/Alignment/OfflineValidation/test/%,%,$(foreach file,testanalyzeDiMuonBiases.cpp,$(eval xfile:=$(wildcard src/Alignment/OfflineValidation/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Alignment/OfflineValidation/test/$(file). Please fix src/Alignment/OfflineValidation/test/BuildFile.))))
testDiMuonBiasesPlotting_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
testDiMuonBiasesPlotting_LOC_USE := self   rootmath roothistmatrix rootgraphics Alignment/OfflineValidation
testDiMuonBiasesPlotting_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += testDiMuonBiasesPlotting
testDiMuonBiasesPlotting_INIT_FUNC        += $$(eval $$(call Binary,testDiMuonBiasesPlotting,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
testDiMuonBiasesPlotting_CLASS := TEST
testDiMuonBiasesPlotting_TEST_RUNNER_CMD :=  testDiMuonBiasesPlotting 
testDiMuonBiasesPlotting_PRE_TEST := SagittaBiasNtuplizer
else
$(eval $(call MultipleWarningMsg,testDiMuonBiasesPlotting,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(testEoPPlotting)),)
testEoPPlotting := self/src/Alignment/OfflineValidation/test
testEoPPlotting_files := $(patsubst src/Alignment/OfflineValidation/test/%,%,$(foreach file,testEoPPlotting.cpp,$(eval xfile:=$(wildcard src/Alignment/OfflineValidation/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Alignment/OfflineValidation/test/$(file). Please fix src/Alignment/OfflineValidation/test/BuildFile.))))
testEoPPlotting_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
testEoPPlotting_LOC_USE := self   rootmath roothistmatrix rootgraphics Alignment/OfflineValidation
testEoPPlotting_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += testEoPPlotting
testEoPPlotting_INIT_FUNC        += $$(eval $$(call Binary,testEoPPlotting,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
testEoPPlotting_CLASS := TEST
testEoPPlotting_TEST_RUNNER_CMD :=  testEoPPlotting 
testEoPPlotting_PRE_TEST := EoP
else
$(eval $(call MultipleWarningMsg,testEoPPlotting,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(testPVPlotting)),)
testPVPlotting := self/src/Alignment/OfflineValidation/test
testPVPlotting_files := $(patsubst src/Alignment/OfflineValidation/test/%,%,$(foreach file,testPVPlotting.cpp,$(eval xfile:=$(wildcard src/Alignment/OfflineValidation/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Alignment/OfflineValidation/test/$(file). Please fix src/Alignment/OfflineValidation/test/BuildFile.))))
testPVPlotting_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
testPVPlotting_LOC_USE := self   rootmath roothistmatrix rootgraphics Alignment/OfflineValidation
testPVPlotting_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += testPVPlotting
testPVPlotting_INIT_FUNC        += $$(eval $$(call Binary,testPVPlotting,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
testPVPlotting_CLASS := TEST
testPVPlotting_TEST_RUNNER_CMD :=  testPVPlotting 
testPVPlotting_PRE_TEST := PrimaryVertex
else
$(eval $(call MultipleWarningMsg,testPVPlotting,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(testTkAlStyle)),)
testTkAlStyle := self/src/Alignment/OfflineValidation/test
testTkAlStyle_files := $(patsubst src/Alignment/OfflineValidation/test/%,%,$(foreach file,testTkAlStyle.C,$(eval xfile:=$(wildcard src/Alignment/OfflineValidation/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Alignment/OfflineValidation/test/$(file). Please fix src/Alignment/OfflineValidation/test/BuildFile.))))
testTkAlStyle_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
testTkAlStyle_LOC_USE := self   rootgraphics Alignment/OfflineValidation
testTkAlStyle_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += testTkAlStyle
testTkAlStyle_INIT_FUNC        += $$(eval $$(call Binary,testTkAlStyle,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
testTkAlStyle_CLASS := TEST
testTkAlStyle_TEST_RUNNER_CMD :=  testTkAlStyle 
else
$(eval $(call MultipleWarningMsg,testTkAlStyle,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(testTrackAnalysis)),)
testTrackAnalysis := self/src/Alignment/OfflineValidation/test
testTrackAnalysis_files := $(patsubst src/Alignment/OfflineValidation/test/%,%,$(foreach file,testTrackAnalyzers.cc,$(eval xfile:=$(wildcard src/Alignment/OfflineValidation/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Alignment/OfflineValidation/test/$(file). Please fix src/Alignment/OfflineValidation/test/BuildFile.))))
testTrackAnalysis_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
testTrackAnalysis_LOC_USE := self   FWCore/TestProcessor catch2
testTrackAnalysis_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += testTrackAnalysis
testTrackAnalysis_INIT_FUNC        += $$(eval $$(call Binary,testTrackAnalysis,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
testTrackAnalysis_CLASS := TEST
testTrackAnalysis_TEST_RUNNER_CMD :=  testTrackAnalysis 
else
$(eval $(call MultipleWarningMsg,testTrackAnalysis,src/Alignment/OfflineValidation/test))
endif
ifeq ($(strip $(validateAlignments)),)
validateAlignments := self/src/Alignment/OfflineValidation/test
validateAlignments_files := 1
validateAlignments_BuildFile    := $(WORKINGDIR)/cache/bf/src/Alignment/OfflineValidation/test/BuildFile
validateAlignments_LOC_USE := self   
validateAlignments_PACKAGE := self/src/Alignment/OfflineValidation/test
ALL_PRODS += validateAlignments
validateAlignments_INIT_FUNC        += $$(eval $$(call Binary,validateAlignments,src/Alignment/OfflineValidation/test,src_Alignment_OfflineValidation_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
validateAlignments_CLASS := TEST
validateAlignments_TEST_RUNNER_CMD :=  testingScripts/validateAlignments.sh
else
$(eval $(call MultipleWarningMsg,validateAlignments,src/Alignment/OfflineValidation/test))
endif
ALL_COMMONRULES += src_Alignment_OfflineValidation_test
src_Alignment_OfflineValidation_test_parent := Alignment/OfflineValidation
src_Alignment_OfflineValidation_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Alignment_OfflineValidation_test,src/Alignment/OfflineValidation/test,TEST))
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
