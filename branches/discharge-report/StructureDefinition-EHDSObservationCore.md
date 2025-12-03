# Observation model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation model**

## Logical Model: Observation model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservationCore | *Version*:0.2.1 |
| Draft as of 2025-12-03 | *Computable Name*:EHDSObservationCore |

 
EHDS refined base model for Observation information 

**Usages:**

* Derived from this Logical Model: [Observation model](StructureDefinition-EHDSObservation.md)
* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReportCore.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSObservationCore)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSObservationCore.csv), [Excel](StructureDefinition-EHDSObservationCore.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSObservationCore",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservationCore",
  "version" : "0.2.1",
  "name" : "EHDSObservationCore",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservationCore",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSObservationCore",
        "path" : "EHDSObservationCore",
        "short" : "Observation model",
        "definition" : "EHDS refined base model for Observation information"
      },
      {
        "id" : "EHDSObservationCore.observationDate[x]",
        "path" : "EHDSObservationCore.observationDate[x]",
        "short" : "Clinically relevant time or time period for the observation",
        "definition" : "Clinically relevant time or time period for the observation",
        "min" : 1,
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
        "id" : "EHDSObservationCore.code",
        "path" : "EHDSObservationCore.code",
        "short" : "Observation code",
        "definition" : "Code representing the observation using the agreed code systems.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "LOINC, NPU, SNOMED CT"
        }
      },
      {
        "id" : "EHDSObservationCore.resultDescription",
        "path" : "EHDSObservationCore.resultDescription",
        "short" : "Comments and narrative representation of the observation result and findings.",
        "definition" : "Comments and narrative representation of the observation result and findings.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSObservationCore.result",
        "path" : "EHDSObservationCore.result",
        "short" : "Result of the observation including text, numeric and coded results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation.",
        "definition" : "Result of the observation including text, numeric and coded results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSObservationCore.result.value[x]",
        "path" : "EHDSObservationCore.result.value[x]",
        "short" : "Observation result value according to the type of observation",
        "definition" : "Observation result value according to the type of observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          },
          {
            "code" : "Quantity"
          },
          {
            "code" : "Range"
          },
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM for units, SNOMED CT for coded results"
        }
      },
      {
        "id" : "EHDSObservationCore.anatomicLocation",
        "path" : "EHDSObservationCore.anatomicLocation",
        "short" : "Anatomic location and laterality where the observation was performed.",
        "definition" : "Anatomic location and laterality where the observation was performed.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSBodyStructure"
          }
        ]
      },
      {
        "id" : "EHDSObservationCore.specimen",
        "path" : "EHDSObservationCore.specimen",
        "short" : "Specimen information",
        "definition" : "Specimen information",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSpecimenCore"
          }
        ]
      },
      {
        "id" : "EHDSObservationCore.method",
        "path" : "EHDSObservationCore.method",
        "short" : "Observation method",
        "definition" : "Observation method (measurement principle) to obtain the result.",
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
        "id" : "EHDSObservationCore.performer[x]",
        "path" : "EHDSObservationCore.performer[x]",
        "short" : "Performer of the observation. Some test could be performed by the patient himself or by a care giver. Those are in the scope of this deliverable under specified conditions.",
        "definition" : "Performer of the observation. Some test could be performed by the patient himself or by a care giver. Those are in the scope of this deliverable under specified conditions.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSRelatedPerson"
          }
        ]
      },
      {
        "id" : "EHDSObservationCore.referenceRange",
        "path" : "EHDSObservationCore.referenceRange",
        "short" : "Reference range, multiple reference ranges of different types culd by provided. Provides guide for interpretation of result.",
        "definition" : "Reference range, multiple reference ranges of different types culd by provided. Provides guide for interpretation of result.",
        "comment" : "Reference ranges are usually implied only for a numeric scale type. Use of the same units for reference range and value is implied.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSObservationCore.interpretation",
        "path" : "EHDSObservationCore.interpretation",
        "short" : "Information about reference intervals and result interpretation.",
        "definition" : "Information about reference intervals and result interpretation.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT, HL7 ObservationInterpretation"
        }
      },
      {
        "id" : "EHDSObservationCore.component",
        "path" : "EHDSObservationCore.component",
        "short" : "Component in case the observation consists of multiple sub-observations (e.g. blood pressure).",
        "definition" : "Component in case the observation consists of multiple sub-observations (e.g. blood pressure).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSObservationCore.component.code",
        "path" : "EHDSObservationCore.component.code",
        "short" : "Code representing the observation using the agreed code systems.",
        "definition" : "Code representing the observation using the agreed code systems.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "LOINC, NPU, SNOMED CT"
        }
      },
      {
        "id" : "EHDSObservationCore.component.result",
        "path" : "EHDSObservationCore.component.result",
        "short" : "Result of the observation including text, numeric and coded results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation.",
        "definition" : "Result of the observation including text, numeric and coded results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSObservationCore.component.result.value[x]",
        "path" : "EHDSObservationCore.component.result.value[x]",
        "short" : "Observation result value according to the type of observation",
        "definition" : "Observation result value according to the type of observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          },
          {
            "code" : "Quantity"
          },
          {
            "code" : "Range"
          },
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSObservationCore.component.result.uncertainty",
        "path" : "EHDSObservationCore.component.result.uncertainty",
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
        "id" : "EHDSObservationCore.component.referenceRange",
        "path" : "EHDSObservationCore.component.referenceRange",
        "short" : "Reference range, multiple reference ranges of different types culd by provided. Provides guide for interpretation of result.",
        "definition" : "Reference range, multiple reference ranges of different types culd by provided. Provides guide for interpretation of result.",
        "comment" : "Reference ranges are usually implied only for a numeric scale type. Use of the same units for reference range and value is implied.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSObservationCore.component.interpretation",
        "path" : "EHDSObservationCore.component.interpretation",
        "short" : "Information about reference intervals and result interpretation.",
        "definition" : "Information about reference intervals and result interpretation.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT, HL7 ObservationInterpretation"
        }
      }
    ]
  }
}

```
