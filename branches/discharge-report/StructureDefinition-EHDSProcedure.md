# Procedure model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Procedure model**

## Logical Model: Procedure model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure | *Version*:0.2.1 |
| Draft as of 2025-12-03 | *Computable Name*:EHDSProcedure |

 
EHDS refined base model for an action that is or was performed on or for a patient 

**Usages:**

* Use this Logical Model: [Device use model](StructureDefinition-EHDSDeviceUseCore.md), [Encounter model](StructureDefinition-EHDSEncounterCore.md), [Episode of care model](StructureDefinition-EHDSEpisodeOfCare.md), [Imaging report model](StructureDefinition-EHDSImagingReport.md)...Show 5 more,[Observation model](StructureDefinition-EHDSObservation.md),[Patient summary model](StructureDefinition-EHDSPatientSummary.md),[Procedure model](StructureDefinition-EHDSProcedureCore.md),[Service request model](StructureDefinition-EHDSServiceRequest.md)and[Specimen model](StructureDefinition-EHDSSpecimenCore.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSProcedure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSProcedure.csv), [Excel](StructureDefinition-EHDSProcedure.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSProcedure",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure",
  "version" : "0.2.1",
  "name" : "EHDSProcedure",
  "title" : "Procedure model",
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
  "description" : "EHDS refined base model for an action that is or was performed on or for a patient",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedureCore",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSProcedure",
        "path" : "EHDSProcedure"
      },
      {
        "id" : "EHDSProcedure.performer",
        "path" : "EHDSProcedure.performer",
        "short" : "An actor who performed the procedure",
        "definition" : "An actor who performed the procedure",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          }
        ]
      },
      {
        "id" : "EHDSProcedure.deviceUsed",
        "path" : "EHDSProcedure.deviceUsed",
        "short" : "Device used to perform the procedure",
        "definition" : "Device used to perform the procedure",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
          }
        ]
      },
      {
        "id" : "EHDSProcedure.note",
        "path" : "EHDSProcedure.note",
        "short" : "Additional information about the procedure",
        "definition" : "Additional information about the procedure",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
