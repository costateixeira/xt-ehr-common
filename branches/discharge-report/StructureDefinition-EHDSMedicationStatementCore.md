# Medication statement model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication statement model**

## Logical Model: Medication statement model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationStatementCore | *Version*:0.2.1 |
| Draft as of 2025-12-03 | *Computable Name*:EHDSMedicationStatementCore |

 
Statement about a single medication as part of a medication summary. 

**Usages:**

* Derived from this Logical Model: [Medication statement model](StructureDefinition-EHDSMedicationStatement.md)
* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReportCore.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSMedicationStatementCore)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSMedicationStatementCore.csv), [Excel](StructureDefinition-EHDSMedicationStatementCore.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSMedicationStatementCore",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationStatementCore",
  "version" : "0.2.1",
  "name" : "EHDSMedicationStatementCore",
  "title" : "Medication statement model",
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
  "description" : "Statement about a single medication as part of a medication summary.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationStatementCore",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSMedicationStatementCore",
        "path" : "EHDSMedicationStatementCore",
        "short" : "Medication statement model",
        "definition" : "Statement about a single medication as part of a medication summary."
      },
      {
        "id" : "EHDSMedicationStatementCore.medication",
        "path" : "EHDSMedicationStatementCore.medication",
        "short" : "Describes the medicinal product.",
        "definition" : "Describes the medicinal product.",
        "requirements" : "eHN PS Guideline, ISO IPS, MyHealth@EU",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedication"
          }
        ]
      },
      {
        "id" : "EHDSMedicationStatementCore.periodOfUse",
        "path" : "EHDSMedicationStatementCore.periodOfUse",
        "short" : "Period when patient took, is taking or is expected to take the medication",
        "definition" : "Period when patient took, is taking or is expected to take the medication. This information may be expressed using start and end date times OR indicating the duration. The first is used to indicate a specified interval (e.g., from March 15th, 2017); the latter for indicating a 'floating' period (e.g., 2 weeks). In case of unbounded period (continuous therapy), the end element will be valued with an exceptional value.",
        "requirements" : "eHN PS Guideline, ISO IPS, MyHealth@EU",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSMedicationStatementCore.medicationReason",
        "path" : "EHDSMedicationStatementCore.medicationReason",
        "short" : "Coded reason for the use of the medication (typically diagnosis, or a procedure)",
        "definition" : "Coded reason for the use of the medication (typically diagnosis, or a procedure)",
        "requirements" : "eHN PS Guideline, ISO IPS, MyHealth@EU",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSMedicationStatementCore.dosageInstructions",
        "path" : "EHDSMedicationStatementCore.dosageInstructions",
        "short" : "Details of how medication is/was taken or should be taken",
        "definition" : "Details of how medication is/was taken or should be taken. This includes the number of units per intake and frequency of intake over a specified duration of time. Example: 1 tablet every 24h, for 10 days .",
        "requirements" : "eHN PS Guideline, ISO IPS, MyHealth@EU",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDosaging"
          }
        ]
      },
      {
        "id" : "EHDSMedicationStatementCore.intendedUseType",
        "path" : "EHDSMedicationStatementCore.intendedUseType",
        "short" : "The type of intended use of the medication, e.g. prophylactic, therapeutic, diagnostic, anesthesia, etc.",
        "definition" : "The type of intended use of the medication, e.g. prophylactic, therapeutic, diagnostic, anesthesia, etc.",
        "requirements" : "eHN PS Guideline, MyHealth@EU",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
