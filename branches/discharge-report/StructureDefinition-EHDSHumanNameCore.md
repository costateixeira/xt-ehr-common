# Human name model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Human name model**

## Logical Model: Human name model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHumanNameCore | *Version*:0.2.1 |
| Draft as of 2025-12-03 | *Computable Name*:EHDSHumanNameCore |

 
EHDS refined base model for Human name 

**Usages:**

* Derived from this Logical Model: [Human name model](StructureDefinition-EHDSHumanName.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSHumanNameCore)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSHumanNameCore.csv), [Excel](StructureDefinition-EHDSHumanNameCore.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSHumanNameCore",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHumanNameCore",
  "version" : "0.2.1",
  "name" : "EHDSHumanNameCore",
  "title" : "Human name model",
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
  "description" : "EHDS refined base model for Human name",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHumanNameCore",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSHumanNameCore",
        "path" : "EHDSHumanNameCore",
        "short" : "Human name model",
        "definition" : "EHDS refined base model for Human name"
      },
      {
        "id" : "EHDSHumanNameCore.family",
        "path" : "EHDSHumanNameCore.family",
        "short" : "Family",
        "definition" : "The family name/surname/last name of the patient. This field can contain more than one  element or multiple fields could be present.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSHumanNameCore.given",
        "path" : "EHDSHumanNameCore.given",
        "short" : "Given",
        "definition" : "The given name/first name  (also known as forename or first name).",
        "min" : 0,
        "max" : "*",
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
