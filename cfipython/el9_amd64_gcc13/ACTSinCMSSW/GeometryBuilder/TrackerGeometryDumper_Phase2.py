import FWCore.ParameterSet.Config as cms

def TrackerGeometryDumper_Phase2(*args, **kwargs):
  mod = cms.EDAnalyzer('TrackerGeometryDumper_Phase2',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
