/**
 * Summary details for a study and it's various consent groupings can 
 * be represented as simple observations. These observations will have
 * a Quantity indicating total count with components indicating the 
 * counts of individual categoricals or statistical features for those
 * variables that actually represent numerical values. 
 * 
 * For focus, we can point to the variable's ObservationDefinition would
 * could then be used in searches. 
 * 
 * We can then capture the entire summary as a Composition object (and
 * the accompanying bundle) for convenience. 
 * 
 * Notes:
 *   * Subject would not be necessary if the summary is about the entire 
 *     study, but it can be pointed to a group, which would then refer
 *     to a particular group, possibly a consent group or possibly a 
 *     group selected for some other reason. 
 */

/** Full summary */
Instance: observation-summary-sex-all
InstanceOf: Observation
Title: "Summary counts for variable phv00225962.v1.p1, sex"
Description: "summary counts for variable phv00225962.v1.p1, sex"
* status = #final
* code.coding = $pht004678#phv00225962.v1.p1
* subject = Reference(research-group-phs000888-all)
* focus = Reference(observation-definition-example-phv00225962)
* valueQuantity
  * value = 55029
  * code = #C1515051
  * system = $umls
* component
  * code = $umls#C46109 "Male"
  * valueInteger = 25246
* component[+]
  * code = $umls#C46110 "Female"
  * valueInteger = 29783

Instance: observation-summary-aaa-all
InstanceOf: Observation
Title: "Summary details for variable phv00225967.v1.p1, aaa"
Description: "Summary details for variable phv00225967.v1.p1, aaa"
* status = #final
* code.coding = $pht004678#phv00225967.v1.p1
* subject = Reference(research-group-phs000888-all)
* focus = Reference(observation-definition-example-phv00225967)
* valueQuantity 
  * value = 55029
  * code = #C1515051
  * system = $umls
* component
  * code = $umls#C99269 "Case"
  * valueInteger = 1110
* component[+]
  * code = $umls#C99270 "Control"
  * valueInteger = 22175
* component[+]
  * code = $umls#C99273 "Neither Case or Control Status"
  * valueInteger = 31744

Instance: observation-summary-weight-all
InstanceOf: Observation
Title: "Summary counts for variable phv00226014.v1.p1 , weight"
Description: "summary counts for variable phv00226014.v1.p1 , weight"
* status = #final
* code.coding = $pht004680#phv00226014.v1.p1 "WEIGHT"
* subject = Reference(research-group-phs000888-all)
* focus = Reference(observation-definition-example-phv00226014)
* valueQuantity
  * value = 2096779
  * code = #C1515051
  * system = $umls
* component
  * code = $umls#C1524031 "Minimum"
  * valueQuantity 
    * value = 30
    * code = #C1515051 "Sum"
    * system = $umls
* component[+]
  * code = $umls#C0876920 "Median"
  * valueQuantity 
    * value = 84.41
    * code = #C1515051 "Sum"
    * system = $umls
* component[+]
  * code = $umls#C0806909 "Maximum"
  * valueQuantity 
    * value = 206
    * code = #C1515051 "Sum"
    * system = $umls
* component[+]
  * code = $umls#C0444504 "Mean"
  * valueQuantity 
    * value = 87.73
    * code = #C1515051 "Sum"
    * system = $umls
* component[+]
  * code = $umls#C0871420 "Std"
  * valueQuantity
    * value = 23.44
    * code = #C1515051 "Sum"
    * system = $umls

Instance: observation-summary-height-all
InstanceOf: Observation
Title: "Summary counts for variable phv00226015.v1.p1 , height"
Description: "summary counts for variable phv00226015.v1.p1 , height"
* status = #final
* code.coding = $pht004680#phv00226015.v1.p1 "HEIGHT"
* subject = Reference(research-group-phs000888-all)
* focus = Reference(observation-definition-example-phv00226015)
* valueQuantity
  * value = 1987376
  * code = #C1515051
  * system = $umls
* component
  * code = $umls#C1524031 "Minimum"
  * valueQuantity 
    * value = 33.02
    * code = #C1515051 "Sum"
    * system = $umls
* component[+]
  * code = $umls#C0876920 "Median"
  * valueQuantity 
    * value = 167.6
    * code = #C1515051 "Sum"
    * system = $umls
* component[+]
  * code = $umls#C0806909 "Maximum"
  * valueQuantity 
    * value = 203.2
    * code = #C1515051 "Sum"
    * system = $umls
* component[+]
  * code = $umls#C0444504 "Mean"
  * valueQuantity
    * value = 168.1
    * code = #C1515051 "Sum"
    * system = $umls
* component[+]
  * code = $umls#C0871420 "Std"
  * valueQuantity
    * value = 9.965
    * code = #C1515051 "Sum"
    * system = $umls

