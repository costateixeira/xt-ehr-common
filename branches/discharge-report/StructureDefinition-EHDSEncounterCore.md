# Encounter model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Encounter model**

## Logical Model: Encounter model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEncounterCore | *Version*:0.2.1 |
| Draft as of 2025-12-03 | *Computable Name*:EHDSEncounterCore |

 
EHDS refined base model for Encounter 

**Usages:**

* Derived from this Logical Model: [Encounter model](StructureDefinition-EHDSEncounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSEncounterCore)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSEncounterCore.csv), [Excel](StructureDefinition-EHDSEncounterCore.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSEncounterCore",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEncounterCore",
  "version" : "0.2.1",
  "name" : "EHDSEncounterCore",
  "title" : "Encounter model",
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
  "description" : "EHDS refined base model for Encounter",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEncounterCore",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSEncounterCore",
        "path" : "EHDSEncounterCore",
        "short" : "Encounter model",
        "definition" : "EHDS refined base model for Encounter"
      },
      {
        "id" : "EHDSEncounterCore.priority",
        "path" : "EHDSEncounterCore.priority",
        "short" : "Priority",
        "definition" : "Indicates the urgency of the encounter.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "hl7:v3-xEncounterAdmissionUrgency"
        }
      },
      {
        "id" : "EHDSEncounterCore.actualPeriod",
        "path" : "EHDSEncounterCore.actualPeriod",
        "short" : "The actual start and end time of the encounter",
        "definition" : "The actual start and end time of the encounter",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSEncounterCore.admission",
        "path" : "EHDSEncounterCore.admission",
        "short" : "Details about the admission to a healthcare service",
        "definition" : "Details about the admission to a healthcare service",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSEncounterCore.admission.reason[x]",
        "path" : "EHDSEncounterCore.admission.reason[x]",
        "short" : "Reason(s) for admission, e.g. problem, procedure or finding.",
        "definition" : "Reason(s) for admission, e.g. problem, procedure or finding.",
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
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSEncounterCore.admission.reasonComment",
        "path" : "EHDSEncounterCore.admission.reasonComment",
        "short" : "Explanation of the reason for the encounter.",
        "definition" : "Explanation of the reason for the encounter.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSEncounterCore.admission.admitter",
        "path" : "EHDSEncounterCore.admission.admitter",
        "short" : "Admitting healthcare professional",
        "definition" : "Admitting healthcare professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          }
        ]
      },
      {
        "id" : "EHDSEncounterCore.admission.admittingOrganization",
        "path" : "EHDSEncounterCore.admission.admittingOrganization",
        "short" : "Admitting healthcare professional",
        "definition" : "Admitting healthcare professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          }
        ]
      },
      {
        "id" : "EHDSEncounterCore.admission.admitSourceType",
        "path" : "EHDSEncounterCore.admission.admitSourceType",
        "short" : "From where the patient was admitted (e.g. physician referral, transfer).",
        "definition" : "From where the patient was admitted (e.g. physician referral, transfer).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "hl7:admit-source"
        }
      },
      {
        "id" : "EHDSEncounterCore.admission.admitSource",
        "path" : "EHDSEncounterCore.admission.admitSource",
        "short" : "From where the patient was admitted (e.g. physician referral, transfer).",
        "definition" : "From where the patient was admitted (e.g. physician referral, transfer).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "hl7:admit-source"
        }
      },
      {
        "id" : "EHDSEncounterCore.admission.referringProfessional",
        "path" : "EHDSEncounterCore.admission.referringProfessional",
        "short" : "Referring Healthcare Professional",
        "definition" : "Referring Healthcare Professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          }
        ]
      },
      {
        "id" : "EHDSEncounterCore.admission.legalStatus",
        "path" : "EHDSEncounterCore.admission.legalStatus",
        "short" : "Legal status/situation at admission (indicates the basis on which the patient is staying in a healthcare organisation).",
        "definition" : "Legal status can be either voluntary or involuntary, however the legal status is always determined by a court. A patient can also receive healthcare based on a forensic status. (voluntary, involuntary, admission by legal authority).",
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
        "id" : "EHDSEncounterCore.discharge",
        "path" : "EHDSEncounterCore.discharge",
        "short" : "Discharge details",
        "definition" : "Discharge details",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSEncounterCore.discharge.destinationType",
        "path" : "EHDSEncounterCore.discharge.destinationType",
        "short" : "Type of location to which the patient will go after the encounter. E.g. home, hospital, nursing home, left against medical advice etc.",
        "definition" : "Type of location to which the patient will go after the encounter. E.g. home, hospital, nursing home, left against medical advice etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "hl7.discharge-disposition"
        }
      },
      {
        "id" : "EHDSEncounterCore.discharge.destinationLocation[x]",
        "path" : "EHDSEncounterCore.discharge.destinationLocation[x]",
        "short" : "The location/organisation to which the patient will go after the encounter. Name, address and telecommunication contact.",
        "definition" : "The location/organisation to which the patient will go after the encounter. Name, address and telecommunication contact.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLocation"
          }
        ]
      },
      {
        "id" : "EHDSEncounterCore.location",
        "path" : "EHDSEncounterCore.location",
        "short" : "List of locations where the patient has been.",
        "definition" : "List of locations where the patient has been.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSEncounterCore.location.period",
        "path" : "EHDSEncounterCore.location.period",
        "short" : "Time period during which the patient was present at the location",
        "definition" : "Time period during which the patient was present at the location",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSEncounterCore.location.organisationPart[x]",
        "path" : "EHDSEncounterCore.location.organisationPart[x]",
        "short" : "Organisation or organisation part (department) where the patient was present.",
        "definition" : "Organisation or organisation part (department) where the patient was present.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLocation"
          }
        ]
      },
      {
        "id" : "EHDSEncounterCore.type",
        "path" : "EHDSEncounterCore.type",
        "short" : "Encounter type",
        "definition" : "The type of the encounter whether inpatient or short stay encounter.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "hl7v3:ActEncounterCode"
        }
      },
      {
        "id" : "EHDSEncounterCore.note",
        "path" : "EHDSEncounterCore.note",
        "short" : "A narrative description of the encounter course.",
        "definition" : "A narrative description of the encounter course.",
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
