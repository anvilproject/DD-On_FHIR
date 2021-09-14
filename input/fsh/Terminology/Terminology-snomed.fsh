CodeSystem: SnoMED
Id: snomed
Title: "SNOMED terms"
Description: "Selected Codes from SNOMED"
* ^url = $snomed
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2021-08-19"
* ^publisher = "NCPI FHIR Works"
* ^content = #fragment
* #233985008 "Abdominal aortic aneurysm"

ValueSet: SNOMED_VS
Id: snomed-vs
Title: "SNOMED Codes"
Description: "All codes from the local SNOMED system"
* ^status = #draft
* include codes from system $snomed