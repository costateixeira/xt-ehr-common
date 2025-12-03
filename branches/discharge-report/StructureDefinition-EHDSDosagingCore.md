# Dosaging model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dosaging model**

## Logical Model: Dosaging model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDosagingCore | *Version*:0.2.1 |
| Draft as of 2025-12-03 | *Computable Name*:EHDSDosagingCore |

 
Logical model for usage instructions for administring the requested product. Based on FHIR Dosage complex data type. When implemented, this model may be reduced significantly according to the specific use case. 

**Usages:**

* Derived from this Logical Model: [Dosaging model](StructureDefinition-EHDSDosaging.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSDosagingCore)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSDosagingCore.csv), [Excel](StructureDefinition-EHDSDosagingCore.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSDosagingCore",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDosagingCore",
  "version" : "0.2.1",
  "name" : "EHDSDosagingCore",
  "title" : "Dosaging model",
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
  "description" : "Logical model for usage instructions for administring the requested product. Based on FHIR Dosage complex data type. When implemented, this model may be reduced significantly according to the specific use case.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDosagingCore",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSDosagingCore",
        "path" : "EHDSDosagingCore",
        "short" : "Dosaging model",
        "definition" : "Logical model for usage instructions for administring the requested product. Based on FHIR Dosage complex data type. When implemented, this model may be reduced significantly according to the specific use case."
      },
      {
        "id" : "EHDSDosagingCore.text",
        "path" : "EHDSDosagingCore.text",
        "short" : "Free text usage/dosage instructions when structured dosage information is not fully provided",
        "definition" : "Free text usage/dosage instructions when structured dosage information is not fully provided",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.renderedDescription",
        "path" : "EHDSDosagingCore.renderedDescription",
        "short" : "Text representation rendered from all dosaging data elements with a value",
        "definition" : "Text representation rendered from all dosaging data elements with a value",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.additionalInstruction",
        "path" : "EHDSDosagingCore.additionalInstruction",
        "short" : "Coded instructions, e.g warnings to the patient, like 'may cause drowsiness' etc",
        "definition" : "Coded instructions, e.g warnings to the patient, like 'may cause drowsiness' etc",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.patientInstruction",
        "path" : "EHDSDosagingCore.patientInstruction",
        "short" : "Patient oriented instructions as free text",
        "definition" : "Patient oriented instructions as free text",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.doseAndRate",
        "path" : "EHDSDosagingCore.doseAndRate",
        "short" : "Amount of medication administered per one dose (= one timing)",
        "definition" : "Amount of medication administered per one dose (= one timing)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.doseAndRate.type",
        "path" : "EHDSDosagingCore.doseAndRate.type",
        "short" : "The kind of dose or rate specified (e.g calculated, ordered, etc).",
        "definition" : "The kind of dose or rate specified (e.g calculated, ordered, etc).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.doseAndRate.dose[x]",
        "path" : "EHDSDosagingCore.doseAndRate.dose[x]",
        "short" : "Amount of medication per one dose. (1 tablet, 2-3 tablets, 20ml)",
        "definition" : "Amount of medication per one dose. (1 tablet, 2-3 tablets, 20ml)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          },
          {
            "code" : "Range"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.doseAndRate.rate[x]",
        "path" : "EHDSDosagingCore.doseAndRate.rate[x]",
        "short" : "Time period during which one defined dose is administered (per 1 hour, per 5-10 minutes)",
        "definition" : "Time period during which one defined dose is administered (per 1 hour, per 5-10 minutes)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Ratio"
          },
          {
            "code" : "Quantity"
          },
          {
            "code" : "Range"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.timing",
        "path" : "EHDSDosagingCore.timing",
        "short" : "When medication should be administered (period, time of day, frequency, etc)",
        "definition" : "When medication should be administered (period, time of day, frequency, etc)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.timing.event",
        "path" : "EHDSDosagingCore.timing.event",
        "short" : "Exact date and/or time of the administration",
        "definition" : "Exact date and/or time of the administration",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.timing.code",
        "path" : "EHDSDosagingCore.timing.code",
        "short" : "Timing abbreviation (AM - morning, Q4H - once in every 4 hours, BID - twice a day, etc)",
        "definition" : "Timing abbreviation (AM - morning, Q4H - once in every 4 hours, BID - twice a day, etc)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.timing.repeat",
        "path" : "EHDSDosagingCore.timing.repeat",
        "short" : "Repetition of the administration.",
        "definition" : "Repetition of the administration.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.timing.repeat.bounds",
        "path" : "EHDSDosagingCore.timing.repeat.bounds",
        "short" : "Time bounds for the treatment (current dosaging scheme). Only one of the following can exist.",
        "definition" : "Time bounds for the treatment (current dosaging scheme). Only one of the following can exist.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.timing.repeat.bounds.duration",
        "path" : "EHDSDosagingCore.timing.repeat.bounds.duration",
        "short" : "Number of time units, e.g 10 days",
        "definition" : "Number of time units, e.g 10 days",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.timing.repeat.bounds.range",
        "path" : "EHDSDosagingCore.timing.repeat.bounds.range",
        "short" : "A range of numbers of time units, 5-10 days",
        "definition" : "A range of numbers of time units, 5-10 days",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Range"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.timing.repeat.bounds.period",
        "path" : "EHDSDosagingCore.timing.repeat.bounds.period",
        "short" : "Start and end date, 05.08.2023 - 10.08.2023",
        "definition" : "Start and end date, 05.08.2023 - 10.08.2023",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.timing.repeat.count",
        "path" : "EHDSDosagingCore.timing.repeat.count",
        "short" : "Number of times to repeat, exact or range",
        "definition" : "Number of times to repeat, exact or range",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.timing.repeat.count.count",
        "path" : "EHDSDosagingCore.timing.repeat.count.count",
        "short" : "Number of times (e.g 'once', '10 times')",
        "definition" : "Number of times (e.g 'once', '10 times')",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.timing.repeat.count.countMax",
        "path" : "EHDSDosagingCore.timing.repeat.count.countMax",
        "short" : "Maximum number of times (e.g 'maximum 10 times')",
        "definition" : "Maximum number of times (e.g 'maximum 10 times')",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.timing.repeat.duration",
        "path" : "EHDSDosagingCore.timing.repeat.duration",
        "short" : "Duration of one administration, exact or range",
        "definition" : "Duration of one administration, exact or range",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.timing.repeat.duration.duration",
        "path" : "EHDSDosagingCore.timing.repeat.duration.duration",
        "short" : "Duration of administration (e.g '5 minutes', '1 hour')",
        "definition" : "Duration of administration (e.g '5 minutes', '1 hour')",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.timing.repeat.duration.durationMax",
        "path" : "EHDSDosagingCore.timing.repeat.duration.durationMax",
        "short" : "Maximum duration of administration (e.g 'maximum 1 hour')",
        "definition" : "Maximum duration of administration (e.g 'maximum 1 hour')",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.timing.repeat.frequency",
        "path" : "EHDSDosagingCore.timing.repeat.frequency",
        "short" : "Frequency of intake/administration (e.g 'three times a day')",
        "definition" : "Frequency of intake/administration (e.g 'three times a day')",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.timing.repeat.frequency.numberOfTimes",
        "path" : "EHDSDosagingCore.timing.repeat.frequency.numberOfTimes",
        "short" : "Number of times per period (e.g '3 times')",
        "definition" : "Number of times per period (e.g '3 times')",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.timing.repeat.frequency.maxNumberOfTimes",
        "path" : "EHDSDosagingCore.timing.repeat.frequency.maxNumberOfTimes",
        "short" : "Maximum number of times per period (e.g. 'maximum 3 times')",
        "definition" : "Maximum number of times per period (e.g. 'maximum 3 times')",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.timing.repeat.frequency.period",
        "path" : "EHDSDosagingCore.timing.repeat.frequency.period",
        "short" : "Duration to which the frequency applies (e.g '... / 1 day')",
        "definition" : "Duration to which the frequency applies (e.g '... / 1 day')",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.timing.repeat.frequency.periodMax",
        "path" : "EHDSDosagingCore.timing.repeat.frequency.periodMax",
        "short" : "Upper limit of the period (e.g ... / 4-6 hours)",
        "definition" : "Upper limit of the period (e.g ... / 4-6 hours)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.timing.repeat.dayOfWeek",
        "path" : "EHDSDosagingCore.timing.repeat.dayOfWeek",
        "short" : "The day of the week of administration, e.g Mon, Tue, etc",
        "definition" : "The day of the week of administration, e.g Mon, Tue, etc",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.timing.repeat.timeOfDay",
        "path" : "EHDSDosagingCore.timing.repeat.timeOfDay",
        "short" : "Time of day of administration (e.g '10:00')",
        "definition" : "Time of day of administration (e.g '10:00')",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "time"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.timing.repeat.eventTime",
        "path" : "EHDSDosagingCore.timing.repeat.eventTime",
        "short" : "An event the administration is bound to, e.g 'before meal', '30 min before meal'",
        "definition" : "An event the administration is bound to, e.g 'before meal', '30 min before meal'",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.timing.repeat.eventTime.when",
        "path" : "EHDSDosagingCore.timing.repeat.eventTime.when",
        "short" : "Time period or event ('before meal', 'immediately', 'morning')",
        "definition" : "Time period or event ('before meal', 'immediately', 'morning')",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.timing.repeat.eventTime.offset",
        "path" : "EHDSDosagingCore.timing.repeat.eventTime.offset",
        "short" : "minutes from event, before or after (?not sure how to show before/after with only positive integers)",
        "definition" : "minutes from event, before or after (?not sure how to show before/after with only positive integers)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.asNeeded",
        "path" : "EHDSDosagingCore.asNeeded",
        "short" : "Take as needed",
        "definition" : "Take as needed",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.asNeededFor",
        "path" : "EHDSDosagingCore.asNeededFor",
        "short" : "Take as needed for the coded reason",
        "definition" : "Take as needed for the coded reason",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.bodySite",
        "path" : "EHDSDosagingCore.bodySite",
        "short" : "Body site of administration",
        "definition" : "Body site of administration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.routeOfAdministration",
        "path" : "EHDSDosagingCore.routeOfAdministration",
        "short" : "Route of administration",
        "definition" : "Route of administration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.methodOfAdministration",
        "path" : "EHDSDosagingCore.methodOfAdministration",
        "short" : "Method of administration",
        "definition" : "Method of administration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.maxDose",
        "path" : "EHDSDosagingCore.maxDose",
        "short" : "Maximum dose for the patient",
        "definition" : "Maximum dose for the patient",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.maxDose.maxDosePerPeriod",
        "path" : "EHDSDosagingCore.maxDose.maxDosePerPeriod",
        "short" : "Upper limit on medication per unit of time",
        "definition" : "Upper limit on medication per unit of time",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Ratio"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.maxDose.maxDosePerAdministration",
        "path" : "EHDSDosagingCore.maxDose.maxDosePerAdministration",
        "short" : "Upper limit on medication per one administration",
        "definition" : "Upper limit on medication per one administration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSDosagingCore.maxDose.maxDosePerLifetime",
        "path" : "EHDSDosagingCore.maxDose.maxDosePerLifetime",
        "short" : "Upper limit on medication per lifetime of the patient",
        "definition" : "Upper limit on medication per lifetime of the patient",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      }
    ]
  }
}

```
