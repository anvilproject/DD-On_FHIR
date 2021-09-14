CodeSystem: Umls
Id: umls
Title: "UMLs CUIs"
Description: "CUIs maintained by UMLs"
* ^url = $umls
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2021-08-19"
* ^publisher = "NCPI FHIR Works"
* ^content = #fragment
* #C0742766 "Consent signed"
* #C439673 "Unknown" "Not known, not observed, not recorded, or refused."
* #C3846720 "No Assessed" "Indicates that an assessment was not performed."
* #C1705492 "Missing" "Not existing; not able to be found"
* #C46109 "Male" "Male Gender"
* #C46110 "Female" "Female Gender"
* #C99269 "Case" "True Case Status"
* #C99270 "Control" "True Control Status"
* #C99271 "Probable Case Status" "The participant is a probable case for the phenotype under consideration."
* #C99272 "Probable Control Status" "The participant is a probable control for the phenotype under consideration."
* #C99273 "Neither Case or Control Status" "The participant is neither a true case or true control for the phenotype under consideration."
* #C99274 "Unable to Assess Case or Control status" "The participant's case/control status could not be assessed."
* #C0035168 "Research" "Critical and exhaustive investigation or experimentation, having for its aim the discovery of new facts and their correct interpretation, the revision of accepted conclusions, theories, or laws in the light of newly discovered facts, or the practical application of such new or revised conclusions, theories, or laws."
* #C0947630 "Scientific Study"
* #C1515051 "Sum" "The final aggregate amount."
* #C1524031 "Minimum" "Smallest of all non-null values in the referenced set of values."
* #C0806909 "Maximum" "Largest of all non-null values in the referenced set of values."
* #C0876920 "Median" "The value which has an equal number of values greater and less than it."
* #C0444504 "Mean" "The sum of the values of all observations or data points divided by the number of observations; an arithmetical average."
* #C0871420 "Std" "Indicator of the relative variability of a variable around its mean; the square root of the variance."
* #C0424638 "Height and weight"
* #C0005890 "Body Height"
* #C0005910 "Body Weight"
* #C0005893 "Body mass index procedure" 

ValueSet: Umls_VS
Id: umls-vs
Title: "UMLs Value Set"
Description: "All codes from the local UMLS system"
* ^status = #draft
* include codes from system $umls

ValueSet: Phv00225962_vs
Id: phv00225962-vs
Title: "Values_for_Phv00225962"
Description: "Values allowed for Phv00225962"
* $umls#C439673 "Unknown"
* $umls#C3846720 "No Assessed"
* $umls#C1705492 "Missing"
* $umls#C46109 "Male"
* $umls#C46110 "Female"

ValueSet: Phv_Case_Control_vs
Id: phv-case-control-vs
Title: "Values For Case Control Variables"
Description: "Values For Case Control Variables"
* $umls#C99269 "Case" 
* $umls#C99270 "Control"
* $umls#C99271 "Probable Case Status"
* $umls#C99273 "Neither Case or Control Status"
* $umls#C99274 "Unable to Assess Case or Control status"

ValueSet: CombinedAnnotationVS
Id: combined-annotation-vs
Title: "Codings associated with all supported annotation systems"
Description: "Codings associated with all supported annotation systems"
* ^url = $common-systems
* include codes from system $umls
* include codes from system $snomed
* include codes from system $loinc

