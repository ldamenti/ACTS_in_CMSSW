import FWCore.ParameterSet.Config as cms

def ACTSRefitTracksProducerDEBUG(*args, **kwargs):
  mod = cms.EDProducer('ACTSRefitTracksProducerDEBUG',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
