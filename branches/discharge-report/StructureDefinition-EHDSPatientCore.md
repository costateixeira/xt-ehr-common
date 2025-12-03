# Patient model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient model**

## Logical Model: Patient model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatientCore | *Version*:0.2.1 |
| Draft as of 2025-12-03 | *Computable Name*:EHDSPatientCore |

 
EHDS refined base model for patient (subject of care) information 

**Usages:**

* Derived from this Logical Model: [Patient model](StructureDefinition-EHDSPatient.md)
* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReportCore.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSPatientCore)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSPatientCore.csv), [Excel](StructureDefinition-EHDSPatientCore.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSPatientCore",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatientCore",
  "version" : "0.2.1",
  "name" : "EHDSPatientCore",
  "title" : "Patient model",
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
  "description" : "EHDS refined base model for patient (subject of care) information",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatientCore",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSPatientCore",
        "path" : "EHDSPatientCore",
        "short" : "Patient model",
        "definition" : "EHDS refined base model for patient (subject of care) information"
      },
      {
        "id" : "EHDSPatientCore.name",
        "path" : "EHDSPatientCore.name",
        "short" : "Name associated with the patient/subject.",
        "definition" : "Name might consist of name parts, e.g. Given name or names, family name/surname, name prefix etc.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHumanName"
          }
        ]
      },
      {
        "id" : "EHDSPatientCore.dateOfBirth",
        "path" : "EHDSPatientCore.dateOfBirth",
        "short" : "Date of birth",
        "definition" : "The date of birth of the patient [ISO TS 22220]. As age of the patient might be important for correct interpretation of the test result values, complete date of birth should be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSPatientCore.personalIdentifier",
        "path" : "EHDSPatientCore.personalIdentifier",
        "short" : "An identifier of the patient that is unique within a defined scope (typically a national patient identifier, but it can also be a temporary identifier issued by the EHR).",
        "definition" : "An identifier of the patient that is unique within a defined scope (typically a national patient identifier, but it can also be a temporary identifier issued by the EHR).",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSPatientCore.citizenship",
        "path" : "EHDSPatientCore.citizenship",
        "short" : "Citizenship (nationality)",
        "definition" : "Citizenship/nationality of the patient.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ISO 3166-1 alpha-2"
        }
      },
      {
        "id" : "EHDSPatientCore.administrativeGender",
        "path" : "EHDSPatientCore.administrativeGender",
        "short" : "Administrative gender",
        "definition" : "This field must contain a recognized valid value for \"administrative gender\". If different, \"physiological gender\" should be communicated elsewhere.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Administrative Gender"
        }
      },
      {
        "id" : "EHDSPatientCore.countryOfAffiliation",
        "path" : "EHDSPatientCore.countryOfAffiliation",
        "short" : "The patient's country of affiliation",
        "definition" : "The patient's country of affiliation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ISO 3166"
        }
      },
      {
        "id" : "EHDSPatientCore.address",
        "path" : "EHDSPatientCore.address",
        "short" : "Mailing and home or office addresses.",
        "definition" : "The addresses are always sequences of address parts (e.g. street address line, country, postal code, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAddress"
          }
        ]
      },
      {
        "id" : "EHDSPatientCore.telecom",
        "path" : "EHDSPatientCore.telecom",
        "short" : "Telecommunication contact information (addresses) associated to a person.",
        "definition" : "Telecommunication contact information (addresses) associated to a person.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSTelecom"
          }
        ]
      }
    ]
  }
}

```
