Logical: EHDSFunctionalStatusCore
Parent: EHDSDataSet
//Id: EHDSfunctionalStatus
Title: "Functional status"
Description: """EHDS refined base model for Functional status"""
Characteristics: #can-be-target

* description 0..1 string "Narrative description of the functional status" """Narrative description of the need for the patient to be continuously assessed by third parties; functional status may influence decisions about how to plan and administer treatments."""
  * ^requirements = "eHN HDR Guideline, MyHealth@EU, ISO IPS"


* functionalStatusAssessment 0..* Base "Functional assessment of the patient" """Functional status assessment of the patient according to a specific assessment scheme."""
  * ^requirements = "eHN HDR Guideline, ISO IPS"
  * functionalAssessmentCode 0..1 CodeableConcept "Standardized code corresponding to the Functional assessment"
    * ^requirements = "eHN HDR Guideline, ISO IPS"
    * ^binding.description = "ICF, SNOMED CT"
    * ^binding.strength = #preferred
  // * functionalAssessmentDescription 0..1 string "Description of the functional assessment"
  //   * ^requirements = "eHN HDR Guideline, ISO IPS"
  * onsetDate 0..1 dateTime "Onset date of a condition"
    * ^requirements = "eHN HDR Guideline, ISO IPS"
  * functionalAssessmentDateTime 0..1 dateTime "Date and time of the functional assessment"
    * ^requirements = "eHN HDR Guideline, ISO IPS"
  * functionalAssessmentResult[x] 0..1 string or Quantity or CodeableConcept "Functional assessment result value"
    * ^requirements = "eHN HDR Guideline, ISO IPS"
    * ^binding.description = "ICF, SNOMED CT"
    * ^binding.strength = #preferred


Logical: EHDSFunctionalStatus
Parent: EHDSFunctionalStatusCore
//Id: EHDSfunctionalStatus
Title: "Functional status"
Description: """EHDS refined base model for Functional status"""
Characteristics: #can-be-target

// Elements inherited from EHDSFunctionalStatusCore:
// - description

* relatedConditions 0..* Base "Conditions related to the functional status"
  // Disability in IPS
  * ^requirements = "eHN HDR Guideline, ISO IPS"
  * ^comment = "Disability in IPS"
  * condition 0..1 CodeableConcept "Condition related to the functional status"
  * ^requirements = "eHN HDR Guideline, ISO IPS"
  * conditionText 0..1 string "Textual description of the condition"
    * ^requirements = "eHN HDR Guideline, ISO IPS"
  * ^requirements = "eHN HDR Guideline, ISO IPS"
  * onsetDate 0..1 dateTime "Onset date of a condition"
    * ^requirements = "eHN HDR Guideline, ISO IPS"
