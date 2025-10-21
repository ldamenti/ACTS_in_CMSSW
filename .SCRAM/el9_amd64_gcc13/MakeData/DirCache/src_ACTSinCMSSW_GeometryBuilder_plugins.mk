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
