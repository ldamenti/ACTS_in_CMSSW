import FWCore.ParameterSet.Config as cms
from Configuration.ProcessModifiers.dd4hep_cff import dd4hep

process = cms.Process("DumpGeometry", dd4hep)

# Load DD4hep geometry
process.load("Configuration.Geometry.GeometryDD4hepExtended2023_cff")     # PHASE 1

# Tracker Geometry and Tracker Topology 
process.load("Geometry.TrackerGeometryBuilder.trackerGeometry_cfi")
process.load("Geometry.TrackerNumberingBuilder.trackerTopology_cfi")
process.load("Geometry.TrackerNumberingBuilder.trackerNumberingGeometry_cff")

process.TrackerAdditionalParametersPerDetESModule = cms.ESProducer("TrackerAdditionalParametersPerDetESModule")

process.load("Configuration.StandardSequences.MagneticField_cff")
process.load("Configuration.StandardSequences.FrontierConditions_GlobalTag_cff")
process.load("Configuration.ProcessModifiers.dd4hep_cff")

from Configuration.AlCa.GlobalTag import GlobalTag
process.GlobalTag = GlobalTag(process.GlobalTag, "auto:phase1_2023_realistic", "") 

process.source = cms.Source("EmptySource")
process.maxEvents = cms.untracked.PSet(input=cms.untracked.int32(1))


# ===== Construct the ACTS Tracking Geometry =====
process.trackinGeoProducer = cms.ESProducer("ACTSTrackingGeometryProducer", 
    # Options to save the detector elements in an OBJ file
    saveObjfile    = cms.untracked.bool(True),
    outputObjFile  = cms.untracked.string("testSlice.obj"),
    rangeZ         = cms.untracked.vdouble(-1000, 1000),  # Min, Max (mm)
    rangeR         = cms.untracked.vdouble(0, 1200),      # Min, Max (mm) 
    # Options to save the Tracker blueprint on an SVG file
    saveSvgfile    = cms.untracked.bool(True),
    outputSvgFile  = cms.untracked.string("testSvg_output.svg"),
    # Option to map the material from a JSON file
    mapMaterial    = cms.untracked.bool(True),
    MaterialMaps   = cms.untracked.string("MaterialMaps.json")
)

process.get = cms.EDAnalyzer("EventSetupRecordDataGetter",
    toGet = cms.VPSet(cms.PSet(
        record = cms.string('ACTSTrackerGeometryRecord'),
        data = cms.vstring('Acts::TrackingGeometry'),
    )),
    verbose = cms.untracked.bool(True))

# ===== Validate the Mapped Material =====
# process.validateMappedMat = cms.EDProducer("MappedMaterialValidator", 
#     Nevents = cms.untracked.int32(100),
#     Ntracks = cms.untracked.int32(100),
# )

# ===== TEST: Create the Material Maps =====
# process.createMaterialFile = cms.EDProducer("JsonMaterialMapsProducer",
#     G4InputFile = cms.untracked.string("/eos/user/l/ldamenti/G4MaterialFiles/MaterialFile_ExtendedGeo2023_10000_100_test_TrkOnly.root"),
#     OutputFile  = cms.untracked.string("MaterialMaps_10Events.json"),
#     Nevents = cms.untracked.int32(10),
# )

process.testPropagation = cms.EDProducer("ACTSPropagatorTest")


process.p = cms.Path(process.testPropagation)


