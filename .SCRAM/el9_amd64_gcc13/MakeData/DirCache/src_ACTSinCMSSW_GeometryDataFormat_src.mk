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
