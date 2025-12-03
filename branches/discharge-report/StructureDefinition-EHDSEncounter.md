# Encounter model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Encounter model**

## Logical Model: Encounter model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEncounter | *Version*:0.2.1 |
| Draft as of 2025-12-03 | *Computable Name*:EHDSEncounter |

 
EHDS refined base model for Encounter 

**Usages:**

* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReportCore.md), [Encounter model](StructureDefinition-EHDSEncounter.md), [Imaging study model](StructureDefinition-EHDSImagingStudy.md) and [Service request model](StructureDefinition-EHDSServiceRequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSEncounter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSEncounter.csv), [Excel](StructureDefinition-EHDSEncounter.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSEncounter",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEncounter",
  "version" : "0.2.1",
  "name" : "EHDSEncounter",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEncounter",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEncounterCore",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSEncounter",
        "path" : "EHDSEncounter"
      },
      {
        "id" : "EHDSEncounter.episodeOfCare",
        "path" : "EHDSEncounter.episodeOfCare",
        "short" : "Reference to the episode(s) of care that this encounter should be recorded against",
        "definition" : "Reference to the episode(s) of care that this encounter should be recorded against",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEpisodeOfCare"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.basedOn[x]",
        "path" : "EHDSEncounter.basedOn[x]",
        "short" : "Reference to the request that initiated this encounter",
        "definition" : "Reference to the request that initiated this encounter",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCarePlan"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSServiceRequest"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.partOf",
        "path" : "EHDSEncounter.partOf",
        "short" : "Reference to another encounter this encounter is part of",
        "definition" : "Reference to another encounter this encounter is part of",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEncounter"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.serviceProvider",
        "path" : "EHDSEncounter.serviceProvider",
        "short" : "The organisation (facility) responsible for this encounter",
        "definition" : "The organisation (facility) responsible for this encounter",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.plannedStartDate",
        "path" : "EHDSEncounter.plannedStartDate",
        "short" : "The planned start date/time (or admission date) of the encounter",
        "definition" : "The planned start date/time (or admission date) of the encounter",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.plannedEndDate",
        "path" : "EHDSEncounter.plannedEndDate",
        "short" : "The planned end date/time (or discharge date) of the encounter",
        "definition" : "The planned end date/time (or discharge date) of the encounter",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      }
    ]
  }
}

```
