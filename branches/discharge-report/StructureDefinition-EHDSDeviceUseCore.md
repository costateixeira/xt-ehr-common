# Device use model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device use model**

## Logical Model: Device use model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDeviceUseCore | *Version*:0.2.1 |
| Draft as of 2025-12-03 | *Computable Name*:EHDSDeviceUseCore |

 
EHDS refined base model for device use information 

**Usages:**

* Derived from this Logical Model: [Device use model](StructureDefinition-EHDSDeviceUse.md)
* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReportCore.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSDeviceUseCore)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSDeviceUseCore.csv), [Excel](StructureDefinition-EHDSDeviceUseCore.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSDeviceUseCore",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDeviceUseCore",
  "version" : "0.2.1",
  "name" : "EHDSDeviceUseCore",
  "title" : "Device use model",
  "status" : "draft",
  "date" : "2025-12-03T08:02:24+00:00",
  "publisher" : "Xt-EHR",
  "contact" : [
    {
      "name" : "Xt-EHR",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://www.xt-ehr.eu/"
        }
      ]
    }
  ],
  "description" : "EHDS refined base model for device use information",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDeviceUseCore",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSDeviceUseCore",
        "path" : "EHDSDeviceUseCore",
        "short" : "Device use model",
        "definition" : "EHDS refined base model for device use information"
      },
      {
        "id" : "EHDSDeviceUseCore.startDate",
        "path" : "EHDSDeviceUseCore.startDate",
        "short" : "Date when the device was implantable to the patient or the external device was first in use.",
        "definition" : "Date when the device was implantable to the patient or the external device was first in use.",
        "requirements" : "eHN PS Guideline, ISO IPS.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSDeviceUseCore.endDate",
        "path" : "EHDSDeviceUseCore.endDate",
        "short" : "Date when the device was explanted from the patient or the external device was no longer in use.",
        "definition" : "Date when the device was explanted from the patient or the external device was no longer in use.",
        "requirements" : "eHN PS Guideline, ISO IPS.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSDeviceUseCore.device[x]",
        "path" : "EHDSDeviceUseCore.device[x]",
        "short" : "The details of the device used.",
        "definition" : "The details of the device used.",
        "requirements" : "eHN PS Guideline, ISO IPS.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
          }
        ]
      },
      {
        "id" : "EHDSDeviceUseCore.bodySite",
        "path" : "EHDSDeviceUseCore.bodySite",
        "short" : "Anatomical location of the device. May include laterality.",
        "definition" : "Anatomical location of the device. May include laterality.",
        "requirements" : "eHN PS Guideline, ISO IPS.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSBodyStructure"
          }
        ]
      },
      {
        "id" : "EHDSDeviceUseCore.reason[x]",
        "path" : "EHDSDeviceUseCore.reason[x]",
        "short" : "Reason or justification for the use of the device.",
        "definition" : "Reason or justification for the use of the device.",
        "requirements" : "eHN PS Guideline, ISO IPS.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCondition"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure"
          }
        ]
      }
    ]
  }
}

```
