# Specimen model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Specimen model**

## Logical Model: Specimen model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSpecimenCore | *Version*:0.2.1 |
| Draft as of 2025-12-03 | *Computable Name*:EHDSSpecimenCore |

 
EHDS refined base model for A sample to be used for Analysis 

**Usages:**

* Derived from this Logical Model: [Specimen model](StructureDefinition-EHDSSpecimen.md)
* Use this Logical Model: [Observation model](StructureDefinition-EHDSObservationCore.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSSpecimenCore)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSSpecimenCore.csv), [Excel](StructureDefinition-EHDSSpecimenCore.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSSpecimenCore",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSpecimenCore",
  "version" : "0.2.1",
  "name" : "EHDSSpecimenCore",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSpecimenCore",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSSpecimenCore",
        "path" : "EHDSSpecimenCore",
        "short" : "Specimen model",
        "definition" : "EHDS refined base model for A sample to be used for Analysis"
      },
      {
        "id" : "EHDSSpecimenCore.identifier",
        "path" : "EHDSSpecimenCore.identifier",
        "short" : "An identifier of the specimen which is unique within in a defined scope.",
        "definition" : "An identifier of the specimen which is unique within in a defined scope. Example: identifier assigned by ordering system, identifier assigned by laboratory etc. Multiple identifiers can be used.",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSSpecimenCore.collectionPeriod",
        "path" : "EHDSSpecimenCore.collectionPeriod",
        "short" : "The period or date and time of specimen collection.",
        "definition" : "The period or date and time of specimen collection.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSSpecimenCore.bodySite",
        "path" : "EHDSSpecimenCore.bodySite",
        "short" : "Anatomic location (body location, laterality) where the material is collected, e.g. Elbow, left",
        "definition" : "Anatomic location (body location, laterality) where the material is collected, e.g. Elbow, left",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSBodyStructure"
          }
        ]
      },
      {
        "id" : "EHDSSpecimenCore.collectionProcedure",
        "path" : "EHDSSpecimenCore.collectionProcedure",
        "short" : "The procedure that collects the specimen.",
        "definition" : "The procedure that collects the specimen.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure"
          }
        ]
      },
      {
        "id" : "EHDSSpecimenCore.collectionProcedureMethod",
        "path" : "EHDSSpecimenCore.collectionProcedureMethod",
        "short" : "Collection procedure method",
        "definition" : "If relevant for the results, the method of obtaining the specimen.",
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
      }
    ]
  }
}

```
