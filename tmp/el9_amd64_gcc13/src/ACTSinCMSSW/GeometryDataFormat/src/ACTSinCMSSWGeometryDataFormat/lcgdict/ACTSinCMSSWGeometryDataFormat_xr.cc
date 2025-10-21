// Do NOT change. Changes will be lost next time file is generated

#define R__DICTIONARY_FILENAME tmpdIel9_amd64_gcc13dIsrcdIACTSinCMSSWdIGeometryDataFormatdIsrcdIACTSinCMSSWGeometryDataFormatdIlcgdictdIACTSinCMSSWGeometryDataFormat_xr
#define R__NO_DEPRECATION

/*******************************************************************/
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#define G__DICTIONARY
#include "ROOT/RConfig.hxx"
#include "TClass.h"
#include "TDictAttributeMap.h"
#include "TInterpreter.h"
#include "TROOT.h"
#include "TBuffer.h"
#include "TMemberInspector.h"
#include "TInterpreter.h"
#include "TVirtualMutex.h"
#include "TError.h"

#ifndef G__ROOT
#define G__ROOT
#endif

#include "RtypesImp.h"
#include "TIsAProxy.h"
#include "TFileMergeInfo.h"
#include <algorithm>
#include "TCollectionProxyInfo.h"
/*******************************************************************/

#include "TDataMember.h"

// Header files passed as explicit arguments
#include "src/ACTSinCMSSW/GeometryDataFormat/src/classes.h"

// Header files passed via #pragma extra_include

// The generated code does not explicitly qualify STL entities
namespace std {} using namespace std;

