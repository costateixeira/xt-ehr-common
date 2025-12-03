# Functional status - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Functional status**

## Logical Model: Functional status 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSFunctionalStatusCore | *Version*:0.2.1 |
| Draft as of 2025-12-03 | *Computable Name*:EHDSFunctionalStatusCore |

 
EHDS refined base model for Functional status 

**Usages:**

* Derived from this Logical Model: [Functional status](StructureDefinition-EHDSFunctionalStatus.md)
* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReportCore.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSFunctionalStatusCore)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSFunctionalStatusCore.csv), [Excel](StructureDefinition-EHDSFunctionalStatusCore.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSFunctionalStatusCore",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSFunctionalStatusCore",
  "version" : "0.2.1",
  "name" : "EHDSFunctionalStatusCore",
  "title" : "Functional status",
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
  "description" : "EHDS refined base model for Functional status",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSFunctionalStatusCore",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSFunctionalStatusCore",
        "path" : "EHDSFunctionalStatusCore",
        "short" : "Functional status",
        "definition" : "EHDS refined base model for Functional status"
      },
      {
        "id" : "EHDSFunctionalStatusCore.description",
        "path" : "EHDSFunctionalStatusCore.description",
        "short" : "Narrative description of the functional status",
        "definition" : "Narrative description of the need for the patient to be continuously assessed by third parties; functional status may influence decisions about how to plan and administer treatments.",
        "requirements" : "eHN HDR Guideline, MyHealth@EU, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSFunctionalStatusCore.functionalStatusAssessment",
        "path" : "EHDSFunctionalStatusCore.functionalStatusAssessment",
        "short" : "Functional assessment of the patient",
        "definition" : "Functional status assessment of the patient according to a specific assessment scheme.",
        "requirements" : "eHN HDR Guideline, ISO IPS",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSFunctionalStatusCore.functionalStatusAssessment.functionalAssessmentCode",
        "path" : "EHDSFunctionalStatusCore.functionalStatusAssessment.functionalAssessmentCode",
        "short" : "Standardized code corresponding to the Functional assessment",
        "definition" : "Standardized code corresponding to the Functional assessment",
        "requirements" : "eHN HDR Guideline, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ICF, SNOMED CT"
        }
      },
      {
        "id" : "EHDSFunctionalStatusCore.functionalStatusAssessment.onsetDate",
        "path" : "EHDSFunctionalStatusCore.functionalStatusAssessment.onsetDate",
        "short" : "Onset date of a condition",
        "definition" : "Onset date of a condition",
        "requirements" : "eHN HDR Guideline, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSFunctionalStatusCore.functionalStatusAssessment.functionalAssessmentDateTime",
        "path" : "EHDSFunctionalStatusCore.functionalStatusAssessment.functionalAssessmentDateTime",
        "short" : "Date and time of the functional assessment",
        "definition" : "Date and time of the functional assessment",
        "requirements" : "eHN HDR Guideline, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSFunctionalStatusCore.functionalStatusAssessment.functionalAssessmentResult[x]",
        "path" : "EHDSFunctionalStatusCore.functionalStatusAssessment.functionalAssessmentResult[x]",
        "short" : "Functional assessment result value",
        "definition" : "Functional assessment result value",
        "requirements" : "eHN HDR Guideline, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          },
          {
            "code" : "Quantity"
          },
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ICF, SNOMED CT"
        }
      }
    ]
  }
}

```
