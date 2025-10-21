import FWCore.ParameterSet.Config as cms

def MappedMaterialValidator(*args, **kwargs):
  mod = cms.EDProducer('MappedMaterialValidator',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
