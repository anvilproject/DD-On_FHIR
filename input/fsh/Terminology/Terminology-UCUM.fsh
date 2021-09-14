CodeSystem: Ucum
Id: ucum
Title: "UCUM Codes"
Description: "Unified Code for Units of Measure"
* ^url = $ucum
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^publisher = "NCPI FHIR Works"
* ^content = #fragment
* #cm "cm"
* #kg "kg"
* #kg/m2 "kg/m2"

ValueSet: Ucum_VS
Id: ucum-vs
Title: "UCUM Codes"
Description: "Unified Code for Units of Measure"
* ^status = #draft
* include codes from system $ucum