// Do NOT change. Changes will be lost next time file is generated

#define R__DICTIONARY_FILENAME tmpdIel9_amd64_gcc13dIsrcdIAlignmentdIOfflineValidationdIsrcdIAlignmentOfflineValidationdIlcgdictdIAlignmentOfflineValidation_xr
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
#include "src/Alignment/OfflineValidation/src/classes.h"

// Header files passed via #pragma extra_include

// The generated code does not explicitly qualify STL entities
namespace std {} using namespace std;

namespace ROOT {
   static TClass *TkOffTreeVariables_Dictionary();
   static void TkOffTreeVariables_TClassManip(TClass*);
   static void *new_TkOffTreeVariables(void *p = nullptr);
   static void *newArray_TkOffTreeVariables(Long_t size, void *p);
   static void delete_TkOffTreeVariables(void *p);
   static void deleteArray_TkOffTreeVariables(void *p);
   static void destruct_TkOffTreeVariables(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::TkOffTreeVariables*)
   {
      ::TkOffTreeVariables *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::TkOffTreeVariables));
      static ::ROOT::TGenericClassInfo 
         instance("TkOffTreeVariables", "Alignment/OfflineValidation/interface/TkOffTreeVariables.h", 9,
                  typeid(::TkOffTreeVariables), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &TkOffTreeVariables_Dictionary, isa_proxy, 4,
                  sizeof(::TkOffTreeVariables) );
      instance.SetNew(&new_TkOffTreeVariables);
      instance.SetNewArray(&newArray_TkOffTreeVariables);
      instance.SetDelete(&delete_TkOffTreeVariables);
      instance.SetDeleteArray(&deleteArray_TkOffTreeVariables);
      instance.SetDestructor(&destruct_TkOffTreeVariables);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::TkOffTreeVariables*)
   {
      return GenerateInitInstanceLocal(static_cast<::TkOffTreeVariables*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::TkOffTreeVariables*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *TkOffTreeVariables_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal(static_cast<const ::TkOffTreeVariables*>(nullptr))->GetClass();
      TkOffTreeVariables_TClassManip(theClass);
   return theClass;
   }

   static void TkOffTreeVariables_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static void *new_pvCand(void *p = nullptr);
   static void *newArray_pvCand(Long_t size, void *p);
   static void delete_pvCand(void *p);
   static void deleteArray_pvCand(void *p);
   static void destruct_pvCand(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::pvCand*)
   {
      ::pvCand *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::pvCand >(nullptr);
      static ::ROOT::TGenericClassInfo 
         instance("pvCand", ::pvCand::Class_Version(), "Alignment/OfflineValidation/interface/pvTree.h", 9,
                  typeid(::pvCand), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::pvCand::Dictionary, isa_proxy, 4,
                  sizeof(::pvCand) );
      instance.SetNew(&new_pvCand);
      instance.SetNewArray(&newArray_pvCand);
      instance.SetDelete(&delete_pvCand);
      instance.SetDeleteArray(&deleteArray_pvCand);
      instance.SetDestructor(&destruct_pvCand);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::pvCand*)
   {
      return GenerateInitInstanceLocal(static_cast<::pvCand*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::pvCand*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

namespace ROOT {
   static void *new_pvEvent(void *p = nullptr);
   static void *newArray_pvEvent(Long_t size, void *p);
   static void delete_pvEvent(void *p);
   static void deleteArray_pvEvent(void *p);
   static void destruct_pvEvent(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::pvEvent*)
   {
      ::pvEvent *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::pvEvent >(nullptr);
      static ::ROOT::TGenericClassInfo 
         instance("pvEvent", ::pvEvent::Class_Version(), "Alignment/OfflineValidation/interface/pvTree.h", 54,
                  typeid(::pvEvent), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::pvEvent::Dictionary, isa_proxy, 4,
                  sizeof(::pvEvent) );
      instance.SetNew(&new_pvEvent);
      instance.SetNewArray(&newArray_pvEvent);
      instance.SetDelete(&delete_pvEvent);
      instance.SetDeleteArray(&deleteArray_pvEvent);
      instance.SetDestructor(&destruct_pvEvent);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::pvEvent*)
   {
      return GenerateInitInstanceLocal(static_cast<::pvEvent*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::pvEvent*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

namespace ROOT {
   static TClass *EopVariables_Dictionary();
   static void EopVariables_TClassManip(TClass*);
   static void *new_EopVariables(void *p = nullptr);
   static void *newArray_EopVariables(Long_t size, void *p);
   static void delete_EopVariables(void *p);
   static void deleteArray_EopVariables(void *p);
   static void destruct_EopVariables(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::EopVariables*)
   {
      ::EopVariables *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::EopVariables));
      static ::ROOT::TGenericClassInfo 
         instance("EopVariables", "Alignment/OfflineValidation/interface/EopVariables.h", 8,
                  typeid(::EopVariables), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &EopVariables_Dictionary, isa_proxy, 4,
                  sizeof(::EopVariables) );
      instance.SetNew(&new_EopVariables);
      instance.SetNewArray(&newArray_EopVariables);
      instance.SetDelete(&delete_EopVariables);
      instance.SetDeleteArray(&deleteArray_EopVariables);
      instance.SetDestructor(&destruct_EopVariables);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::EopVariables*)
   {
      return GenerateInitInstanceLocal(static_cast<::EopVariables*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::EopVariables*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *EopVariables_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal(static_cast<const ::EopVariables*>(nullptr))->GetClass();
      EopVariables_TClassManip(theClass);
   return theClass;
   }

   static void EopVariables_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *EopElecVariables_Dictionary();
   static void EopElecVariables_TClassManip(TClass*);
   static void *new_EopElecVariables(void *p = nullptr);
   static void *newArray_EopElecVariables(Long_t size, void *p);
   static void delete_EopElecVariables(void *p);
   static void deleteArray_EopElecVariables(void *p);
   static void destruct_EopElecVariables(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::EopElecVariables*)
   {
      ::EopElecVariables *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::EopElecVariables));
      static ::ROOT::TGenericClassInfo 
         instance("EopElecVariables", "Alignment/OfflineValidation/interface/EopElecVariables.h", 8,
                  typeid(::EopElecVariables), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &EopElecVariables_Dictionary, isa_proxy, 4,
                  sizeof(::EopElecVariables) );
      instance.SetNew(&new_EopElecVariables);
      instance.SetNewArray(&newArray_EopElecVariables);
      instance.SetDelete(&delete_EopElecVariables);
      instance.SetDeleteArray(&deleteArray_EopElecVariables);
      instance.SetDestructor(&destruct_EopElecVariables);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::EopElecVariables*)
   {
      return GenerateInitInstanceLocal(static_cast<::EopElecVariables*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::EopElecVariables*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *EopElecVariables_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal(static_cast<const ::EopElecVariables*>(nullptr))->GetClass();
      EopElecVariables_TClassManip(theClass);
   return theClass;
   }

   static void EopElecVariables_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *unrolledHisto_Dictionary();
   static void unrolledHisto_TClassManip(TClass*);
   static void *new_unrolledHisto(void *p = nullptr);
   static void *newArray_unrolledHisto(Long_t size, void *p);
   static void delete_unrolledHisto(void *p);
   static void deleteArray_unrolledHisto(void *p);
   static void destruct_unrolledHisto(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::unrolledHisto*)
   {
      ::unrolledHisto *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::unrolledHisto));
      static ::ROOT::TGenericClassInfo 
         instance("unrolledHisto", "Alignment/OfflineValidation/interface/OutPVtrends.h", 48,
                  typeid(::unrolledHisto), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &unrolledHisto_Dictionary, isa_proxy, 4,
                  sizeof(::unrolledHisto) );
      instance.SetNew(&new_unrolledHisto);
      instance.SetNewArray(&newArray_unrolledHisto);
      instance.SetDelete(&delete_unrolledHisto);
      instance.SetDeleteArray(&deleteArray_unrolledHisto);
      instance.SetDestructor(&destruct_unrolledHisto);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::unrolledHisto*)
   {
      return GenerateInitInstanceLocal(static_cast<::unrolledHisto*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::unrolledHisto*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *unrolledHisto_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal(static_cast<const ::unrolledHisto*>(nullptr))->GetClass();
      unrolledHisto_TClassManip(theClass);
   return theClass;
   }

   static void unrolledHisto_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *outPVtrends_Dictionary();
   static void outPVtrends_TClassManip(TClass*);
   static void *new_outPVtrends(void *p = nullptr);
   static void *newArray_outPVtrends(Long_t size, void *p);
   static void delete_outPVtrends(void *p);
   static void deleteArray_outPVtrends(void *p);
   static void destruct_outPVtrends(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::outPVtrends*)
   {
      ::outPVtrends *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::outPVtrends));
      static ::ROOT::TGenericClassInfo 
         instance("outPVtrends", "Alignment/OfflineValidation/interface/OutPVtrends.h", 88,
                  typeid(::outPVtrends), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &outPVtrends_Dictionary, isa_proxy, 4,
                  sizeof(::outPVtrends) );
      instance.SetNew(&new_outPVtrends);
      instance.SetNewArray(&newArray_outPVtrends);
      instance.SetDelete(&delete_outPVtrends);
      instance.SetDeleteArray(&deleteArray_outPVtrends);
      instance.SetDestructor(&destruct_outPVtrends);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::outPVtrends*)
   {
      return GenerateInitInstanceLocal(static_cast<::outPVtrends*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::outPVtrends*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *outPVtrends_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal(static_cast<const ::outPVtrends*>(nullptr))->GetClass();
      outPVtrends_TClassManip(theClass);
   return theClass;
   }

   static void outPVtrends_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *SmartSelectionMonitor_Dictionary();
   static void SmartSelectionMonitor_TClassManip(TClass*);
   static void *new_SmartSelectionMonitor(void *p = nullptr);
   static void *newArray_SmartSelectionMonitor(Long_t size, void *p);
   static void delete_SmartSelectionMonitor(void *p);
   static void deleteArray_SmartSelectionMonitor(void *p);
   static void destruct_SmartSelectionMonitor(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::SmartSelectionMonitor*)
   {
      ::SmartSelectionMonitor *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::SmartSelectionMonitor));
      static ::ROOT::TGenericClassInfo 
         instance("SmartSelectionMonitor", "Alignment/OfflineValidation/interface/SmartSelectionMonitor.h", 20,
                  typeid(::SmartSelectionMonitor), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &SmartSelectionMonitor_Dictionary, isa_proxy, 4,
                  sizeof(::SmartSelectionMonitor) );
      instance.SetNew(&new_SmartSelectionMonitor);
      instance.SetNewArray(&newArray_SmartSelectionMonitor);
      instance.SetDelete(&delete_SmartSelectionMonitor);
      instance.SetDeleteArray(&deleteArray_SmartSelectionMonitor);
      instance.SetDestructor(&destruct_SmartSelectionMonitor);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::SmartSelectionMonitor*)
   {
      return GenerateInitInstanceLocal(static_cast<::SmartSelectionMonitor*>(nullptr));
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const ::SmartSelectionMonitor*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *SmartSelectionMonitor_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal(static_cast<const ::SmartSelectionMonitor*>(nullptr))->GetClass();
      SmartSelectionMonitor_TClassManip(theClass);
   return theClass;
   }

   static void SmartSelectionMonitor_TClassManip(TClass* ){
   }

} // end of namespace ROOT