namespace ROOT {
   static TClass *ActscLcLCMSDetectorElement_Dictionary();
   static void ActscLcLCMSDetectorElement_TClassManip(TClass*);
   static void *new_ActscLcLCMSDetectorElement(void *p = nullptr);
   static void *newArray_ActscLcLCMSDetectorElement(Long_t size, void *p);
   static void delete_ActscLcLCMSDetectorElement(void *p);
   static void deleteArray_ActscLcLCMSDetectorElement(void *p);
   static void destruct_ActscLcLCMSDetectorElement(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::Acts::CMSDetectorElement*)
   {
      ::Acts::CMSDetectorElement *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::Acts::CMSDetectorElement));
      static ::ROOT::TGenericClassInfo 
         instance("Acts::CMSDetectorElement", "ACTSinCMSSW/GeometryDataFormat/interface/CMSDetectorElement.h", 25,
                  typeid(::Acts::CMSDetectorElement), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &ActscLcLCMSDetectorElement_Dictionary, isa_proxy, 4,
                  sizeof(::Acts::CMSDetectorElement) );
      instance.SetNew(&new_ActscLcLCMSDetectorElement);
      instance.SetNewArray(&newArray_ActscLcLCMSDetectorElement);
      instance.SetDelete(&delete_ActscLcLCMSDetectorElement);
      instance.SetDeleteArray(&deleteArray_ActscLcLCMSDetectorElement);
      instance.SetDestructor(&destruct_ActscLcLCMSDetectorElement);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::Acts::CMSDetectorElement*)
   {
      return GenerateInitInstanceLocal(static_cast<::Acts::CMSDetectorElement*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::Acts::CMSDetectorElement*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *ActscLcLCMSDetectorElement_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal(static_cast<const ::Acts::CMSDetectorElement*>(nullptr))->GetClass();
      ActscLcLCMSDetectorElement_TClassManip(theClass);
   return theClass;
   }

   static void ActscLcLCMSDetectorElement_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *edmcLcLWrapperlEvectorlEActscLcLCMSDetectorElementgRsPgR_Dictionary();
   static void edmcLcLWrapperlEvectorlEActscLcLCMSDetectorElementgRsPgR_TClassManip(TClass*);
   static void *new_edmcLcLWrapperlEvectorlEActscLcLCMSDetectorElementgRsPgR(void *p = nullptr);
   static void *newArray_edmcLcLWrapperlEvectorlEActscLcLCMSDetectorElementgRsPgR(Long_t size, void *p);
   static void delete_edmcLcLWrapperlEvectorlEActscLcLCMSDetectorElementgRsPgR(void *p);
   static void deleteArray_edmcLcLWrapperlEvectorlEActscLcLCMSDetectorElementgRsPgR(void *p);
   static void destruct_edmcLcLWrapperlEvectorlEActscLcLCMSDetectorElementgRsPgR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::edm::Wrapper<vector<Acts::CMSDetectorElement> >*)
   {
      ::edm::Wrapper<vector<Acts::CMSDetectorElement> > *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::edm::Wrapper<vector<Acts::CMSDetectorElement> >));
      static ::ROOT::TGenericClassInfo 
         instance("edm::Wrapper<vector<Acts::CMSDetectorElement> >", ::edm::Wrapper<vector<Acts::CMSDetectorElement> >::Class_Version(), "DataFormats/Common/interface/Wrapper.h", 25,
                  typeid(::edm::Wrapper<vector<Acts::CMSDetectorElement> >), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &edmcLcLWrapperlEvectorlEActscLcLCMSDetectorElementgRsPgR_Dictionary, isa_proxy, 4,
                  sizeof(::edm::Wrapper<vector<Acts::CMSDetectorElement> >) );
      instance.SetNew(&new_edmcLcLWrapperlEvectorlEActscLcLCMSDetectorElementgRsPgR);
      instance.SetNewArray(&newArray_edmcLcLWrapperlEvectorlEActscLcLCMSDetectorElementgRsPgR);
      instance.SetDelete(&delete_edmcLcLWrapperlEvectorlEActscLcLCMSDetectorElementgRsPgR);
      instance.SetDeleteArray(&deleteArray_edmcLcLWrapperlEvectorlEActscLcLCMSDetectorElementgRsPgR);
      instance.SetDestructor(&destruct_edmcLcLWrapperlEvectorlEActscLcLCMSDetectorElementgRsPgR);

      instance.AdoptAlternate(::ROOT::AddClassAlternate("edm::Wrapper<vector<Acts::CMSDetectorElement> >","edm::Wrapper<std::vector<Acts::CMSDetectorElement> >"));

      instance.AdoptAlternate(::ROOT::AddClassAlternate("edm::Wrapper<vector<Acts::CMSDetectorElement> >","edm::Wrapper<std::vector<Acts::CMSDetectorElement, std::allocator<Acts::CMSDetectorElement> > >"));
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::edm::Wrapper<vector<Acts::CMSDetectorElement> >*)
   {
      return GenerateInitInstanceLocal(static_cast<::edm::Wrapper<vector<Acts::CMSDetectorElement> >*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::edm::Wrapper<vector<Acts::CMSDetectorElement> >*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *edmcLcLWrapperlEvectorlEActscLcLCMSDetectorElementgRsPgR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal(static_cast<const ::edm::Wrapper<vector<Acts::CMSDetectorElement> >*>(nullptr))->GetClass();
      edmcLcLWrapperlEvectorlEActscLcLCMSDetectorElementgRsPgR_TClassManip(theClass);
   return theClass;
   }

   static void edmcLcLWrapperlEvectorlEActscLcLCMSDetectorElementgRsPgR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   // Wrappers around operator new
   static void *new_ActscLcLCMSDetectorElement(void *p) {
      return  p ? ::new(static_cast<::ROOT::Internal::TOperatorNewHelper*>(p)) ::Acts::CMSDetectorElement : new ::Acts::CMSDetectorElement;
   }
   static void *newArray_ActscLcLCMSDetectorElement(Long_t nElements, void *p) {
      return p ? ::new(static_cast<::ROOT::Internal::TOperatorNewHelper*>(p)) ::Acts::CMSDetectorElement[nElements] : new ::Acts::CMSDetectorElement[nElements];
   }
   // Wrapper around operator delete
   static void delete_ActscLcLCMSDetectorElement(void *p) {
      delete (static_cast<::Acts::CMSDetectorElement*>(p));
   }
   static void deleteArray_ActscLcLCMSDetectorElement(void *p) {
      delete [] (static_cast<::Acts::CMSDetectorElement*>(p));
   }
   static void destruct_ActscLcLCMSDetectorElement(void *p) {
      typedef ::Acts::CMSDetectorElement current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::Acts::CMSDetectorElement

namespace ROOT {
   // Wrappers around operator new
   static void *new_edmcLcLWrapperlEvectorlEActscLcLCMSDetectorElementgRsPgR(void *p) {
      return  p ? ::new(static_cast<::ROOT::Internal::TOperatorNewHelper*>(p)) ::edm::Wrapper<vector<Acts::CMSDetectorElement> > : new ::edm::Wrapper<vector<Acts::CMSDetectorElement> >;
   }
   static void *newArray_edmcLcLWrapperlEvectorlEActscLcLCMSDetectorElementgRsPgR(Long_t nElements, void *p) {
      return p ? ::new(static_cast<::ROOT::Internal::TOperatorNewHelper*>(p)) ::edm::Wrapper<vector<Acts::CMSDetectorElement> >[nElements] : new ::edm::Wrapper<vector<Acts::CMSDetectorElement> >[nElements];
   }
   // Wrapper around operator delete
   static void delete_edmcLcLWrapperlEvectorlEActscLcLCMSDetectorElementgRsPgR(void *p) {
      delete (static_cast<::edm::Wrapper<vector<Acts::CMSDetectorElement> >*>(p));
   }
   static void deleteArray_edmcLcLWrapperlEvectorlEActscLcLCMSDetectorElementgRsPgR(void *p) {
      delete [] (static_cast<::edm::Wrapper<vector<Acts::CMSDetectorElement> >*>(p));
   }
   static void destruct_edmcLcLWrapperlEvectorlEActscLcLCMSDetectorElementgRsPgR(void *p) {
      typedef ::edm::Wrapper<vector<Acts::CMSDetectorElement> > current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::edm::Wrapper<vector<Acts::CMSDetectorElement> >

namespace ROOT {
   static TClass *vectorlEActscLcLCMSDetectorElementgR_Dictionary();
   static void vectorlEActscLcLCMSDetectorElementgR_TClassManip(TClass*);
   static void *new_vectorlEActscLcLCMSDetectorElementgR(void *p = nullptr);
   static void *newArray_vectorlEActscLcLCMSDetectorElementgR(Long_t size, void *p);
   static void delete_vectorlEActscLcLCMSDetectorElementgR(void *p);
   static void deleteArray_vectorlEActscLcLCMSDetectorElementgR(void *p);
   static void destruct_vectorlEActscLcLCMSDetectorElementgR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const vector<Acts::CMSDetectorElement>*)
   {
      vector<Acts::CMSDetectorElement> *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(vector<Acts::CMSDetectorElement>));
      static ::ROOT::TGenericClassInfo 
         instance("vector<Acts::CMSDetectorElement>", -2, "vector", 428,
                  typeid(vector<Acts::CMSDetectorElement>), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &vectorlEActscLcLCMSDetectorElementgR_Dictionary, isa_proxy, 4,
                  sizeof(vector<Acts::CMSDetectorElement>) );
      instance.SetNew(&new_vectorlEActscLcLCMSDetectorElementgR);
      instance.SetNewArray(&newArray_vectorlEActscLcLCMSDetectorElementgR);
      instance.SetDelete(&delete_vectorlEActscLcLCMSDetectorElementgR);
      instance.SetDeleteArray(&deleteArray_vectorlEActscLcLCMSDetectorElementgR);
      instance.SetDestructor(&destruct_vectorlEActscLcLCMSDetectorElementgR);
      instance.AdoptCollectionProxyInfo(TCollectionProxyInfo::Generate(TCollectionProxyInfo::Pushback< vector<Acts::CMSDetectorElement> >()));

      instance.AdoptAlternate(::ROOT::AddClassAlternate("vector<Acts::CMSDetectorElement>","std::vector<Acts::CMSDetectorElement, std::allocator<Acts::CMSDetectorElement> >"));
      return &instance;
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const vector<Acts::CMSDetectorElement>*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *vectorlEActscLcLCMSDetectorElementgR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal(static_cast<const vector<Acts::CMSDetectorElement>*>(nullptr))->GetClass();
      vectorlEActscLcLCMSDetectorElementgR_TClassManip(theClass);
   return theClass;
   }

   static void vectorlEActscLcLCMSDetectorElementgR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   // Wrappers around operator new
   static void *new_vectorlEActscLcLCMSDetectorElementgR(void *p) {
      return  p ? ::new(static_cast<::ROOT::Internal::TOperatorNewHelper*>(p)) vector<Acts::CMSDetectorElement> : new vector<Acts::CMSDetectorElement>;
   }
   static void *newArray_vectorlEActscLcLCMSDetectorElementgR(Long_t nElements, void *p) {
      return p ? ::new(static_cast<::ROOT::Internal::TOperatorNewHelper*>(p)) vector<Acts::CMSDetectorElement>[nElements] : new vector<Acts::CMSDetectorElement>[nElements];
   }
   // Wrapper around operator delete
   static void delete_vectorlEActscLcLCMSDetectorElementgR(void *p) {
      delete (static_cast<vector<Acts::CMSDetectorElement>*>(p));
   }
   static void deleteArray_vectorlEActscLcLCMSDetectorElementgR(void *p) {
      delete [] (static_cast<vector<Acts::CMSDetectorElement>*>(p));
   }
   static void destruct_vectorlEActscLcLCMSDetectorElementgR(void *p) {
      typedef vector<Acts::CMSDetectorElement> current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class vector<Acts::CMSDetectorElement>

namespace ROOT {
   static TClass *vectorlEActscLcLCMSDetectorElementmUgR_Dictionary();
   static void vectorlEActscLcLCMSDetectorElementmUgR_TClassManip(TClass*);
   static void *new_vectorlEActscLcLCMSDetectorElementmUgR(void *p = nullptr);
   static void *newArray_vectorlEActscLcLCMSDetectorElementmUgR(Long_t size, void *p);
   static void delete_vectorlEActscLcLCMSDetectorElementmUgR(void *p);
   static void deleteArray_vectorlEActscLcLCMSDetectorElementmUgR(void *p);
   static void destruct_vectorlEActscLcLCMSDetectorElementmUgR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const vector<Acts::CMSDetectorElement*>*)
   {
      vector<Acts::CMSDetectorElement*> *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(vector<Acts::CMSDetectorElement*>));
      static ::ROOT::TGenericClassInfo 
         instance("vector<Acts::CMSDetectorElement*>", -2, "vector", 428,
                  typeid(vector<Acts::CMSDetectorElement*>), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &vectorlEActscLcLCMSDetectorElementmUgR_Dictionary, isa_proxy, 4,
                  sizeof(vector<Acts::CMSDetectorElement*>) );
      instance.SetNew(&new_vectorlEActscLcLCMSDetectorElementmUgR);
      instance.SetNewArray(&newArray_vectorlEActscLcLCMSDetectorElementmUgR);
      instance.SetDelete(&delete_vectorlEActscLcLCMSDetectorElementmUgR);
      instance.SetDeleteArray(&deleteArray_vectorlEActscLcLCMSDetectorElementmUgR);
      instance.SetDestructor(&destruct_vectorlEActscLcLCMSDetectorElementmUgR);
      instance.AdoptCollectionProxyInfo(TCollectionProxyInfo::Generate(TCollectionProxyInfo::Pushback< vector<Acts::CMSDetectorElement*> >()));

      instance.AdoptAlternate(::ROOT::AddClassAlternate("vector<Acts::CMSDetectorElement*>","std::vector<Acts::CMSDetectorElement*, std::allocator<Acts::CMSDetectorElement*> >"));
      return &instance;
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const vector<Acts::CMSDetectorElement*>*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *vectorlEActscLcLCMSDetectorElementmUgR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal(static_cast<const vector<Acts::CMSDetectorElement*>*>(nullptr))->GetClass();
      vectorlEActscLcLCMSDetectorElementmUgR_TClassManip(theClass);
   return theClass;
   }

   static void vectorlEActscLcLCMSDetectorElementmUgR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   // Wrappers around operator new
   static void *new_vectorlEActscLcLCMSDetectorElementmUgR(void *p) {
      return  p ? ::new(static_cast<::ROOT::Internal::TOperatorNewHelper*>(p)) vector<Acts::CMSDetectorElement*> : new vector<Acts::CMSDetectorElement*>;
   }
   static void *newArray_vectorlEActscLcLCMSDetectorElementmUgR(Long_t nElements, void *p) {
      return p ? ::new(static_cast<::ROOT::Internal::TOperatorNewHelper*>(p)) vector<Acts::CMSDetectorElement*>[nElements] : new vector<Acts::CMSDetectorElement*>[nElements];
   }
   // Wrapper around operator delete
   static void delete_vectorlEActscLcLCMSDetectorElementmUgR(void *p) {
      delete (static_cast<vector<Acts::CMSDetectorElement*>*>(p));
   }
   static void deleteArray_vectorlEActscLcLCMSDetectorElementmUgR(void *p) {
      delete [] (static_cast<vector<Acts::CMSDetectorElement*>*>(p));
   }
   static void destruct_vectorlEActscLcLCMSDetectorElementmUgR(void *p) {
      typedef vector<Acts::CMSDetectorElement*> current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class vector<Acts::CMSDetectorElement*>

namespace {
  void TriggerDictionaryInitialization_ACTSinCMSSWGeometryDataFormat_xr_Impl() {
    static const char* headers[] = {
"0",
nullptr
    };
    static const char* includePaths[] = {
"src",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/cms/cmssw/CMSSW_16_0_0_pre1/src",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/dd4hep/v01-29-00-8ffb3bfc3098e26170d91a62fe51da61/include",
"/eos/user/l/ldamenti/CMSSW_16_0_0_pre1/build/build/el9_amd64_gcc13/external/acts/44.0.1-7e91db8356c380fe96ded67a42751770/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/pcre/8.43-6d98fda3bfd074ebb583e2d6a2c75d25/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/bz2lib/1.0.6-d113e1c6278c07eeaff5f84db9548446/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/gsl/2.6-9011a41928244b609ca4c22c439b3fef/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/libuuid/2.34-5ba7a8abfc0c5fecdc448cca360c25ff/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/xerces-c/3.1.3-ab719034dc2061fa61b09353203a0c2d/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/xz/5.6.4-b9c4ffbc390ed320a5d57fd552e29a05/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/zlib/1.2.13-589f6bb51bbeba38a7adf5a10ea8a093/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/eigen/3bb6a48d8c171cf20b5f8e48bfb4e424fbd4f79e-95c02b8a883b2934decb8bb53ff9b486/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/eigen/3bb6a48d8c171cf20b5f8e48bfb4e424fbd4f79e-95c02b8a883b2934decb8bb53ff9b486/include/eigen3",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/fmt/10.2.1-31d67b0504b4ba2262f03d3c5cad83c1/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/json/3.11.3-3bf93f232c63d55abe3d04e52aa0a168/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/md5/1.0.0-26057075013e190e56dad37d35219376/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/OpenBLAS/0.3.27-da4a3c2bb8ae43f3913a4a44acdb1b50/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/tinyxml2/6.2.0-67924ead96ecb4e69aad321b767979a5/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/lcg/root/6.32.13-2ba92f62034c9fcccda180513e8d0814/include/",
"/afs/cern.ch/user/l/ldamenti/CMSSW_16_0_0_pre1/",
nullptr
    };
    static const char* fwdDeclCode = R"DICTFWDDCLS(
#line 1 "ACTSinCMSSWGeometryDataFormat_xr dictionary forward declarations' payload"
#pragma clang diagnostic ignored "-Wkeyword-compat"
#pragma clang diagnostic ignored "-Wignored-attributes"
#pragma clang diagnostic ignored "-Wreturn-type-c-linkage"
extern int __Cling_AutoLoading_Map;
namespace Acts{class __attribute__((annotate("$clingAutoload$ACTSinCMSSW/GeometryDataFormat/interface/CMSDetectorElement.h")))  CMSDetectorElement;}
namespace std{template <typename _Tp> class __attribute__((annotate("$clingAutoload$bits/allocator.h")))  __attribute__((annotate("$clingAutoload$string")))  allocator;
}
)DICTFWDDCLS";
    static const char* payloadCode = R"DICTPAYLOAD(
#line 1 "ACTSinCMSSWGeometryDataFormat_xr dictionary payload"

#ifndef CMS_DICT_IMPL
  #define CMS_DICT_IMPL 1
#endif
#ifndef _REENTRANT
  #define _REENTRANT 1
#endif
#ifndef GNUSOURCE
  #define GNUSOURCE 1
#endif
#ifndef __STRICT_ANSI__
  #define __STRICT_ANSI__ 1
#endif
#ifndef CMS_MICRO_ARCH
  #define CMS_MICRO_ARCH "x86-64-v3"
#endif
#ifndef GNU_GCC
  #define GNU_GCC 1
#endif
#ifndef _GNU_SOURCE
  #define _GNU_SOURCE 1
#endif
#ifndef TBB_USE_GLIBCXX_VERSION
  #define TBB_USE_GLIBCXX_VERSION 130400
#endif
#ifndef TBB_SUPPRESS_DEPRECATED_MESSAGES
  #define TBB_SUPPRESS_DEPRECATED_MESSAGES 1
#endif
#ifndef TBB_PREVIEW_RESUMABLE_TASKS
  #define TBB_PREVIEW_RESUMABLE_TASKS 1
#endif
#ifndef TBB_PREVIEW_TASK_GROUP_EXTENSIONS
  #define TBB_PREVIEW_TASK_GROUP_EXTENSIONS 1
#endif
#ifndef BOOST_SPIRIT_THREADSAFE
  #define BOOST_SPIRIT_THREADSAFE 1
#endif
#ifndef PHOENIX_THREADSAFE
  #define PHOENIX_THREADSAFE 1
#endif
#ifndef BOOST_MATH_DISABLE_STD_FPCLASSIFY
  #define BOOST_MATH_DISABLE_STD_FPCLASSIFY 1
#endif
#ifndef BOOST_UUID_RANDOM_PROVIDER_FORCE_POSIX
  #define BOOST_UUID_RANDOM_PROVIDER_FORCE_POSIX 1
#endif
#ifndef BOOST_MPL_IGNORE_PARENTHESES_WARNING
  #define BOOST_MPL_IGNORE_PARENTHESES_WARNING 1
#endif
#ifndef DD4HEP_USE_GEANT4_UNITS
  #define DD4HEP_USE_GEANT4_UNITS 1
#endif
#ifndef CMSSW_GIT_HASH
  #define CMSSW_GIT_HASH "CMSSW_16_0_0_pre1"
#endif
#ifndef PROJECT_NAME
  #define PROJECT_NAME "CMSSW"
#endif
#ifndef PROJECT_VERSION
  #define PROJECT_VERSION "CMSSW_16_0_0_pre1"
#endif
#ifndef CMSSW_REFLEX_DICT
  #define CMSSW_REFLEX_DICT 1
#endif

#define _BACKWARD_BACKWARD_WARNING_H
// Inline headers
#include "ACTSinCMSSW/GeometryDataFormat/interface/CMSDetectorElement.h"  
#include <vector>
#include <memory>
#include "DataFormats/Common/interface/Wrapper.h"
#include "Acts/Surfaces/Surface.hpp" 
#include "DataFormats/Common/interface/OwnVector.h"
#undef  _BACKWARD_BACKWARD_WARNING_H
)DICTPAYLOAD";
    static const char* classesHeaders[] = {
"Acts::CMSDetectorElement", payloadCode, "@",
"edm::Wrapper<std::vector<Acts::CMSDetectorElement> >", payloadCode, "@",
"edm::Wrapper<vector<Acts::CMSDetectorElement> >", payloadCode, "@",
nullptr
};
    static bool isInitialized = false;
    if (!isInitialized) {
      TROOT::RegisterModule("ACTSinCMSSWGeometryDataFormat_xr",
        headers, includePaths, payloadCode, fwdDeclCode,
        TriggerDictionaryInitialization_ACTSinCMSSWGeometryDataFormat_xr_Impl, {}, classesHeaders, /*hasCxxModule*/false);
      isInitialized = true;
    }
  }
  static struct DictInit {
    DictInit() {
      TriggerDictionaryInitialization_ACTSinCMSSWGeometryDataFormat_xr_Impl();
    }
  } __TheDictionaryInitializer;
}
void TriggerDictionaryInitialization_ACTSinCMSSWGeometryDataFormat_xr() {
  TriggerDictionaryInitialization_ACTSinCMSSWGeometryDataFormat_xr_Impl();
}
