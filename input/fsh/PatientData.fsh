/**
 * This is a very small example of what a handful of data values might
 * look like. 
 *
 * Note that we can take advantage of the array-like nature of Codings to 
 * be able to add any number of appropriate codes to the Code attribute.
 * For these examples, I use the variable's code as the first, since that
 * should always be available. 
 *
 * We use the Code attribute to establish what the observation represents
 * and the value[X] to capture the value. 
 */

/* ---------------------- Patient 001 --------------------------------------------*/
Instance: observation-pt001-phv00225967
InstanceOf: Observation
Title: "Status-Abdominal Aortic Aneurysm"
Description: "Example case/control status for Abdominal Aortic Aneurysm"
* status = #final
* code.coding = $pht004678#phv00225967.v1.p1 "CASE_CONTROL_AAA"
* code.coding[+] = $snomed#233985008 "Abdominal aortic aneurysm"
* code.coding[+] = $umls#C0162871 "Abdominal aortic aneurysm"
* code.coding[+] = $loinc#58266-8 "Ever diagnosed by a doctor as having an abdominal aortic aneurysm"
* subject = Reference(patient-example-pt001)
* valueCodeableConcept.coding = $umls#C99269 "Case"

Instance: observation-pt001-phv00226013
InstanceOf: Observation
Title: "SUBJID - pt001"
Description: "De-identified Subject- eMERGE ID"
* status = #final
* code.coding = $pht004678#phv00225961.v1.p1
* subject = Reference(patient-example-pt001)
* valueString = "490001"

Instance: observation-pt001-phv00226014
InstanceOf: Observation
Title: "WEIGHT - pt001"
Description: "Subject's weight at enrollment"
* status = #final
* code.coding = $pht004680#phv00226014.v1.p1 "WEIGHT"
* code.coding[+] = $umls#C0005910 "Body Weight"
* code.coding[+] = $loinc#29463-7 "Body weight"
* subject = Reference(patient-example-pt001)
* valueQuantity
  * value = 73.5
  * unit = "kg"
  * code = $ucum#kg
  * system = $ucum

Instance: observation-pt001-phv00226015
InstanceOf: Observation
Title: "HEIGHT - pt001"
Description: "Subject's height at enrollment"
* status = #final
* code.coding = $pht004680#phv00226015.v1.p1 "HEIGHT"
* code.coding[+] = $umls#C0005890 "Body Height"
* code.coding[+] = $loinc#8302-2 "Body height"
* subject = Reference(patient-example-pt001)
* valueQuantity
  * value = 162
  * unit = "cm"
  * code = $ucum#cm
  * system = $ucum

Instance: observation-pt001-phv00226016
InstanceOf: Observation
Title: "BMI - pt001"
Description: "Subject's BMI over time"
* status = #final
* code.coding = $pht004680#phv00226016.v1.p1 "BODY_MASS_INDEX"
* code.coding[+] = $umls#C0005893 "Body mass index procedure" 
* code.coding[+] = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* subject = Reference(patient-example-pt001)
* valueQuantity
  * value = 28.0
  * unit = "kg/m2"
  * code = $ucum#kg/m2
  * system = $ucum

/* ---------------------- Patient 002 --------------------------------------------*/
Instance: observation-pt002-phv00225967
InstanceOf: Observation
Title: "Status-Abdominal Aortic Aneurysm for pt001"
Description: "Example case/control status for Abdominal Aortic Aneurysm"
* status = #final
* code.coding = $pht004678#phv00225967.v1.p1 "CASE_CONTROL_AAA"
* code.coding[+] = $snomed#233985008 "Abdominal aortic aneurysm"
* code.coding[+] = $umls#C0162871 "Abdominal aortic aneurysm"
* code.coding[+] = $loinc#58266-8 "Ever diagnosed by a doctor as having an abdominal aortic aneurysm"
* subject = Reference(patient-example-pt002)
* valueCodeableConcept.coding = $umls#C99270 "Control"

Instance: observation-pt002-phv00226014
InstanceOf: Observation
Title: "WEIGHT - pt002"
Description: "Subject's weight at enrollment"
* status = #final
* code.coding = $pht004680#phv00226014.v1.p1 "WEIGHT"
* code.coding[+] = $umls#C0005910 "Body Weight"
* code.coding[+] = $loinc#29463-7 "Body Weight"
* subject = Reference(patient-example-pt002)
* valueQuantity
  * value = 68.5
  * unit = "kg"
  * code = $ucum#kg
  * system = $ucum

Instance: observation-pt002-phv00226015
InstanceOf: Observation
Title: "HEIGHT - pt002"
Description: "Subject's height at enrollment"
* status = #final
* code.coding = $pht004680#phv00226015.v1.p1 "HEIGHT"
* code.coding[+] = $umls#C0005890 "Body Height"
* code.coding[+] = $loinc#8302-2 "Body height"
* subject = Reference(patient-example-pt002)
* valueQuantity
  * value = 171
  * unit = "cm"
  * code = $ucum#cm
  * system = $ucum

Instance: observation-pt002-phv00226016
InstanceOf: Observation
Title: "BMI - pt002"
Description: "Subject's BMI over time"
* status = #final
* code.coding = $pht004680#phv00226016.v1.p1 "BODY_MASS_INDEX"
* code.coding[+] = $umls#C0005893 "Body mass index procedure" 
* code.coding[+] = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* subject = Reference(patient-example-pt002)
* valueQuantity
  * value = 23.4
  * unit = "kg/m2"
  * code = $ucum#kg/m2
  * system = $ucum

/* ---------------------- Patient 003 --------------------------------------------*/
Instance: observation-pt003-phv00226014
InstanceOf: Observation
Title: "WEIGHT - pt003"
Description: "Subject's weight at enrollment"
* status = #final
* code.coding = $pht004680#phv00226014.v1.p1 "WEIGHT"
* code.coding[+] = $umls#C0005910 "Body Weight"
* code.coding[+] = $loinc#29463-7 "Body Weight"
* subject = Reference(patient-example-pt003)
* valueQuantity
  * value = 78.5
  * unit = "kg"
  * code = $ucum#kg
  * system = $ucum

Instance: observation-pt003-phv00226015
InstanceOf: Observation
Title: "HEIGHT - pt003"
Description: "Subject's height at enrollment"
* status = #final
* code.coding = $pht004680#phv00226015.v1.p1 "HEIGHT"
* code.coding[+] = $umls#C0005890 "Body Height"
* code.coding[+] = $loinc#8302-2 "Body height"
* subject = Reference(patient-example-pt003)
* valueQuantity
  * value = 180
  * unit = "cm"
  * code = $ucum#cm
  * system = $ucum

Instance: observation-pt003-phv00226016
InstanceOf: Observation
Title: "BMI - pt003"
Description: "Subject's BMI over time"
* status = #final
* code.coding = $pht004680#phv00226016.v1.p1 "BODY_MASS_INDEX"
* code.coding[+] = $umls#C0005893 "Body mass index procedure" 
* code.coding[+] = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* subject = Reference(patient-example-pt003)
* valueQuantity
  * value = 24.2
  * unit = "kg/m2"
  * code = $ucum#kg/m2
  * system = $ucum