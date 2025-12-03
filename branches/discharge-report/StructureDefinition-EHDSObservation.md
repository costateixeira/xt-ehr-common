# Observation model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation model**

## Logical Model: Observation model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation | *Version*:0.2.1 |
| Draft as of 2025-12-03 | *Computable Name*:EHDSObservation |

 
EHDS refined base model for Observation information 

**Usages:**

* Derived from this Logical Model: [Laboratory observation model](StructureDefinition-EHDSLaboratoryObservation.md)
* Use this Logical Model: [Device use model](StructureDefinition-EHDSDeviceUseCore.md), [Discharge Report model](StructureDefinition-EHDSDischargeReport.md), [Encounter model](StructureDefinition-EHDSEncounterCore.md), [Episode of care model](StructureDefinition-EHDSEpisodeOfCare.md)...Show 8 more,[Imaging report model](StructureDefinition-EHDSImagingReport.md),[Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md),[Medication administration model](StructureDefinition-EHDSMedicationAdministration.md),[Observation model](StructureDefinition-EHDSObservation.md),[Patient summary model](StructureDefinition-EHDSPatientSummary.md),[Procedure model](StructureDefinition-EHDSProcedureCore.md),[Service request model](StructureDefinition-EHDSServiceRequest.md)and[Social history model](StructureDefinition-EHDSSocialHistory.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSObservation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSObservation.csv), [Excel](StructureDefinition-EHDSObservation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSObservation",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation",
  "version" : "0.2.1",
  "name" : "EHDSObservation",
  "title" : "Observation model",
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
  "description" : "EHDS refined base model for Observation information",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservationCore",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSObservation",
        "path" : "EHDSObservation"
      },
      {
        "id" : "EHDSObservation.header.subject",
        "path" : "EHDSObservation.header.subject",
        "short" : "Patient who is receiving health care. This patient might be different from the direct subject of the observation."
      },
      {
        "id" : "EHDSObservation.header.status",
        "path" : "EHDSObservation.header.status",
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Observation status"
        }
      },
      {
        "id" : "EHDSObservation.header.directSubject[x]",
        "path" : "EHDSObservation.header.directSubject[x]",
        "short" : "The direct subject of the observation if different from the patient (subject of care), e.g. an observation of an implanted device",
        "definition" : "The direct subject of the observation if different from the patient (subject of care), e.g. an observation of an implanted device",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatientAnimal"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLocation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure"
          }
        ]
      },
      {
        "id" : "EHDSObservation.result.uncertainty",
        "path" : "EHDSObservation.result.uncertainty",
        "short" : "Measurement uncertainty type and interval if needed.",
        "definition" : "Measurement uncertainty type and interval if needed.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSObservation.component.dataAbsentReason",
        "path" : "EHDSObservation.component.dataAbsentReason",
        "short" : "Provides a reason why the expected value in the element Observation.value[x] is missing.",
        "definition" : "Provides a reason why the expected value in the element Observation.value[x] is missing.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Data absent reason"
        }
      },
      {
        "id" : "EHDSObservation.originalName",
        "path" : "EHDSObservation.originalName",
        "short" : "Original (conventional) name of the observation",
        "definition" : "Original (conventional) name of the observation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSObservation.order",
        "path" : "EHDSObservation.order",
        "short" : "Identifies order and order placer this observation belongs to",
        "definition" : "Identifies order and order placer this observation belongs to",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSServiceRequest"
          }
        ]
      },
      {
        "id" : "EHDSObservation.dataAbsentReason",
        "path" : "EHDSObservation.dataAbsentReason",
        "short" : "Provides a reason why the expected value in the element Observation.value[x] is missing.",
        "definition" : "Provides a reason why the expected value in the element Observation.value[x] is missing.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Data absent reason"
        }
      },
      {
        "id" : "EHDSObservation.derivedFrom[x]",
        "path" : "EHDSObservation.derivedFrom[x]",
        "short" : "Reference to the related resource from which the observation has been made. For example, a calculated anion gap or a fetal measurement based on an ultrasound image.",
        "definition" : "Reference to the related resource from which the observation has been made. For example, a calculated anion gap or a fetal measurement based on an ultrasound image.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLaboratoryObservation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSImagingStudy"
          }
        ]
      },
      {
        "id" : "EHDSObservation.triggeredBy[x]",
        "path" : "EHDSObservation.triggeredBy[x]",
        "short" : "References to the observation(s) that triggered the performance of this observation.",
        "definition" : "References to the observation(s) that triggered the performance of this observation.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLaboratoryObservation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSObservation.hasMember[x]",
        "path" : "EHDSObservation.hasMember[x]",
        "short" : "This observation is a group observation (e.g. a battery, a panel of tests, a set of vital sign measurements) that includes the target as a member of the group.",
        "definition" : "This observation is a group observation (e.g. a battery, a panel of tests, a set of vital sign measurements) that includes the target as a member of the group.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLaboratoryObservation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          }
        ]
      }
    ]
  }
}

```