Instance: observation-summary-bmi-all
InstanceOf: Observation
Title: "Summary counts for variable phv00226016.v1.p1 , BMI"
Description: "summary counts for variable phv00226016.v1.p1 , BMI"
* status = #final
* code.coding = $pht004680#phv00226016.v1.p1 "BODY_MASS_INDEX"
* subject = Reference(research-group-phs000888-all)
* focus = Reference(observation-definition-example-phv00226016)
* valueQuantity
  * value = 2438477
  * code = #C1515051
  * system = $umls
* component
  * code = $umls#C1524031 "Minimum"
  * valueQuantity
    * value = 0.3
    * code = #C1515051 "Sum"
    * system = $umls
* component[+]
  * code = $umls#C0876920 "Median"
  * valueQuantity
    * value = 29.57
    * code = #C1515051 "Sum"
    * system = $umls
* component[+]
  * code = $umls#C0806909 "Maximum"
  * valueQuantity
    * value = 632.3
    * code = #C1515051 "Sum"
    * system = $umls
* component[+]
  * code = $umls#C0444504 "Mean"
  * valueQuantity
    * value = 31.01
    * code = #C1515051 "Sum"
    * system = $umls
* component[+]
  * code = $umls#C0871420 "Std"
  * valueQuantity
    * value = 7.779
    * code = #C1515051 "Sum"
    * system = $umls

/** Summary for a subgroup */
Instance: observation-summary-sex-hmb
InstanceOf: Observation
Title: "Summary counts for variable phv00225962.v1.p1, sex for subgroup HMB"
Description: "summary counts for variable phv00225962.v1.p1, sex for subgroup HBM"
* status = #final
* code.coding = $pht004678#phv00225962.v1.p1
* focus = Reference(observation-definition-example-phv00225962)
* subject = Reference(research-group-phs000888-hmb)
* valueQuantity
  * value = 18621	
  * code = #C1515051
  * system = $umls
* component
  * code = $umls#C46109 "Male"
  * valueInteger = 8887
* component[+]
  * code = $umls#C46110 "Female"
  * valueInteger = 9734

Instance: observation-summary-aaa-hmb
InstanceOf: Observation
Title: "Summary details for variable phv00225967.v1.p1, aaa (HMB)"
Description: "Summary details for variable phv00225967.v1.p1, aaa for consent group (HMB)"
* status = #final
* code.coding = $pht004678#phv00225967.v1.p1
* subject = Reference(research-group-phs000888-hmb)
* focus = Reference(observation-definition-example-phv00225967)
* subject = Reference(research-group-phs000888-hmb)
* valueQuantity 
  * value = 18621
  * code = #C1515051
  * system = $umls
* component
  * code = $umls#C99269 "Case"
  * valueInteger = 774
* component[+]
  * code = $umls#C99270 "Control"
  * valueInteger = 2404
* component[+]
  * code = $umls#C99273 "Neither Case or Control Status"
  * valueInteger = 15443

  Instance: observation-summary-weight-hmb
InstanceOf: Observation
Title: "Summary counts for variable phv00226014.v1.p1 , weight (HMB)"
Description: "summary counts for variable phv00226014.v1.p1 , weight (HMB)"
* status = #final
* code.coding = $pht004680#phv00226014.v1.p1 "WEIGHT"
* focus = Reference(observation-definition-example-phv00226014)
* subject = Reference(research-group-phs000888-hmb)
* valueQuantity
  * value = 1297606
  * code = #C1515051
  * system = $umls
* component
  * code = $umls#C1524031 "Minimum"
  * valueQuantity
    * value = 30
    * code = #C1515051 "Sum"
    * system = $umls
* component[+]
  * code = $umls#C0876920 "Median"
  * valueQuantity
    * value = 86.19
    * code = #C1515051 "Sum"
    * system = $umls
* component[+]
  * code = $umls#C0806909 "Maximum"
  * valueQuantity
    * value = 206
    * code = #C1515051 "Sum"
    * system = $umls
* component[+]
  * code = $umls#C0444504 "Mean"
  * valueQuantity
    * value = 89.74
    * code = #C1515051 "Sum"
    * system = $umls
* component[+]
  * code = $umls#C0871420 "Std"
  * valueQuantity 
    * value = 24.65
    * code = #C1515051 "Sum"
    * system = $umls

Instance: observation-summary-height-hmb
InstanceOf: Observation
Title: "Summary counts for variable phv00226015.v1.p1 , height (HMB)"
Description: "summary counts for variable phv00226015.v1.p1 , height (HMB)"
* status = #final
* code.coding = $pht004680#phv00226015.v1.p1 "HEIGHT"
* focus = Reference(observation-definition-example-phv00226015)
* subject = Reference(research-group-phs000888-hmb)
* valueQuantity
  * value = 1188121
  * code = #C1515051
  * system = $umls
* component
  * code = $umls#C1524031 "Minimum"
  * valueQuantity
    * value = 33.02
    * code = #C1515051 "Sum"
    * system = $umls
