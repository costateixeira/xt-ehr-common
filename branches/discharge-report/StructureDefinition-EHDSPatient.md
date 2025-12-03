# Patient model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient model**

## Logical Model: Patient model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient | *Version*:0.2.1 |
| Draft as of 2025-12-03 | *Computable Name*:EHDSPatient |

 
EHDS refined base model for patient (subject of care) information 

**Usages:**

* Use this Logical Model: [Advance directive model](StructureDefinition-EHDSAdvanceDirective.md), [Coverage model](StructureDefinition-EHDSCoverage.md), [DataSet model](StructureDefinition-EHDSDataSet.md), [Device use model](StructureDefinition-EHDSDeviceUse.md)...Show 8 more,[Imaging report model](StructureDefinition-EHDSImagingReport.md),[Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md),[Media model](StructureDefinition-EHDSMedia.md),[Medication dispense model](StructureDefinition-EHDSMedicationDispense.md),[Observation model](StructureDefinition-EHDSObservation.md),[Observation model](StructureDefinition-EHDSObservationCore.md),[Related person model](StructureDefinition-EHDSRelatedPerson.md)and[Specimen model](StructureDefinition-EHDSSpecimen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSPatient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSPatient.csv), [Excel](StructureDefinition-EHDSPatient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSPatient",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient",
  "version" : "0.2.1",
  "name" : "EHDSPatient",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatientCore",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSPatient",
        "path" : "EHDSPatient"
      },
      {
        "id" : "EHDSPatient.maritalStatus",
        "path" : "EHDSPatient.maritalStatus",
        "short" : "Marital (civil) status of a patient",
        "definition" : "Marital (civil) status of a patient",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 marital-status"
        }
      },
      {
        "id" : "EHDSPatient.communicationLanguage",
        "path" : "EHDSPatient.communicationLanguage",
        "short" : "The language which can be used to communicate with the patient about his or her health.",
        "definition" : "The language which can be used to communicate with the patient about his or her health.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "BCP 47"
        }
      }
    ]
  }
}

```
