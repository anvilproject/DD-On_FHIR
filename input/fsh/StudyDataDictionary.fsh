/**
 * To represent the research study in FHIR, we'll use several pre-existing
 * FHIR resources. It is worth noting that many of these are currently
 * at TU version (Trial Use). So, there may be some changes ahead once R5
 * begins rolling out. 
 * 
 * First and foremost, we'll require that there be a Code System for each
 * table inside the dataset. By having each variable ID as a code inside
 * a Value Set, we can reference them within other resources. 
 * 
 * Observation Definitions will be used to describe the individual variables
 * including details like which categorical values can be used for those
 * types of data, or what the min/max values should be for quantities, etc. 
 * 
 * We can then describe the dataset (or individual tables) using an 
 * Activity Definition which will then point to each constituent variables 
 * using the observationResultRequirement. 
 * 
 */

/**
 * The Activity Definition represents the dataset (or possibly a table within a dataset) 
 * and aggregates all of relevant variables together as Observation Definitions. */
Instance: activity-definition-example-pht004678.v1.p1
InstanceOf: ActivityDefinition
Usage: #example
Description: "This wraps up all data set variables"
* name = "pht004678.v1.p1_vars"
* title = "Variables for table pht004678.v1.p1"
* status = #draft
* topic = $umls#C0035168 "Research"
* observationResultRequirement = Reference(observation-definition-example-phv00225961)
* observationResultRequirement[+] = Reference(observation-definition-example-phv00225962)
* observationResultRequirement[+] = Reference(observation-definition-example-phv00225963.v1.p1)
* observationResultRequirement[+] = Reference(observation-definition-example-phv00225964.v1.p1)
* observationResultRequirement[+] = Reference(observation-definition-example-phv00225967)
* observationResultRequirement[+] = Reference(observation-definition-example-phv00225968)
* observationResultRequirement[+] = Reference(observation-definition-example-phv00225969)
* observationResultRequirement[+] = Reference(observation-definition-example-phv00226013)
* observationResultRequirement[+] = Reference(observation-definition-example-phv00226014)
* observationResultRequirement[+] = Reference(observation-definition-example-phv00226015)
* observationResultRequirement[+] = Reference(observation-definition-example-phv00226016)

/** 
  * Observation Definitions represent the metadata describing the individual variables
  * themselves. These will include the data type associated with the data for each
  * "column", relevant units, min/max, categorical values that can be used, 
  * (i.e. the ValueSet), etc.
  */

Instance: observation-definition-example-phv00225961
InstanceOf: ObservationDefinition
Usage: #example
Description: "Non-enumerated value domain. De-identified ID where the first two digits denote the origination site of the samples; site key: Marshfield Clinic=16; Vanderbilt University=27; Group Health Cooperative=38; Mayo Clinic=49; Northwestern University=52 External variable resource: <a href='https://cdebrowser.nci.nih.gov'>caDSR</a>; enter source ID: 2181644 (Public ID). NOTE: The codes from NCI Thesaurus are based on the Version 10.07d (July 26, 2010). The source files can be accessed from: http://evs.nci.nih.gov/ftp1/NCI_Thesaurus."
* code = $pht004678#phv00225961.v1.p1 "SUBJID"
* permittedDataType = #integer

Instance: observation-definition-example-phv00225962
InstanceOf: ObservationDefinition
Usage: #example
Description: "External variable resource: <a href='https://cdebrowser.nci.nih.gov'>caDSR</a>; enter source ID: 2200604 (Public ID). NOTE: The codes from NCI Thesaurus are based on the Version 10.07d (July 26, 2010). The source files can be accessed from: http://evs.nci.nih.gov/ftp1/NCI_Thesaurus."
* code = $pht004678#phv00225962.v1.p1 "SEX"
* permittedDataType = #CodeableConcept
* validCodedValueSet = Reference(ValueSet/phv00225962-vs)

Instance: observation-definition-example-phv00225963.v1.p1
InstanceOf: ObservationDefinition
Usage: #example
Description: "Group patients born prior to 1920 (&gt;=89 years of age) into one group External variable resource: <a href='https://cdebrowser.nci.nih.gov'>caDSR</a>; enter source ID: 3018429 (Public ID). NOTE: The codes from NCI Thesaurus are based on the Version 10.07d (July 26, 2010). The source files can be accessed from: http://evs.nci.nih.gov/ftp1/NCI_Thesaurus."
* code = $pht004678#phv00225963.v1.p1 "DECADE_BIRTH"
* permittedDataType = #CodeableConcept
* validCodedValueSet = Reference(ValueSet/phs000888.pht004678.phv00225963-vs)

