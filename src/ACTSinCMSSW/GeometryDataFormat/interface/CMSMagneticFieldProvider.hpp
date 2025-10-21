#pragma once

#include "Acts/Definitions/Algebra.hpp"
#include "Acts/MagneticField/MagneticFieldContext.hpp"
#include "Acts/Utilities/Any.hpp"
#include "Acts/Utilities/Result.hpp"
#include "MagneticField/Engine/interface/MagneticField.h"
#include "MagneticField/Records/interface/IdealMagneticFieldRecord.h"
#include "DataFormats/GeometryVector/interface/GlobalPoint.h"
#include "Acts/MagneticField/MagneticFieldProvider.hpp"

class CMSMagneticFieldProvider : public Acts::MagneticFieldProvider {
public:

  CMSMagneticFieldProvider(const MagneticField& bField);

  virtual Cache makeCache(const Acts::MagneticFieldContext& mctx) const override;

  virtual Acts::Result<Acts::Vector3> getField(const Acts::Vector3& position, Cache& cache) const override;

  ~CMSMagneticFieldProvider() = default;

private:
  const MagneticField& bField_;
    
};


CMSMagneticFieldProvider::CMSMagneticFieldProvider(const MagneticField& bField): bField_(bField) {};

Acts::MagneticFieldProvider::Cache CMSMagneticFieldProvider::makeCache(const Acts::MagneticFieldContext& mctx) const 
{
    return Cache{};
}

Acts::Result<Acts::Vector3> CMSMagneticFieldProvider::getField(const Acts::Vector3& position, Cache& cache) const {
    GlobalPoint point(position[0], position[1], position[2]); // cm
    GlobalVector field = bField_.inTesla(point);

    return Acts::Result<Acts::Vector3>::success(Acts::Vector3(field.x(), field.y(), field.z()));
}