//______________________________________________________________________________
atomic_TClass_ptr pvCand::fgIsA(nullptr);  // static to hold class pointer

//______________________________________________________________________________
const char *pvCand::Class_Name()
{
   return "pvCand";
}

//______________________________________________________________________________
const char *pvCand::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::pvCand*)nullptr)->GetImplFileName();
}

//______________________________________________________________________________
int pvCand::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::pvCand*)nullptr)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *pvCand::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::pvCand*)nullptr)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *pvCand::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::pvCand*)nullptr)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
atomic_TClass_ptr pvEvent::fgIsA(nullptr);  // static to hold class pointer

//______________________________________________________________________________
const char *pvEvent::Class_Name()
{
   return "pvEvent";
}

//______________________________________________________________________________
const char *pvEvent::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::pvEvent*)nullptr)->GetImplFileName();
}

//______________________________________________________________________________
int pvEvent::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::pvEvent*)nullptr)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *pvEvent::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::pvEvent*)nullptr)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *pvEvent::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::pvEvent*)nullptr)->GetClass(); }
   return fgIsA;
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_TkOffTreeVariables(void *p) {
      return  p ? new(p) ::TkOffTreeVariables : new ::TkOffTreeVariables;
   }
   static void *newArray_TkOffTreeVariables(Long_t nElements, void *p) {
      return p ? new(p) ::TkOffTreeVariables[nElements] : new ::TkOffTreeVariables[nElements];
   }
   // Wrapper around operator delete
   static void delete_TkOffTreeVariables(void *p) {
      delete (static_cast<::TkOffTreeVariables*>(p));
   }
   static void deleteArray_TkOffTreeVariables(void *p) {
      delete [] (static_cast<::TkOffTreeVariables*>(p));
   }
   static void destruct_TkOffTreeVariables(void *p) {
      typedef ::TkOffTreeVariables current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::TkOffTreeVariables

//______________________________________________________________________________
void pvCand::Streamer(TBuffer &R__b)
{
   // Stream an object of class pvCand.

   if (R__b.IsReading()) {
      R__b.ReadClassBuffer(pvCand::Class(),this);
   } else {
      R__b.WriteClassBuffer(pvCand::Class(),this);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_pvCand(void *p) {
      return  p ? new(p) ::pvCand : new ::pvCand;
   }
   static void *newArray_pvCand(Long_t nElements, void *p) {
      return p ? new(p) ::pvCand[nElements] : new ::pvCand[nElements];
   }
   // Wrapper around operator delete
   static void delete_pvCand(void *p) {
      delete (static_cast<::pvCand*>(p));
   }
   static void deleteArray_pvCand(void *p) {
      delete [] (static_cast<::pvCand*>(p));
   }
   static void destruct_pvCand(void *p) {
      typedef ::pvCand current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::pvCand

//______________________________________________________________________________
void pvEvent::Streamer(TBuffer &R__b)
{
   // Stream an object of class pvEvent.

   if (R__b.IsReading()) {
      R__b.ReadClassBuffer(pvEvent::Class(),this);
   } else {
      R__b.WriteClassBuffer(pvEvent::Class(),this);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_pvEvent(void *p) {
      return  p ? new(p) ::pvEvent : new ::pvEvent;
   }
   static void *newArray_pvEvent(Long_t nElements, void *p) {
      return p ? new(p) ::pvEvent[nElements] : new ::pvEvent[nElements];
   }
   // Wrapper around operator delete
   static void delete_pvEvent(void *p) {
      delete (static_cast<::pvEvent*>(p));
   }
   static void deleteArray_pvEvent(void *p) {
      delete [] (static_cast<::pvEvent*>(p));
   }
   static void destruct_pvEvent(void *p) {
      typedef ::pvEvent current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::pvEvent

namespace ROOT {
   // Wrappers around operator new
   static void *new_EopVariables(void *p) {
      return  p ? new(p) ::EopVariables : new ::EopVariables;
   }
   static void *newArray_EopVariables(Long_t nElements, void *p) {
      return p ? new(p) ::EopVariables[nElements] : new ::EopVariables[nElements];
   }
   // Wrapper around operator delete
   static void delete_EopVariables(void *p) {
      delete (static_cast<::EopVariables*>(p));
   }
   static void deleteArray_EopVariables(void *p) {
      delete [] (static_cast<::EopVariables*>(p));
   }
   static void destruct_EopVariables(void *p) {
      typedef ::EopVariables current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::EopVariables

namespace ROOT {
   // Wrappers around operator new
   static void *new_EopElecVariables(void *p) {
      return  p ? new(p) ::EopElecVariables : new ::EopElecVariables;
   }
   static void *newArray_EopElecVariables(Long_t nElements, void *p) {
      return p ? new(p) ::EopElecVariables[nElements] : new ::EopElecVariables[nElements];
   }
   // Wrapper around operator delete
   static void delete_EopElecVariables(void *p) {
      delete (static_cast<::EopElecVariables*>(p));
   }
   static void deleteArray_EopElecVariables(void *p) {
      delete [] (static_cast<::EopElecVariables*>(p));
   }
   static void destruct_EopElecVariables(void *p) {
      typedef ::EopElecVariables current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::EopElecVariables

namespace ROOT {
   // Wrappers around operator new
   static void *new_unrolledHisto(void *p) {
      return  p ? new(p) ::unrolledHisto : new ::unrolledHisto;
   }
   static void *newArray_unrolledHisto(Long_t nElements, void *p) {
      return p ? new(p) ::unrolledHisto[nElements] : new ::unrolledHisto[nElements];
   }
   // Wrapper around operator delete
   static void delete_unrolledHisto(void *p) {
      delete (static_cast<::unrolledHisto*>(p));
   }
   static void deleteArray_unrolledHisto(void *p) {
      delete [] (static_cast<::unrolledHisto*>(p));
   }
   static void destruct_unrolledHisto(void *p) {
      typedef ::unrolledHisto current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::unrolledHisto

namespace ROOT {
   // Wrappers around operator new
   static void *new_outPVtrends(void *p) {
      return  p ? new(p) ::outPVtrends : new ::outPVtrends;
   }
   static void *newArray_outPVtrends(Long_t nElements, void *p) {
      return p ? new(p) ::outPVtrends[nElements] : new ::outPVtrends[nElements];
   }
   // Wrapper around operator delete
   static void delete_outPVtrends(void *p) {
      delete (static_cast<::outPVtrends*>(p));
   }
   static void deleteArray_outPVtrends(void *p) {
      delete [] (static_cast<::outPVtrends*>(p));
   }
   static void destruct_outPVtrends(void *p) {
      typedef ::outPVtrends current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::outPVtrends

namespace ROOT {
   // Wrappers around operator new
   static void *new_SmartSelectionMonitor(void *p) {
      return  p ? new(p) ::SmartSelectionMonitor : new ::SmartSelectionMonitor;
   }
   static void *newArray_SmartSelectionMonitor(Long_t nElements, void *p) {
      return p ? new(p) ::SmartSelectionMonitor[nElements] : new ::SmartSelectionMonitor[nElements];
   }
   // Wrapper around operator delete
   static void delete_SmartSelectionMonitor(void *p) {
      delete (static_cast<::SmartSelectionMonitor*>(p));
   }
   static void deleteArray_SmartSelectionMonitor(void *p) {
      delete [] (static_cast<::SmartSelectionMonitor*>(p));
   }
   static void destruct_SmartSelectionMonitor(void *p) {
      typedef ::SmartSelectionMonitor current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class ::SmartSelectionMonitor

namespace ROOT {
   static TClass *vectorlEunrolledHistogR_Dictionary();
   static void vectorlEunrolledHistogR_TClassManip(TClass*);
   static void *new_vectorlEunrolledHistogR(void *p = nullptr);
   static void *newArray_vectorlEunrolledHistogR(Long_t size, void *p);
   static void delete_vectorlEunrolledHistogR(void *p);
   static void deleteArray_vectorlEunrolledHistogR(void *p);
   static void destruct_vectorlEunrolledHistogR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const vector<unrolledHisto>*)
   {
      vector<unrolledHisto> *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(vector<unrolledHisto>));
      static ::ROOT::TGenericClassInfo 
         instance("vector<unrolledHisto>", -2, "vector", 428,
                  typeid(vector<unrolledHisto>), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &vectorlEunrolledHistogR_Dictionary, isa_proxy, 4,
                  sizeof(vector<unrolledHisto>) );
      instance.SetNew(&new_vectorlEunrolledHistogR);
      instance.SetNewArray(&newArray_vectorlEunrolledHistogR);
      instance.SetDelete(&delete_vectorlEunrolledHistogR);
      instance.SetDeleteArray(&deleteArray_vectorlEunrolledHistogR);
      instance.SetDestructor(&destruct_vectorlEunrolledHistogR);
      instance.AdoptCollectionProxyInfo(TCollectionProxyInfo::Generate(TCollectionProxyInfo::Pushback< vector<unrolledHisto> >()));

      instance.AdoptAlternate(::ROOT::AddClassAlternate("vector<unrolledHisto>","std::vector<unrolledHisto, std::allocator<unrolledHisto> >"));
      return &instance;
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const vector<unrolledHisto>*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *vectorlEunrolledHistogR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal(static_cast<const vector<unrolledHisto>*>(nullptr))->GetClass();
      vectorlEunrolledHistogR_TClassManip(theClass);
   return theClass;
   }

   static void vectorlEunrolledHistogR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   // Wrappers around operator new
   static void *new_vectorlEunrolledHistogR(void *p) {
      return  p ? ::new(static_cast<::ROOT::Internal::TOperatorNewHelper*>(p)) vector<unrolledHisto> : new vector<unrolledHisto>;
   }
   static void *newArray_vectorlEunrolledHistogR(Long_t nElements, void *p) {
      return p ? ::new(static_cast<::ROOT::Internal::TOperatorNewHelper*>(p)) vector<unrolledHisto>[nElements] : new vector<unrolledHisto>[nElements];
   }
   // Wrapper around operator delete
   static void delete_vectorlEunrolledHistogR(void *p) {
      delete (static_cast<vector<unrolledHisto>*>(p));
   }
   static void deleteArray_vectorlEunrolledHistogR(void *p) {
      delete [] (static_cast<vector<unrolledHisto>*>(p));
   }
   static void destruct_vectorlEunrolledHistogR(void *p) {
      typedef vector<unrolledHisto> current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class vector<unrolledHisto>

namespace ROOT {
   static TClass *vectorlEdoublegR_Dictionary();
   static void vectorlEdoublegR_TClassManip(TClass*);
   static void *new_vectorlEdoublegR(void *p = nullptr);
   static void *newArray_vectorlEdoublegR(Long_t size, void *p);
   static void delete_vectorlEdoublegR(void *p);
   static void deleteArray_vectorlEdoublegR(void *p);
   static void destruct_vectorlEdoublegR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const vector<double>*)
   {
      vector<double> *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(vector<double>));
      static ::ROOT::TGenericClassInfo 
         instance("vector<double>", -2, "vector", 428,
                  typeid(vector<double>), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &vectorlEdoublegR_Dictionary, isa_proxy, 4,
                  sizeof(vector<double>) );
      instance.SetNew(&new_vectorlEdoublegR);
      instance.SetNewArray(&newArray_vectorlEdoublegR);
      instance.SetDelete(&delete_vectorlEdoublegR);
      instance.SetDeleteArray(&deleteArray_vectorlEdoublegR);
      instance.SetDestructor(&destruct_vectorlEdoublegR);
      instance.AdoptCollectionProxyInfo(TCollectionProxyInfo::Generate(TCollectionProxyInfo::Pushback< vector<double> >()));

      instance.AdoptAlternate(::ROOT::AddClassAlternate("vector<double>","std::vector<double, std::allocator<double> >"));
      return &instance;
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const vector<double>*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *vectorlEdoublegR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal(static_cast<const vector<double>*>(nullptr))->GetClass();
      vectorlEdoublegR_TClassManip(theClass);
   return theClass;
   }

   static void vectorlEdoublegR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   // Wrappers around operator new
   static void *new_vectorlEdoublegR(void *p) {
      return  p ? ::new(static_cast<::ROOT::Internal::TOperatorNewHelper*>(p)) vector<double> : new vector<double>;
   }
   static void *newArray_vectorlEdoublegR(Long_t nElements, void *p) {
      return p ? ::new(static_cast<::ROOT::Internal::TOperatorNewHelper*>(p)) vector<double>[nElements] : new vector<double>[nElements];
   }
   // Wrapper around operator delete
   static void delete_vectorlEdoublegR(void *p) {
      delete (static_cast<vector<double>*>(p));
   }
   static void deleteArray_vectorlEdoublegR(void *p) {
      delete [] (static_cast<vector<double>*>(p));
   }
   static void destruct_vectorlEdoublegR(void *p) {
      typedef vector<double> current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class vector<double>

namespace ROOT {
   static TClass *maplETStringcOvectorlEunrolledHistogRsPgR_Dictionary();
   static void maplETStringcOvectorlEunrolledHistogRsPgR_TClassManip(TClass*);
   static void *new_maplETStringcOvectorlEunrolledHistogRsPgR(void *p = nullptr);
   static void *newArray_maplETStringcOvectorlEunrolledHistogRsPgR(Long_t size, void *p);
   static void delete_maplETStringcOvectorlEunrolledHistogRsPgR(void *p);
   static void deleteArray_maplETStringcOvectorlEunrolledHistogRsPgR(void *p);
   static void destruct_maplETStringcOvectorlEunrolledHistogRsPgR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const map<TString,vector<unrolledHisto> >*)
   {
      map<TString,vector<unrolledHisto> > *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(map<TString,vector<unrolledHisto> >));
      static ::ROOT::TGenericClassInfo 
         instance("map<TString,vector<unrolledHisto> >", -2, "map", 102,
                  typeid(map<TString,vector<unrolledHisto> >), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &maplETStringcOvectorlEunrolledHistogRsPgR_Dictionary, isa_proxy, 4,
                  sizeof(map<TString,vector<unrolledHisto> >) );
      instance.SetNew(&new_maplETStringcOvectorlEunrolledHistogRsPgR);
      instance.SetNewArray(&newArray_maplETStringcOvectorlEunrolledHistogRsPgR);
      instance.SetDelete(&delete_maplETStringcOvectorlEunrolledHistogRsPgR);
      instance.SetDeleteArray(&deleteArray_maplETStringcOvectorlEunrolledHistogRsPgR);
      instance.SetDestructor(&destruct_maplETStringcOvectorlEunrolledHistogRsPgR);
      instance.AdoptCollectionProxyInfo(TCollectionProxyInfo::Generate(TCollectionProxyInfo::MapInsert< map<TString,vector<unrolledHisto> > >()));

      instance.AdoptAlternate(::ROOT::AddClassAlternate("map<TString,vector<unrolledHisto> >","std::map<TString, std::vector<unrolledHisto, std::allocator<unrolledHisto> >, std::less<TString>, std::allocator<std::pair<TString const, std::vector<unrolledHisto, std::allocator<unrolledHisto> > > > >"));
      return &instance;
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const map<TString,vector<unrolledHisto> >*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *maplETStringcOvectorlEunrolledHistogRsPgR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal(static_cast<const map<TString,vector<unrolledHisto> >*>(nullptr))->GetClass();
      maplETStringcOvectorlEunrolledHistogRsPgR_TClassManip(theClass);
   return theClass;
   }

   static void maplETStringcOvectorlEunrolledHistogRsPgR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   // Wrappers around operator new
   static void *new_maplETStringcOvectorlEunrolledHistogRsPgR(void *p) {
      return  p ? ::new(static_cast<::ROOT::Internal::TOperatorNewHelper*>(p)) map<TString,vector<unrolledHisto> > : new map<TString,vector<unrolledHisto> >;
   }
   static void *newArray_maplETStringcOvectorlEunrolledHistogRsPgR(Long_t nElements, void *p) {
      return p ? ::new(static_cast<::ROOT::Internal::TOperatorNewHelper*>(p)) map<TString,vector<unrolledHisto> >[nElements] : new map<TString,vector<unrolledHisto> >[nElements];
   }
   // Wrapper around operator delete
   static void delete_maplETStringcOvectorlEunrolledHistogRsPgR(void *p) {
      delete (static_cast<map<TString,vector<unrolledHisto> >*>(p));
   }
   static void deleteArray_maplETStringcOvectorlEunrolledHistogRsPgR(void *p) {
      delete [] (static_cast<map<TString,vector<unrolledHisto> >*>(p));
   }
   static void destruct_maplETStringcOvectorlEunrolledHistogRsPgR(void *p) {
      typedef map<TString,vector<unrolledHisto> > current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class map<TString,vector<unrolledHisto> >

namespace ROOT {
   static TClass *maplETStringcOvectorlEdoublegRsPgR_Dictionary();
   static void maplETStringcOvectorlEdoublegRsPgR_TClassManip(TClass*);
   static void *new_maplETStringcOvectorlEdoublegRsPgR(void *p = nullptr);
   static void *newArray_maplETStringcOvectorlEdoublegRsPgR(Long_t size, void *p);
   static void delete_maplETStringcOvectorlEdoublegRsPgR(void *p);
   static void deleteArray_maplETStringcOvectorlEdoublegRsPgR(void *p);
   static void destruct_maplETStringcOvectorlEdoublegRsPgR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const map<TString,vector<double> >*)
   {
      map<TString,vector<double> > *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(map<TString,vector<double> >));
      static ::ROOT::TGenericClassInfo 
         instance("map<TString,vector<double> >", -2, "map", 102,
                  typeid(map<TString,vector<double> >), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &maplETStringcOvectorlEdoublegRsPgR_Dictionary, isa_proxy, 4,
                  sizeof(map<TString,vector<double> >) );
      instance.SetNew(&new_maplETStringcOvectorlEdoublegRsPgR);
      instance.SetNewArray(&newArray_maplETStringcOvectorlEdoublegRsPgR);
      instance.SetDelete(&delete_maplETStringcOvectorlEdoublegRsPgR);
      instance.SetDeleteArray(&deleteArray_maplETStringcOvectorlEdoublegRsPgR);
      instance.SetDestructor(&destruct_maplETStringcOvectorlEdoublegRsPgR);
      instance.AdoptCollectionProxyInfo(TCollectionProxyInfo::Generate(TCollectionProxyInfo::MapInsert< map<TString,vector<double> > >()));

      instance.AdoptAlternate(::ROOT::AddClassAlternate("map<TString,vector<double> >","std::map<TString, std::vector<double, std::allocator<double> >, std::less<TString>, std::allocator<std::pair<TString const, std::vector<double, std::allocator<double> > > > >"));
      return &instance;
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal(static_cast<const map<TString,vector<double> >*>(nullptr)); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *maplETStringcOvectorlEdoublegRsPgR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal(static_cast<const map<TString,vector<double> >*>(nullptr))->GetClass();
      maplETStringcOvectorlEdoublegRsPgR_TClassManip(theClass);
   return theClass;
   }

   static void maplETStringcOvectorlEdoublegRsPgR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   // Wrappers around operator new
   static void *new_maplETStringcOvectorlEdoublegRsPgR(void *p) {
      return  p ? ::new(static_cast<::ROOT::Internal::TOperatorNewHelper*>(p)) map<TString,vector<double> > : new map<TString,vector<double> >;
   }
   static void *newArray_maplETStringcOvectorlEdoublegRsPgR(Long_t nElements, void *p) {
      return p ? ::new(static_cast<::ROOT::Internal::TOperatorNewHelper*>(p)) map<TString,vector<double> >[nElements] : new map<TString,vector<double> >[nElements];
   }
   // Wrapper around operator delete
   static void delete_maplETStringcOvectorlEdoublegRsPgR(void *p) {
      delete (static_cast<map<TString,vector<double> >*>(p));
   }
   static void deleteArray_maplETStringcOvectorlEdoublegRsPgR(void *p) {
      delete [] (static_cast<map<TString,vector<double> >*>(p));
   }
   static void destruct_maplETStringcOvectorlEdoublegRsPgR(void *p) {
      typedef map<TString,vector<double> > current_t;
      (static_cast<current_t*>(p))->~current_t();
   }
} // end of namespace ROOT for class map<TString,vector<double> >

namespace {
  void TriggerDictionaryInitialization_AlignmentOfflineValidation_xr_Impl() {
    static const char* headers[] = {
"0",
nullptr
    };
    static const char* includePaths[] = {
"src",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/cms/cmssw/CMSSW_16_0_0_pre1/src",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/cms/coral/CORAL_2_3_21-4952c8423159a9640e2b07156736adb0/include/LCG",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/dd4hep/v01-29-00-8ffb3bfc3098e26170d91a62fe51da61/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/alpaka/1.3.0-43fa2127f12174181bfc88daffa87ab7/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/pcre/8.43-6d98fda3bfd074ebb583e2d6a2c75d25/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/bz2lib/1.0.6-d113e1c6278c07eeaff5f84db9548446/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/curl/7.79.0-f85273a965f53d4e6abeddf7ccaef037/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/gsl/2.6-9011a41928244b609ca4c22c439b3fef/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/libuuid/2.34-5ba7a8abfc0c5fecdc448cca360c25ff/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/cms/vdt/0.4.3-4d66eff8d20bf66b01a610a666daeceb/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/xerces-c/3.1.3-ab719034dc2061fa61b09353203a0c2d/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/xz/5.6.4-b9c4ffbc390ed320a5d57fd552e29a05/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/zlib/1.2.13-589f6bb51bbeba38a7adf5a10ea8a093/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/eigen/3bb6a48d8c171cf20b5f8e48bfb4e424fbd4f79e-95c02b8a883b2934decb8bb53ff9b486/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/eigen/3bb6a48d8c171cf20b5f8e48bfb4e424fbd4f79e-95c02b8a883b2934decb8bb53ff9b486/include/eigen3",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/fmt/10.2.1-31d67b0504b4ba2262f03d3c5cad83c1/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/md5/1.0.0-26057075013e190e56dad37d35219376/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/OpenBLAS/0.3.27-da4a3c2bb8ae43f3913a4a44acdb1b50/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/external/tinyxml2/6.2.0-67924ead96ecb4e69aad321b767979a5/include",
"/cvmfs/cms.cern.ch/el9_amd64_gcc13/lcg/root/6.32.13-2ba92f62034c9fcccda180513e8d0814/include/",
"/afs/cern.ch/user/l/ldamenti/CMSSW_16_0_0_pre1/",
nullptr
    };
    static const char* fwdDeclCode = R"DICTFWDDCLS(
#line 1 "AlignmentOfflineValidation_xr dictionary forward declarations' payload"
#pragma clang diagnostic ignored "-Wkeyword-compat"
#pragma clang diagnostic ignored "-Wignored-attributes"
#pragma clang diagnostic ignored "-Wreturn-type-c-linkage"
extern int __Cling_AutoLoading_Map;
struct __attribute__((annotate("$clingAutoload$Alignment/OfflineValidation/interface/TkOffTreeVariables.h")))  TkOffTreeVariables;
class __attribute__((annotate("$clingAutoload$TString.h")))  __attribute__((annotate("$clingAutoload$Alignment/OfflineValidation/interface/pvTree.h")))  TString;
namespace std{template <typename _Tp> class __attribute__((annotate("$clingAutoload$bits/allocator.h")))  __attribute__((annotate("$clingAutoload$string")))  allocator;
}
struct __attribute__((annotate("$clingAutoload$Alignment/OfflineValidation/interface/OutPVtrends.h")))  unrolledHisto;
class __attribute__((annotate("$clingAutoload$Alignment/OfflineValidation/interface/pvTree.h")))  pvCand;
class __attribute__((annotate("$clingAutoload$Alignment/OfflineValidation/interface/pvTree.h")))  pvEvent;
struct __attribute__((annotate("$clingAutoload$Alignment/OfflineValidation/interface/EopVariables.h")))  EopVariables;
struct __attribute__((annotate("$clingAutoload$Alignment/OfflineValidation/interface/EopElecVariables.h")))  EopElecVariables;
struct __attribute__((annotate("$clingAutoload$Alignment/OfflineValidation/interface/OutPVtrends.h")))  outPVtrends;
class __attribute__((annotate("$clingAutoload$Alignment/OfflineValidation/interface/SmartSelectionMonitor.h")))  SmartSelectionMonitor;
)DICTFWDDCLS";
    static const char* payloadCode = R"DICTPAYLOAD(
#line 1 "AlignmentOfflineValidation_xr dictionary payload"

#ifndef ALPAKA_DEFAULT_HOST_MEMORY_ALIGNMENT
  #define ALPAKA_DEFAULT_HOST_MEMORY_ALIGNMENT 128
#endif
#ifndef ALPAKA_DISABLE_VENDOR_RNG
  #define ALPAKA_DISABLE_VENDOR_RNG 1
#endif
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
#include "Alignment/OfflineValidation/interface/TkOffTreeVariables.h"
#include "Alignment/OfflineValidation/interface/pvTree.h"
#include "Alignment/OfflineValidation/interface/EopVariables.h"
#include "Alignment/OfflineValidation/interface/EopElecVariables.h"
#include "Alignment/OfflineValidation/interface/OutPVtrends.h"
#include "Alignment/OfflineValidation/interface/SmartSelectionMonitor.h"

#undef  _BACKWARD_BACKWARD_WARNING_H
)DICTPAYLOAD";
    static const char* classesHeaders[] = {
"EopElecVariables", payloadCode, "@",
"EopVariables", payloadCode, "@",
"SmartSelectionMonitor", payloadCode, "@",
"TkOffTreeVariables", payloadCode, "@",
"outPVtrends", payloadCode, "@",
"pvCand", payloadCode, "@",
"pvEvent", payloadCode, "@",
"unrolledHisto", payloadCode, "@",
nullptr
};
    static bool isInitialized = false;
    if (!isInitialized) {
      TROOT::RegisterModule("AlignmentOfflineValidation_xr",
        headers, includePaths, payloadCode, fwdDeclCode,
        TriggerDictionaryInitialization_AlignmentOfflineValidation_xr_Impl, {}, classesHeaders, /*hasCxxModule*/false);
      isInitialized = true;
    }
  }
  static struct DictInit {
    DictInit() {
      TriggerDictionaryInitialization_AlignmentOfflineValidation_xr_Impl();
    }
  } __TheDictionaryInitializer;
}
void TriggerDictionaryInitialization_AlignmentOfflineValidation_xr() {
  TriggerDictionaryInitialization_AlignmentOfflineValidation_xr_Impl();
}
