# Medication model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication model**

## Logical Model: Medication model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedication | *Version*:0.2.1 |
| Active as of 2025-12-03 | *Computable Name*:EHDSMedication |

 
Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and treatment lines. Each of those may have different restrictions in FHIR profile. Model is suitable for generic/virtual medications as well as branded/real products. 

**Usages:**

* Use this Logical Model: [Medication administration model](StructureDefinition-EHDSMedicationAdministration.md), [Medication dispense model](StructureDefinition-EHDSMedicationDispense.md), [Medication prescription model](StructureDefinition-EHDSMedicationPrescription.md), [Medication statement model](StructureDefinition-EHDSMedicationStatementCore.md) and [Service request model](StructureDefinition-EHDSServiceRequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSMedication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSMedication.csv), [Excel](StructureDefinition-EHDSMedication.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSMedication",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedication",
  "version" : "0.2.1",
  "name" : "EHDSMedication",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedication",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationCore",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSMedication",
        "path" : "EHDSMedication"
      },
      {
        "id" : "EHDSMedication.marketingAuthorisationHolder",
        "path" : "EHDSMedication.marketingAuthorisationHolder",
        "short" : "Marketing authorisation holder or manufacturer of the medicinal product. Relevant for identifying the exact product.",
        "definition" : "Marketing authorisation holder or manufacturer of the medicinal product. Relevant for identifying the exact product.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedication.marketingAuthorisationHolder.organisationName",
        "path" : "EHDSMedication.marketingAuthorisationHolder.organisationName",
        "short" : "Name of the organisation holding the authorisation for marketing/mahufacturing",
        "definition" : "Name of the organisation holding the authorisation for marketing/mahufacturing",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSMedication.marketingAuthorisationHolder.organisationIdentifier",
        "path" : "EHDSMedication.marketingAuthorisationHolder.organisationIdentifier",
        "short" : "Identifier of the organisation and/or its physical location",
        "definition" : "Identifier of the organisation and/or its physical location",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSMedication.device",
        "path" : "EHDSMedication.device",
        "short" : "Administration device included in the product",
        "definition" : "Administration device included in the product",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedication.device.deviceQuantity",
        "path" : "EHDSMedication.device.deviceQuantity",
        "short" : "Number of such devices",
        "definition" : "Number of such devices",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSMedication.device.device[x]",
        "path" : "EHDSMedication.device.device[x]",
        "short" : "Device coded",
        "definition" : "Device coded",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
            ]
          }
        ]
      },
      {
        "id" : "EHDSMedication.batch",
        "path" : "EHDSMedication.batch",
        "short" : "Batch information of a medicinal product. Typically recorded during dispense or administration, rarely known or relevant for a prescription/request.",
        "definition" : "Batch information of a medicinal product. Typically recorded during dispense or administration, rarely known or relevant for a prescription/request.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedication.batch.lotNumber",
        "path" : "EHDSMedication.batch.lotNumber",
        "short" : "Batch identifier of the medicinal product",
        "definition" : "Batch identifier of the medicinal product",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSMedication.batch.expirationDate",
        "path" : "EHDSMedication.batch.expirationDate",
        "short" : "Batch expiration date of the medicinal product.",
        "definition" : "Batch expiration date of the medicinal product.",
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
