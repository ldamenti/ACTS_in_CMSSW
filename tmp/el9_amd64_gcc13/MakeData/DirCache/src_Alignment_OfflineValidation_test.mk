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
