import FWCore.ParameterSet.Config as cms

def JsonMaterialMapsProducer(*args, **kwargs):
  mod = cms.EDProducer('JsonMaterialMapsProducer',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