* component[+]
  * code = $umls#C0876920 "Median"
  * valueQuantity
    * value = 168.7
    * code = #C1515051 "Sum"
    * system = $umls
* component[+]
  * code = $umls#C0806909 "Maximum"
  * valueQuantity
    * value = 203.2 
    * code = #C1515051 "Sum"
    * system = $umls
* component[+]
  * code = $umls#C0444504 "Mean"
  * valueQuantity
    * value = 169.2
    * code = #C1515051 "Sum"
    * system = $umls
* component[+]
  * code = $umls#C0871420 "Std"
  * valueQuantity
    * value = 10  
    * code = #C1515051 "Sum"
    * system = $umls

Instance: observation-summary-bmi-hmb
InstanceOf: Observation
Title: "Summary counts for variable phv00226016.v1.p1, BMI (HMB)"
Description: "summary counts for variable phv00226016.v1.p1, BMI (HMB)"
* status = #final
* code.coding = $pht004680#phv00226016.v1.p1 "BODY_MASS_INDEX"
* focus = Reference(observation-definition-example-phv00226016)
* subject = Reference(research-group-phs000888-hmb)
* valueQuantity
  * value = 1488423
  * code = #C1515051 "Sum"
  * system = $umls
* component
  * code = $umls#C1524031 "Minimum"
  * valueQuantity
    * value = 0.3
    * code = #C1515051 "Sum"
    * system = $umls
* component[+]
  * code = $umls#C0876920 "Median"
  * valueQuantity
    * value = 29.81
    * code = #C1515051 "Sum"
    * system = $umls
* component[+]
  * code = $umls#C0806909 "Maximum"
  * valueQuantity 
    * value = 632.3
    * code = #C1515051 "Sum"
    * system = $umls
* component[+]
  * code = $umls#C0444504 "Mean"
  * valueQuantity
    * value = 31.43
    * code = #C1515051 "Sum"
    * system = $umls
* component[+]
  * code = $umls#C0871420 "Std"
  * valueQuantity
    * value = 8.217
    * code = #C1515051 "Sum"
    * system = $umls

Instance: organization-ncpi
InstanceOf: Organization
Usage: #example
Description: "Example NCPI organization."
* name = "NCPI FHIR team"

/** 
 * To organize the study's metadata into a single, compartmentalized 
 * data object, we could use a composition object. This gives us the 
 * ability to aggregate all variables under a single section and each
 * of the summary observations under the relevant consent groups as 
 * separate sections. 
 */

Instance: composition-phs000888.v1.p1.summary
InstanceOf: Composition
Title: "Example Summary Composition"
Description: "An example composition for the summary content associated with study phs000888.v1.p1"
* status = #final
* type = $umls#C0947630 "Scientific Study"
* date = 2021-08-30
* author = Reference(organization-ncpi)
* title = "All Documents associated with study, phs000888.v1.p1"
* section[+]
  * title = "Variable Definitions"
  * code = $loinc#61149-1 "Objective Narrative"
  * focus = Reference(activity-definition-example-pht004678.v1.p1)
  * entry = Reference(observation-definition-example-phv00225961)
  * entry[+] = Reference(observation-definition-example-phv00225962)
  * entry[+] = Reference(observation-definition-example-phv00225963.v1.p1)
  * entry[+] = Reference(observation-definition-example-phv00225964.v1.p1)
  * entry[+] = Reference(observation-definition-example-phv00225967)
  * entry[+] = Reference(observation-definition-example-phv00225968)
  * entry[+] = Reference(observation-definition-example-phv00225969)
  * entry[+] = Reference(observation-definition-example-phv00226013)
  * entry[+] = Reference(observation-definition-example-phv00226014)
  * entry[+] = Reference(observation-definition-example-phv00226015)
  * entry[+] = Reference(observation-definition-example-phv00226016)
* section[+]
  * title = "Summary Observations - Full Study"
  * code = $phs000888-consents#AllSubjects "All subjects"
  * focus = Reference(research-group-phs000888-all)
  * entry = Reference(observation-summary-sex-all)
  * entry[+] = Reference(observation-summary-aaa-all)
  * entry[+] = Reference(observation-summary-weight-all)
  * entry[+] = Reference(observation-summary-height-all)
  * entry[+] = Reference(observation-summary-bmi-all)
* section[+]
  * title = "Summary Observations - Consent Group HMB"
  * code = $phs000888-consents#GroupConsentHMB
  * focus = Reference(research-group-phs000888-hmb)
  * entry = Reference(observation-summary-sex-hmb)
  * entry[+] = Reference(observation-summary-aaa-hmb)
  * entry[+] = Reference(observation-summary-weight-hmb)
  * entry[+] = Reference(observation-summary-height-hmb)
  * entry[+] = Reference(observation-summary-bmi-hmb)

