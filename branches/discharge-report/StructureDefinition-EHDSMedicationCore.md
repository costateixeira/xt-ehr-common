# Medication model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication model**

## Logical Model: Medication model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationCore | *Version*:0.2.1 |
| Active as of 2025-12-03 | *Computable Name*:EHDSMedicationCore |

 
Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and treatment lines. Each of those may have different restrictions in FHIR profile. Model is suitable for generic/virtual medications as well as branded/real products. 

**Usages:**

* Derived from this Logical Model: [Medication model](StructureDefinition-EHDSMedication.md)
* Use this Logical Model: [Immunisation model](StructureDefinition-EHDSImmunisation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSMedicationCore)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSMedicationCore.csv), [Excel](StructureDefinition-EHDSMedicationCore.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSMedicationCore",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationCore",
  "version" : "0.2.1",
  "name" : "EHDSMedicationCore",
  "title" : "Medication model",
  "status" : "active",
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
  "description" : "Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and treatment lines. Each of those may have different restrictions in FHIR profile. Model is suitable for generic/virtual medications as well as branded/real products.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationCore",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSMedicationCore",
        "path" : "EHDSMedicationCore",
        "short" : "Medication model",
        "definition" : "Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and treatment lines. Each of those may have different restrictions in FHIR profile. Model is suitable for generic/virtual medications as well as branded/real products."
      },
      {
        "id" : "EHDSMedicationCore.identifyingCode[x]",
        "path" : "EHDSMedicationCore.identifyingCode[x]",
        "short" : "Identifier or code for the product (virtual product, branded product or package). If several identifiers are specified, they shall not have conflicting meanings or very different granularities.",
        "definition" : "Identifier or code for the product (virtual product, branded product or package). If several identifiers are specified, they shall not have conflicting meanings or very different granularities.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSMedicationCore.classification",
        "path" : "EHDSMedicationCore.classification",
        "short" : "Classification (e.g. ATC; narcotic/psychotropic; orphan drug; etc.)",
        "definition" : "Classification (e.g. ATC; narcotic/psychotropic; orphan drug; etc.)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "WHO ATC"
        }
      },
      {
        "id" : "EHDSMedicationCore.productName",
        "path" : "EHDSMedicationCore.productName",
        "short" : "Name of the product (full name, invented name, other). When the product has different names, the appropriate one for the context should be used. Translations of names can be provided.",
        "definition" : "Name of the product (full name, invented name, other). When the product has different names, the appropriate one for the context should be used. Translations of names can be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSMedicationCore.doseForm",
        "path" : "EHDSMedicationCore.doseForm",
        "short" : "Dose form(s) on a product level. Dose form for a single package item is defined below.",
        "definition" : "Dose form(s) on a product level. Dose form for a single package item is defined below.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "EDQM Standard Terms"
        }
      },
      {
        "id" : "EHDSMedicationCore.packSize",
        "path" : "EHDSMedicationCore.packSize",
        "short" : "Overall amount of product in one package (100ml; 20 tablets; 1 creme & 6 pessaries)",
        "definition" : "Overall amount of product in one package (100ml; 20 tablets; 1 creme & 6 pessaries)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM for units of measure. EDQM Standard Terms for units of presentation."
        }
      },
      {
        "id" : "EHDSMedicationCore.item",
        "path" : "EHDSMedicationCore.item",
        "short" : "A medication item. For combination packs, this can be manufactured items with each item having its own dose form and ingredients+strengths defined",
        "definition" : "A medication item. For combination packs, this can be manufactured items with each item having its own dose form and ingredients+strengths defined",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedicationCore.item.doseForm",
        "path" : "EHDSMedicationCore.item.doseForm",
        "short" : "Dose form",
        "definition" : "Dose form",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "EDQM Standard Terms"
        }
      },
      {
        "id" : "EHDSMedicationCore.item.ingredient",
        "path" : "EHDSMedicationCore.item.ingredient",
        "short" : "Ingredients",
        "definition" : "Ingredients",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedicationCore.item.ingredient.isActive",
        "path" : "EHDSMedicationCore.item.ingredient.isActive",
        "short" : "Marks if the ingredient is considered an active ingredient. Typically excipients are not needed, so by default active ingredients are expected.",
        "definition" : "Marks if the ingredient is considered an active ingredient. Typically excipients are not needed, so by default active ingredients are expected.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "EHDSMedicationCore.item.ingredient.substance",
        "path" : "EHDSMedicationCore.item.ingredient.substance",
        "short" : "Substance",
        "definition" : "Substance",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "EMA SPOR SMS"
        }
      },
      {
        "id" : "EHDSMedicationCore.item.ingredient.strengthInfo",
        "path" : "EHDSMedicationCore.item.ingredient.strengthInfo",
        "short" : "Strength of the product - amount of substance per unit",
        "definition" : "Strength of the product - amount of substance per unit",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedicationCore.item.ingredient.strengthInfo.strength",
        "path" : "EHDSMedicationCore.item.ingredient.strengthInfo.strength",
        "short" : "Concentration or presentation strength, e.g 100mg/1ml or 500mg per 1 tablet",
        "definition" : "Concentration or presentation strength, e.g 100mg/1ml or 500mg per 1 tablet",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Ratio"
          }
        ]
      },
      {
        "id" : "EHDSMedicationCore.item.ingredient.strengthInfo.basisOfStrengthSubstance",
        "path" : "EHDSMedicationCore.item.ingredient.strengthInfo.basisOfStrengthSubstance",
        "short" : "Substance that the strength refers to, in case it's different from the main substance",
        "definition" : "Substance that the strength refers to, in case it's different from the main substance",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "EMA SPOR SMS"
        }
      },
      {
        "id" : "EHDSMedicationCore.item.unitOfPresentation",
        "path" : "EHDSMedicationCore.item.unitOfPresentation",
        "short" : "Unit of presentation for the manufactured item (tablet, vial, tube). Typically, the smallest countable object in the package.",
        "definition" : "Unit of presentation for the manufactured item (tablet, vial, tube). Typically, the smallest countable object in the package.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "EDQM Standard Terms"
        }
      },
      {
        "id" : "EHDSMedicationCore.item.containedQuantity",
        "path" : "EHDSMedicationCore.item.containedQuantity",
        "short" : "Manufactured item quantity for liquids (3ml / 1 vial)",
        "definition" : "Manufactured item quantity for liquids (3ml / 1 vial)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Ratio"
          }
        ]
      },
      {
        "id" : "EHDSMedicationCore.item.amount",
        "path" : "EHDSMedicationCore.item.amount",
        "short" : "Number of such manufactured items in this product (5 vials)",
        "definition" : "Number of such manufactured items in this product (5 vials)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM for units of measure. EDQM Standard Terms for units of presentation."
        }
      },
      {
        "id" : "EHDSMedicationCore.characteristic",
        "path" : "EHDSMedicationCore.characteristic",
        "short" : "Other features of the product",
        "definition" : "Other features of the product",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedicationCore.characteristic.type",
        "path" : "EHDSMedicationCore.characteristic.type",
        "short" : "A code expressing the type of characteristic",
        "definition" : "A code expressing the type of characteristic",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSMedicationCore.characteristic.value[x]",
        "path" : "EHDSMedicationCore.characteristic.value[x]",
        "short" : "Description of the characteristic",
        "definition" : "Description of the characteristic",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          },
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "string"
          },
          {
            "code" : "Quantity"
          },
          {
            "code" : "dateTime"
          },
          {
            "code" : "integer"
          },
          {
            "code" : "decimal"
          },
          {
            "code" : "Ratio"
          }
        ]
      }
    ]
  }
}

```
