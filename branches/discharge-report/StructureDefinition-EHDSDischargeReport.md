# Discharge Report model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Discharge Report model**

## Logical Model: Discharge Report model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDischargeReport | *Version*:0.2.1 |
| Draft as of 2025-12-03 | *Computable Name*:EHDSDischargeReport |

 
EHDS refined base model for Discharge Report 

Feedback is welcome on any aspect of the content.

However, the following topics have been identified as areas where input would be particularly valuable:

* **Pharmacotherapy section.** Is the section's purpose clear and the section useful in its current definition? Are the current implementations using the same approach, or is the section's content conveyed in the Medication Summary section? 
 
* **Diagnostic Summary section.** Is the section together with EHDSCondition model sufficient for capturing details related to a hospital encounter diagnostics? 
* **Medication Summary section.** In some jurisdictions, any handover of a medication to the patient at the time of discharge is marked in the report. Is the model capturing the information expected for this use case, or would it be captured better using EHDSMedicationDispense model. </div> 


**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSDischargeReport)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSDischargeReport.csv), [Excel](StructureDefinition-EHDSDischargeReport.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSDischargeReport",
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
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDischargeReport",
  "version" : "0.2.1",
  "name" : "EHDSDischargeReport",
  "title" : "Discharge Report model",
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
  "description" : "EHDS refined base model for Discharge Report",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDischargeReport",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDischargeReportCore",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSDischargeReport",
        "path" : "EHDSDischargeReport"
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.diagnosticSummary.problemDetails.problem",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.diagnosticSummary.problemDetails.problem",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCondition"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.diagnosticSummary.problemDetails.presentOnAdmission",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.diagnosticSummary.problemDetails.presentOnAdmission",
        "short" : "Whether the condition was present on admission or acquired during encounter",
        "definition" : "Category of the problem allows flagging for conditions acquired during encounter.",
        "comment" : "Value set can include Present on admission [POA], Hospital acquired condition [HAC], Not applicable or Unknown",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.medicalDevicesAndImplants.medicalDevicesAndImplants",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.medicalDevicesAndImplants.medicalDevicesAndImplants",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDeviceUse"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.pharmacotherapy.pharmacotherapy",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.pharmacotherapy.pharmacotherapy",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationStatement"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.courseOfEncounter.significantObservationResults.significantObservationResult[x]",
        "path" : "EHDSDischargeReport.body.courseOfEncounter.significantObservationResults.significantObservationResult[x]",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLaboratoryObservation"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.objectiveFindings.anthropometricObservations",
        "path" : "EHDSDischargeReport.body.dischargeDetails.objectiveFindings.anthropometricObservations",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.objectiveFindings.vitalSigns",
        "path" : "EHDSDischargeReport.body.dischargeDetails.objectiveFindings.vitalSigns",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.objectiveFindings.physicalExamination",
        "path" : "EHDSDischargeReport.body.dischargeDetails.objectiveFindings.physicalExamination",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.functionalStatus.functionalStatusAssessment",
        "path" : "EHDSDischargeReport.body.dischargeDetails.functionalStatus.functionalStatusAssessment",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSFunctionalStatus"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.dischargeDetails.medicationSummary.entry.medicationUse",
        "path" : "EHDSDischargeReport.body.dischargeDetails.medicationSummary.entry.medicationUse",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationStatement"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.admissionEvaluation.objectiveFindings",
        "path" : "EHDSDischargeReport.body.admissionEvaluation.objectiveFindings",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.4.1"
      },
      {
        "id" : "EHDSDischargeReport.body.admissionEvaluation.objectiveFindings.narrative",
        "path" : "EHDSDischargeReport.body.admissionEvaluation.objectiveFindings.narrative",
        "short" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative sub-section elements should be provided.",
        "definition" : "Narrative content of the section. This narrative shell containing either summary narrative description of all subsections, or similar narrative sub-section elements should be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.admissionEvaluation.objectiveFindings.time",
        "path" : "EHDSDischargeReport.body.admissionEvaluation.objectiveFindings.time",
        "short" : "Date and time of the admission evaluation examination",
        "definition" : "Date and time of the admission evaluation examination",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.4.1.1",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.admissionEvaluation.objectiveFindings.performer",
        "path" : "EHDSDischargeReport.body.admissionEvaluation.objectiveFindings.performer",
        "short" : "Health professional(s) responsible for the admission evaluation examination.",
        "definition" : "Health professional(s) responsible for the admission evaluation examination.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.admissionEvaluation.functionalStatus",
        "path" : "EHDSDischargeReport.body.admissionEvaluation.functionalStatus",
        "short" : "Section: Functional status",
        "definition" : "Functional status can be assessed in several different ways, usually with a focus on the person's abilities to perform basic activities of daily living (ADL), which include basic self-care such as bathing, feeding, and toileting and instrumental activities of daily living (IADL), which includes activities such as cooking, shopping, and managing one's own affairs.For details see: https://paciowg.github.io/functional-status-ig/",
        "requirements" : "eHN Guideline HDR (v1.1): A.2.4.2",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.admissionEvaluation.functionalStatus.narrative",
        "path" : "EHDSDischargeReport.body.admissionEvaluation.functionalStatus.narrative",
        "short" : "Narrative, potentially formatted, content of the section",
        "definition" : "Narrative, potentially formatted, content of the section",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.admissionEvaluation.functionalStatus.functionalStatusAssessment",
        "path" : "EHDSDischargeReport.body.admissionEvaluation.functionalStatus.functionalStatusAssessment",
        "short" : "An individual's ability to perform normal daily activities required to meet basic needs, fulfil usual roles and maintain health and well-being",
        "definition" : "An individual's ability to perform normal daily activities required to meet basic needs, fulfil usual roles and maintain health and well-being",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSFunctionalStatus"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.medicalHistory.pregnancyHistory",
        "path" : "EHDSDischargeReport.body.patientHistory.medicalHistory.pregnancyHistory",
        "short" : "Section: Pregnancy history",
        "definition" : "To present the current health state of the patient with respect to pregnancy and to provide chronological and outcome information about past pregnancies. ",
        "requirements" : "eHN Guideline PS (v3.4) A2.6, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.medicalHistory.pregnancyHistory.currentPregnancyStatus",
        "path" : "EHDSDischargeReport.body.patientHistory.medicalHistory.pregnancyHistory.currentPregnancyStatus",
        "short" : "Current pregnancy status",
        "definition" : "Current state of the pregnancy at the date the observation was made, e.g. pregnant, not pregnant, unknown.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCurrentPregnancy"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.medicalHistory.pregnancyHistory.previousPregnanciesStatus",
        "path" : "EHDSDischargeReport.body.patientHistory.medicalHistory.pregnancyHistory.previousPregnanciesStatus",
        "short" : "Overall status of previous pregnancies",
        "definition" : "Overall status of previous pregnancies, including\n  — Yes, previous pregnancies\n  — No, previous pregnancies\n  — Unknown",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSDischargeReport.body.patientHistory.medicalHistory.pregnancyHistory.previousPregnancies",
        "path" : "EHDSDischargeReport.body.patientHistory.medicalHistory.pregnancyHistory.previousPregnancies",
        "short" : "History of previous pregnancies",
        "definition" : "Information about previous pregnancies, including outcomes and number of children/fetuses in each pregnancy.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPregnancyHistory"
          }
        ]
      }
    ]
  }
}

```
