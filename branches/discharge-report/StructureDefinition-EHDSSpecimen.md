# Specimen model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Specimen model**

## Logical Model: Specimen model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSpecimen | *Version*:0.2.1 |
| Draft as of 2025-12-03 | *Computable Name*:EHDSSpecimen |

 
EHDS refined base model for A sample to be used for Analysis 

**Usages:**

* Use this Logical Model: [Imaging report model](StructureDefinition-EHDSImagingReport.md), [Imaging study model](StructureDefinition-EHDSImagingStudy.md), [Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md), [Media model](StructureDefinition-EHDSMedia.md) and [Service request model](StructureDefinition-EHDSServiceRequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSSpecimen)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSSpecimen.csv), [Excel](StructureDefinition-EHDSSpecimen.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSSpecimen",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSpecimen",
  "version" : "0.2.1",
  "name" : "EHDSSpecimen",
  "title" : "Specimen model",
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
  "description" : "EHDS refined base model for A sample to be used for Analysis",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSpecimen",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSpecimenCore",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSSpecimen",
        "path" : "EHDSSpecimen"
      },
      {
        "id" : "EHDSSpecimen.typeOfSpecies",
        "path" : "EHDSSpecimen.typeOfSpecies",
        "short" : "Biologic type of species for laboratory result reports bound to non-human subjects.",
        "definition" : "Biologic type of species for laboratory result reports bound to non-human subjects.",
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
        "id" : "EHDSSpecimen.material",
        "path" : "EHDSSpecimen.material",
        "short" : "Material that forms the specimen.",
        "definition" : "Material that forms the specimen.",
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
        "id" : "EHDSSpecimen.sourceDevice",
        "path" : "EHDSSpecimen.sourceDevice",
        "short" : "Source device in case the material is not collected directly from the patient but comes from a patient-related object, e.g. a catheter",
        "definition" : "Source device in case the material is not collected directly from the patient but comes from a patient-related object, e.g. a catheter",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT, EMDN"
        }
      },
      {
        "id" : "EHDSSpecimen.receivedDate",
        "path" : "EHDSSpecimen.receivedDate",
        "short" : "Date and time that the material is handed over at the laboratory or specimen collection centre.",
        "definition" : "Date and time that the material is handed over at the laboratory or specimen collection centre.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSSpecimen.subject[x]",
        "path" : "EHDSSpecimen.subject[x]",
        "short" : "Subject",
        "definition" : "Where the specimen came from. This may be from patient(s), from a location (e.g., the source of an environmental sample), or a sampling of a substance, a biologically-derived product, or a device.",
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
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSubstance"
          }
        ]
      },
      {
        "id" : "EHDSSpecimen.container",
        "path" : "EHDSSpecimen.container",
        "short" : "The container holding the specimen.",
        "definition" : "The container holding the specimen.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSSpecimen.container.specimenQuantity",
        "path" : "EHDSSpecimen.container.specimenQuantity",
        "short" : "Specimen quantity",
        "definition" : "Quantity of specimen within container.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSSpecimen.container.containerDevice",
        "path" : "EHDSSpecimen.container.containerDevice",
        "short" : "Container device",
        "definition" : "The device resource for the the container holding the specimen.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
          }
        ]
      }
    ]
  }
}

```
