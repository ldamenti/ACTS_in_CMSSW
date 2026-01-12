src_Validation_RecoTrack_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/Validation/RecoTrack/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_Validation_RecoTrack_scripts,src/Validation/RecoTrack/scripts,$(SCRAMSTORENAME_BIN),*))
