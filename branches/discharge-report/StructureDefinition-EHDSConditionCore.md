# Condition model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition model**

## Logical Model: Condition model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSConditionCore | *Version*:0.2.1 |
| Draft as of 2025-12-03 | *Computable Name*:EHDSConditionCore |

 
EHDS refined base model for a clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern. 

**Usages:**

* Derived from this Logical Model: [Condition model](StructureDefinition-EHDSCondition.md)
* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReportCore.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSConditionCore)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSConditionCore.csv), [Excel](StructureDefinition-EHDSConditionCore.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSConditionCore",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSConditionCore",
  "version" : "0.2.1",
  "name" : "EHDSConditionCore",
  "title" : "Condition model",
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
  "description" : "EHDS refined base model for a clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSConditionCore",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSConditionCore",
        "path" : "EHDSConditionCore",
        "short" : "Condition model",
        "definition" : "EHDS refined base model for a clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern."
      },
      {
        "id" : "EHDSConditionCore.problem",
        "path" : "EHDSConditionCore.problem",
        "short" : "Code identifying the condition, problem or diagnosis",
        "definition" : "Code identifying the condition, problem or diagnosis",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.1.2; PS (v3.4) A.2.2.2.1, A.2.3.1.1",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ICD-10, SNOMED CT, ICD-O, Orphacode if rare disease is diagnosed"
        }
      },
      {
        "id" : "EHDSConditionCore.onsetDate",
        "path" : "EHDSConditionCore.onsetDate",
        "short" : "Onset date of a problem/condition",
        "definition" : "Onset date of a problem/condition",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.1.3; PS (v3.4) A.2.2.2.2, A.2.3.1.2",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSConditionCore.endDate",
        "path" : "EHDSConditionCore.endDate",
        "short" : "The date or estimated date that the condition resolved or went into remission",
        "definition" : "The date or estimated date that the condition resolved or went into remission",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.1.4; PS (v3.4) A.2.2.2.3",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSConditionCore.category",
        "path" : "EHDSConditionCore.category",
        "short" : "Category or categories of the problem (e.g. POA - present on admission, HAC - hospital aquired condition, and other categorisations).",
        "definition" : "Category or categories of the problem (e.g. POA - present on admission, HAC - hospital aquired condition, and other categorisations).",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.1.5",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSConditionCore.problemStatus",
        "path" : "EHDSConditionCore.problemStatus",
        "short" : "Status of the condition/problem (active, resolved, inactive, ...)",
        "definition" : "Status of the condition/problem (active, resolved, inactive, ...)",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.1.7; PS (v3.4) A.2.2.2.1",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Condition Clinical Status Codes"
        }
      },
      {
        "id" : "EHDSConditionCore.resolutionCircumstances",
        "path" : "EHDSConditionCore.resolutionCircumstances",
        "short" : "Describes the reason for which the status of the problem changed from current to inactive (e.g. surgical procedure, medical treatment, etc.).",
        "definition" : "This field includes free text if the resolution circumstances are not already included in other fields such as surgical procedure, medical device, etc., e.g. hepatic cystectomy (this will be the resolution circumstances for the problem \"hepatic cyst\" and will be included in surgical procedures).",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.1.8; PS (v3.4) A.2.2.2.4",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSConditionCore.severity",
        "path" : "EHDSConditionCore.severity",
        "short" : "A subjective assessment of the severity of the condition as evaluated by the clinician.",
        "definition" : "A subjective assessment of the severity of the condition as evaluated by the clinician.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.1.9",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Condition/Diagnosis Severity; SNOMED CT"
        }
      },
      {
        "id" : "EHDSConditionCore.stage",
        "path" : "EHDSConditionCore.stage",
        "short" : "Stage/grade usually assessed formally using a specific staging/grading system. Multiple assessment systems could be used.",
        "definition" : "Stage/grade usually assessed formally using a specific staging/grading system. Multiple assessment systems could be used.",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.6.1.10",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "e.g. TNM, ICD-O-3, Bi-Rads, Li-Rads, …"
        }
      }
    ]
  }
}

```
