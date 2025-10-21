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
