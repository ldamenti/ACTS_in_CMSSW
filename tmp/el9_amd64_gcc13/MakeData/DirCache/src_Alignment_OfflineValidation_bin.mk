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