Instance: observation-definition-example-phv00225964.v1.p1
InstanceOf: ObservationDefinition
Usage: #example
Description: "Show year of birth when decade of birth = 9 or more"
* code = $pht004678#phv00225964.v1.p1 "YEAR_BIRTH"
* permittedDataType = #integer

Instance: observation-definition-example-phv00225967
InstanceOf: ObservationDefinition
Usage: #example
Description: "Case - control status: Abdominal Aortic Aneurysm"
* code = $pht004678#phv00225967.v1.p1 "CASE_CONTROL_AAA"
* permittedDataType = #CodeableConcept
* validCodedValueSet = Reference(ValueSet/phv-case-control-vs)

Instance: observation-definition-example-phv00225968
InstanceOf: ObservationDefinition
Usage: #example
Description: "External variable resource: <a href='https://cdebrowser.nci.nih.gov'>caDSR</a>; enter source ID: 2200604 (Public ID). NOTE: The codes from NCI Thesaurus are based on the Version 10.07d (July 26, 2010). The source files can be accessed from: http://evs.nci.nih.gov/ftp1/NCI_Thesaurus."
* code = $pht004678#phv00225968.v1.p1 "CASE_CONTROL_ACEI"
* permittedDataType = #CodeableConcept
* validCodedValueSet = Reference(ValueSet/phv-case-control-vs)

Instance: observation-definition-example-phv00225969
InstanceOf: ObservationDefinition
Usage: #example
Description: "External variable resource: <a href='https://cdebrowser.nci.nih.gov'>caDSR</a>; enter source ID: 2200604 (Public ID). NOTE: The codes from NCI Thesaurus are based on the Version 10.07d (July 26, 2010). The source files can be accessed from: http://evs.nci.nih.gov/ftp1/NCI_Thesaurus."
* code = $pht004678#phv00225969.v1.p1 "CASE_CONTROL_ADHD"
* permittedDataType = #CodeableConcept
* validCodedValueSet = Reference(ValueSet/phv-case-control-vs)

/*
 * Definitions for other table(s)
 */

Instance: observation-definition-example-phv00226013
InstanceOf: ObservationDefinition
Usage: #example
Description: "Non-enumerated value domain. De-identified ID where the first two digits denote the origination site of the samples; site key: Marshfield Clinic=16; Vanderbilt University=27; Group Health Cooperative=38; Mayo Clinic=49; Northwestern University=52 External variable resource: <a href='https://cdebrowser.nci.nih.gov'>caDSR</a>; enter source ID: 2181644 (Public ID). NOTE: The codes from NCI Thesaurus are based on the Version 10.07d (July 26, 2010). The source files can be accessed from: http://evs.nci.nih.gov/ftp1/NCI_Thesaurus."
* code = $pht004680#phv00226013.v1.p1 "SUBJID"
* permittedDataType = #integer

Instance: observation-definition-example-phv00226014
InstanceOf: ObservationDefinition
Usage: #example
Description: "Subject's weight at enrollment"
* code = $pht004680#phv00226014.v1.p1 "WEIGHT"
* permittedDataType = #Quantity
* quantitativeDetails
  * unit = $ucum#kg
* qualifiedInterval
  * category = #absolute
  * range
    * low.value = 30
    * high.value = 200

Instance: observation-definition-example-phv00226015
InstanceOf: ObservationDefinition
Usage: #example
Description: "Subject's height at enrollment"
* code = $pht004680#phv00226015.v1.p1 "HEIGHT"
* permittedDataType = #Quantity
* quantitativeDetails
  * unit = $ucum#cm
* qualifiedInterval
  * category = #absolute
  * range
    * low.value = 140
    * high.value = 200

Instance: observation-definition-example-phv00226016
InstanceOf: ObservationDefinition
Usage: #example
Description: "Subject's BMI over time"
* code = $pht004680#phv00226016.v1.p1 "BODY_MASS_INDEX"
* permittedDataType = #Quantity
* quantitativeDetails
  * unit = $ucum#kg/m2