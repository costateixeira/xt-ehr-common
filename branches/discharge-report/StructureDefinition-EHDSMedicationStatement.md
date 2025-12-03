# Medication statement model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication statement model**

## Logical Model: Medication statement model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationStatement | *Version*:0.2.1 |
| Draft as of 2025-12-03 | *Computable Name*:EHDSMedicationStatement |

 
Statement about a single medication as part of a medication summary. 

Feedback is welcome on any aspect of the content.

However, the following topics have been identified as areas where input would be particularly valuable:

* **intendedUseType.**Is the element used as a category of purpose of use, or simply to signal whether a medication is used for therapeutic, diagnosis, prophylaxis, etc. </div>****

**Usages:**

* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReport.md) and [Patient summary model](StructureDefinition-EHDSPatientSummary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSMedicationStatement)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSMedicationStatement.csv), [Excel](StructureDefinition-EHDSMedicationStatement.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSMedicationStatement",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationStatement",
  "version" : "0.2.1",
  "name" : "EHDSMedicationStatement",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationStatement",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationStatementCore",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSMedicationStatement",
        "path" : "EHDSMedicationStatement"
      },
      {
        "id" : "EHDSMedicationStatement.medicationTreatmentStatus",
        "path" : "EHDSMedicationStatement.medicationTreatmentStatus",
        "short" : "The current status of the taking of medicine",
        "definition" : "The current status of the taking of medicine",
        "requirements" : "MyHealth@EU",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSMedicationStatement.medicationReasonText",
        "path" : "EHDSMedicationStatement.medicationReasonText",
        "short" : "Reason for the use of the medication (typically diagnosis, or a procedure) in free text.",
        "definition" : "Reason for the use of the medication (typically diagnosis, or a procedure) in free text.",
        "requirements" : "eHN PS Guideline, ISO IPS, MyHealth@EU",
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
