src_Alignment_OfflineValidation_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/Alignment/OfflineValidation/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_Alignment_OfflineValidation_scripts,src/Alignment/OfflineValidation/scripts,$(SCRAMSTORENAME_BIN),*))
