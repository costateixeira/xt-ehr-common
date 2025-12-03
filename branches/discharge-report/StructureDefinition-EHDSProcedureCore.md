# Procedure model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Procedure model**

## Logical Model: Procedure model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedureCore | *Version*:0.2.1 |
| Draft as of 2025-12-03 | *Computable Name*:EHDSProcedureCore |

 
EHDS refined base model for an action that is or was performed on or for a patient 

**Usages:**

* Derived from this Logical Model: [Procedure model](StructureDefinition-EHDSProcedure.md)
* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReportCore.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSProcedureCore)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSProcedureCore.csv), [Excel](StructureDefinition-EHDSProcedureCore.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSProcedureCore",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedureCore",
  "version" : "0.2.1",
  "name" : "EHDSProcedureCore",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedureCore",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSProcedureCore",
        "path" : "EHDSProcedureCore",
        "short" : "Procedure model",
        "definition" : "EHDS refined base model for an action that is or was performed on or for a patient"
      },
      {
        "id" : "EHDSProcedureCore.code",
        "path" : "EHDSProcedureCore.code",
        "short" : "Code identifying the procedure",
        "definition" : "Code identifying the procedure",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT"
        }
      },
      {
        "id" : "EHDSProcedureCore.date[x]",
        "path" : "EHDSProcedureCore.date[x]",
        "short" : "Date and time of the procedure or interval of its performance",
        "definition" : "Date and time of the procedure or interval of its performance",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          },
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSProcedureCore.description",
        "path" : "EHDSProcedureCore.description",
        "short" : "Description of the procedure",
        "definition" : "Description of the procedure",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSProcedureCore.focalDevice",
        "path" : "EHDSProcedureCore.focalDevice",
        "short" : "Device(s) that is/are implanted, removed, or otherwise manipulated (calibration, battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as a focal portion of the Procedure.",
        "definition" : "Device(s) that is/are implanted, removed, or otherwise manipulated (calibration, battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as a focal portion of the Procedure.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
          }
        ]
      },
      {
        "id" : "EHDSProcedureCore.bodySite",
        "path" : "EHDSProcedureCore.bodySite",
        "short" : "Procedure target body site. Details of where the procedure was performed. Laterality may be included as qualifier of the body site.",
        "definition" : "Procedure target body site. Details of where the procedure was performed. Laterality may be included as qualifier of the body site.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSBodyStructure"
          }
        ]
      },
      {
        "id" : "EHDSProcedureCore.outcome",
        "path" : "EHDSProcedureCore.outcome",
        "short" : "The outcome of the procedure - did it resolve the reasons for the procedure being performed?",
        "definition" : "The outcome of the procedure - did it resolve the reasons for the procedure being performed?",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT"
        }
      },
      {
        "id" : "EHDSProcedureCore.reason[x]",
        "path" : "EHDSProcedureCore.reason[x]",
        "short" : "The reason why the procedure was performed. This may be a concept from a terminology or a reference to a specific instance that describes the reason.",
        "definition" : "The reason why the procedure was performed. This may be a concept from a terminology or a reference to a specific instance that describes the reason.",
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
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT, ICD-10, Orphacode if rare disease is diagnosed"
        }
      },
      {
        "id" : "EHDSProcedureCore.complication",
        "path" : "EHDSProcedureCore.complication",
        "short" : "Any complications that occurred during the procedure, or in the immediate post-performance period. These are generally tracked separately from the procedure description, which will typically describe the procedure itself rather than any 'post procedure' issues.",
        "definition" : "Any complications that occurred during the procedure, or in the immediate post-performance period. These are generally tracked separately from the procedure description, which will typically describe the procedure itself rather than any 'post procedure' issues.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ICD-10, SNOMED CT, Orphacode if rare disease is diagnosed"
        }
      }
    ]
  }
}

```
