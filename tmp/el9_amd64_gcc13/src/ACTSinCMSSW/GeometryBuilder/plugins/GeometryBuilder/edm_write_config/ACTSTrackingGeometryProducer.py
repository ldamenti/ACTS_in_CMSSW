import FWCore.ParameterSet.Config as cms

def ACTSTrackingGeometryProducer(*args, **kwargs):
  mod = cms.ESProducer('ACTSTrackingGeometryProducer',
    appendToDataLabel = cms.string('')
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
