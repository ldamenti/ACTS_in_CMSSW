ifeq ($(strip $(GeometryBuilder)),)
GeometryBuilder := self/src/ACTSinCMSSW/GeometryBuilder/plugins
PLUGINS:=yes
GeometryBuilder_files := $(patsubst src/ACTSinCMSSW/GeometryBuilder/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/ACTSinCMSSW/GeometryBuilder/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/ACTSinCMSSW/GeometryBuilder/plugins/$(file). Please fix src/ACTSinCMSSW/GeometryBuilder/plugins/BuildFile.))))
GeometryBuilder_BuildFile    := $(WORKINGDIR)/cache/bf/src/ACTSinCMSSW/GeometryBuilder/plugins/BuildFile
GeometryBuilder_LOC_USE := self   Geometry/TrackerGeometryBuilder Geometry/CommonDetUnit Geometry/Records DataFormats/TrackerCommon DataFormats/TrackerRecHit2D DataFormats/SiStripDetId DataFormats/GeometrySurface FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger CondFormats/SiStripObjects DetectorDescription/Core ACTSinCMSSW/GeometryDataFormat MagneticField/Engine MagneticField/Records FWCore/PluginManager FWCore/ServiceRegistry rootcore acts-core acts-json acts-svg acts-root
GeometryBuilder_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,GeometryBuilder,GeometryBuilder,$(SCRAMSTORENAME_LIB),src/ACTSinCMSSW/GeometryBuilder/plugins))
GeometryBuilder_PACKAGE := self/src/ACTSinCMSSW/GeometryBuilder/plugins
ALL_PRODS += GeometryBuilder
ACTSinCMSSW/GeometryBuilder_forbigobj+=GeometryBuilder
GeometryBuilder_INIT_FUNC        += $$(eval $$(call Library,GeometryBuilder,src/ACTSinCMSSW/GeometryBuilder/plugins,src_ACTSinCMSSW_GeometryBuilder_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
GeometryBuilder_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,GeometryBuilder,src/ACTSinCMSSW/GeometryBuilder/plugins))
endif
ALL_COMMONRULES += src_ACTSinCMSSW_GeometryBuilder_plugins
src_ACTSinCMSSW_GeometryBuilder_plugins_parent := ACTSinCMSSW/GeometryBuilder
src_ACTSinCMSSW_GeometryBuilder_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_ACTSinCMSSW_GeometryBuilder_plugins,src/ACTSinCMSSW/GeometryBuilder/plugins,PLUGINS))
ifeq ($(strip $(ACTSinCMSSW/GeometryDataFormat)),)
ALL_COMMONRULES += src_ACTSinCMSSW_GeometryDataFormat_src
src_ACTSinCMSSW_GeometryDataFormat_src_parent := ACTSinCMSSW/GeometryDataFormat
src_ACTSinCMSSW_GeometryDataFormat_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_ACTSinCMSSW_GeometryDataFormat_src,src/ACTSinCMSSW/GeometryDataFormat/src,LIBRARY))
ACTSinCMSSWGeometryDataFormat := self/ACTSinCMSSW/GeometryDataFormat
ACTSinCMSSW/GeometryDataFormat := ACTSinCMSSWGeometryDataFormat
ACTSinCMSSWGeometryDataFormat_files := $(patsubst src/ACTSinCMSSW/GeometryDataFormat/src/%,%,$(wildcard $(foreach dir,src/ACTSinCMSSW/GeometryDataFormat/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
ACTSinCMSSWGeometryDataFormat_BuildFile    := $(WORKINGDIR)/cache/bf/src/ACTSinCMSSW/GeometryDataFormat/BuildFile
ACTSinCMSSWGeometryDataFormat_LOC_USE := self   Geometry/TrackerGeometryBuilder Geometry/CommonDetUnit Geometry/Records DataFormats/TrackerCommon DataFormats/TrackerRecHit2D DataFormats/SiStripDetId DataFormats/GeometrySurface FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger CondFormats/SiStripObjects DetectorDescription/Core root acts-core acts-json acts-svg rootcore FWCore/Utilities
ACTSinCMSSWGeometryDataFormat_LCGDICTS  := x 
ACTSinCMSSWGeometryDataFormat_PRE_INIT_FUNC += $$(eval $$(call LCGDict,ACTSinCMSSWGeometryDataFormat,src/ACTSinCMSSW/GeometryDataFormat/src/classes.h,src/ACTSinCMSSW/GeometryDataFormat/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) $(root_EX_FLAGS_GENREFLEX_FAILES_ON_WARNS)))
ACTSinCMSSWGeometryDataFormat_EX_LIB   := ACTSinCMSSWGeometryDataFormat
ACTSinCMSSWGeometryDataFormat_EX_USE   := $(foreach d,$(ACTSinCMSSWGeometryDataFormat_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ACTSinCMSSWGeometryDataFormat_PACKAGE := self/src/ACTSinCMSSW/GeometryDataFormat/src
ALL_PRODS += ACTSinCMSSWGeometryDataFormat
ACTSinCMSSWGeometryDataFormat_CLASS := LIBRARY
ACTSinCMSSW/GeometryDataFormat_forbigobj+=ACTSinCMSSWGeometryDataFormat
ACTSinCMSSWGeometryDataFormat_INIT_FUNC        += $$(eval $$(call Library,ACTSinCMSSWGeometryDataFormat,src/ACTSinCMSSW/GeometryDataFormat/src,src_ACTSinCMSSW_GeometryDataFormat_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(Geometry/Records)),)
ALL_COMMONRULES += src_Geometry_Records_src
src_Geometry_Records_src_parent := Geometry/Records
src_Geometry_Records_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_Geometry_Records_src,src/Geometry/Records/src,LIBRARY))
GeometryRecords := self/Geometry/Records
Geometry/Records := GeometryRecords
GeometryRecords_files := $(patsubst src/Geometry/Records/src/%,%,$(wildcard $(foreach dir,src/Geometry/Records/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
GeometryRecords_BuildFile    := $(WORKINGDIR)/cache/bf/src/Geometry/Records/BuildFile
GeometryRecords_LOC_USE := self   FWCore/Utilities FWCore/Framework CondFormats/AlignmentRecord boost
GeometryRecords_EX_LIB   := GeometryRecords
GeometryRecords_EX_USE   := $(foreach d,$(GeometryRecords_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryRecords_PACKAGE := self/src/Geometry/Records/src
ALL_PRODS += GeometryRecords
GeometryRecords_CLASS := LIBRARY
Geometry/Records_forbigobj+=GeometryRecords
GeometryRecords_INIT_FUNC        += $$(eval $$(call Library,GeometryRecords,src/Geometry/Records/src,src_Geometry_Records_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
