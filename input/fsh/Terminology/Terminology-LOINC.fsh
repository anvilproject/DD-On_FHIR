CodeSystem: LOINC
Id: loinc
Title: "LOINC Codes"
Description: "The international standard for identifying health measurements, observations, and documents."
* ^url = $loinc
* #8302-2 "Body height"
* #3137-7 "Body height Measured"
* #3138-5 "Body height Stated"
* #29463-7 "Body Weight"
* #3141-9 "Body weight Measured"
* #3142-7 "Body weight Stated"
* #39156-5 "Body mass index (BMI) [Ratio]"
* #89270-3 "Body mass index (BMI) [Ratio] Estimated"
* #58266-8 "Ever diagnosed by a doctor as having an abdominal aortic aneurysm"

ValueSet: LOINC_VS
Id: loinc-vs
Title: "LOINC Codes"
Description: "All codes from the local LOINC system"
* ^status = #draft
* include codes from system $loinc
