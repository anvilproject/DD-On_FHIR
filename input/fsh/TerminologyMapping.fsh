/**
 * Build relationships between DbGAP vars and standard vocabularies
 */
Instance: Instance-ConceptMap-DD-To-CUI
InstanceOf: ConceptMap
Usage: #definition
* url = "http://ddent.ncpi.someplace.org/ddent-fhir/ConceptMap/DD/phs000888.v1.p1-DDtoCUI"
* identifier.system = "http://ddent.ncpi.someplace.org/ddent-fhir/study/cm/dd-cui"
* identifier.value = "phs000888.v1.p1"
* name = "phs000888.v1.p-DDtoCUI"
* title = "Study Concept Map for eMERGE Network Imputed GWAS for 41 Phenotypes"
* status = #draft
* experimental = false
* description = "The electronic Medical Records and Genomics (eMERGE) Network is a consortium of ten participating sites"
* sourceUri = "http://ddent.ncpi.someplace.org/ddent-fhir/ValueSet/DD/phs000888.v1.p1"
* targetUri = "http://ddent.ncpi.someplace.org/ddent-fhir/ValueSet/CUI/phs000888.v1.p1"
* group /** Test something */
  * source = "http://ddent.ncpi.someplace.org/ddent-fhir/CodeSystems/DD/DbGAP/phs000888.v1/pht004678.v1.phs000888.v1"
  * target = $snomed
  * element
    * code =  #phv00225967.v1
    * display = "CASE_CONTROL_AAA"
    * target 
      * code = #233985008
      * display = "Abdominal aortic aneurysm"
      * equivalence = #equivalent
      * comment = "* Semantics: problem\n * Assertion: present\n * Prob:  0.867\t\n * Loc: 23-48\n * Matched: Abdominal Aortic Aneurysm\n * Source Text: Case - control status: Abdominal Aortic Aneurysm"
* group[+]
  * source = "http://ddent.ncpi.someplace.org/ddent-fhir/CodeSystems/DD/DbGAP/phs000888.v1/pht004678.v1.phs000888.v1"
  * target = $umls
  * element
    * code =  #phv00225967.v1
    * display = "CASE_CONTROL_AAA"
    * target 
      * code = #C0162871
      * display = "Abdominal aortic aneurysm"
      * equivalence = #equivalent
      * comment = "* Semantics: problem\n * Assertion: present\n * Prob:  0.867\t\n * Loc: 23-48\n * Matched: Abdominal Aortic Aneurysm\n * Source Text: Case - control status: Abdominal Aortic Aneurysm"
* group[+]
  * source = "http://ddent.ncpi.someplace.org/ddent-fhir/CodeSystems/DD/DbGAP/phs000888.v1/pht004678.v1.phs000888.v1"
  * target = $loinc
  * element
    * code =  #phv00225967.v1
    * display = "CASE_CONTROL_AAA"
    * target 
      * code = #58266-8
      * display = "Ever diagnosed by a doctor as having an abdominal aortic aneurysm"
      * equivalence = #equivalent
      * comment = "* Semantics: problem\n * Assertion: present\n * Prob:  0.867\t\n * Loc: 23-48\n * Matched: Abdominal Aortic Aneurysm\n * Source Text: Case - control status: Abdominal Aortic Aneurysm"
* group[+]
  * source = "http://ddent.ncpi.someplace.org/ddent-fhir/CodeSystems/DD/DbGAP/phs000888.v1/Pht004680_v1.phs000888.v1"
  * target = "http://terminology.hl7.org/CodeSystem/umls"
  * element
    * code =  #phv00226015.v1.p1
    * display = "HEIGHT"
    * target 
      * code = #C0005890
      * display = "Body Height"
      * equivalence = #equivalent
      * comment = "* Semantics: problem\n * Assertion: present\n * Prob:  0.962\t\n * Loc: 11-17\n * Matched: Height\n * Source Text: Subject's height at enrollment"
  * element[+]
    * code =  #phv00226014.v1.p1
    * display = "WEIGHT"
    * target 
      * code = #C0005910
      * display = "Body Weight"
      * equivalence = #equivalent
      * comment = "* Semantics: problem\n * Assertion: present\n * Prob:  0.962\t\n * Loc: 11-17\n * Matched: Weight\n * Source Text: Subject's weight at enrollment"
* group[+]
  * source = "http://ddent.ncpi.someplace.org/ddent-fhir/CodeSystems/DD/DbGAP/phs000888.v1/Pht004680_v1.phs000888.v1"
  * target = $loinc
  * element
    * code =  #phv00226015.v1.p1
    * display = "HEIGHT"
    * target 
      * code = #8302-2
      * display = "Body height"
      * equivalence = #equivalent
      * comment = "* Semantics: problem\n * Assertion: present\n * Prob:  0.962\t\n * Loc: 11-17\n * Matched: Height\n * Source Text: Subject's height at enrollment"
  * element[+]
    * code =  #phv00226014.v1.p1
    * display = "WEIGHT"
    * target 
      * code = #29463-7
      * display = "Body Weight"
      * equivalence = #equivalent
      * comment = "* Semantics: problem\n * Assertion: present\n * Prob:  0.962\t\n * Loc: 11-17\n * Matched: Weight\n * Source Text: Subject's weight at enrollment"
* group[+]
  * source = "http://ddent.ncpi.someplace.org/ddent-fhir/CodeSystems/DD/DbGAP/phs000888.v1/pht005581.v1.phs000888.v1"
  * target = $umls
  * element
    * code =  #phv00265018.v1
    * display = "H1"
    * target 
      * code = #C1305855
      * display = "Body mass index"
      * equivalence = #equivalent
      * comment = "* Semantics: test\n * Assertion: present\n * Prob:  0.493\t\n * Loc: 10-12\n * Matched: BMI\n * Source Text: Subject's BMI over time"
    * target[+] 
      * code = #C0424638
      * display = "Height and Weight"
      * equivalence = #equivalent
      * comment = "* Semantics: test\n * Assertion: present\n * Prob:  0.998\t\n * Loc: 0-40\n * Matched: Height of first qualifying height/weight\n * Source Text: Height of first qualifying height/weight measurement. NOTE: two measurements of >= 99th percentile (BMI) are needed on different calendar days.  H1/W1 and H2/W2 should be the latest two qualifying measurements."
    * code = #phv00265019.v1
    * display = "W1"
    * target
      * code = #C0424638
      * display = "Height and weight"
      * equivalence = #equivalent
      * comment = "* Semantics: test\n * Assertion: present\n * Prob:  0.998\t\n * Loc: 0-40\n * Matched: Height of first qualifying height/weight\n * Source Text: Height of first qualifying height/weight measurement. NOTE: two measurements of >= 99th percentile (BMI) are needed on different calendar days.  H1/W1 and H2/W2 should be the latest two qualifying measurements."
* group[+]
  * source = "http://ddent.ncpi.someplace.org/ddent-fhir/CodeSystems/DD/DbGAP/phs000888.v1/pht005581.v1.phs000888.v1"
  * target = $loinc
  * element
    * code =  #phv00265018.v1
    * display = "H1"
    * target 
      * code = #39156-5
      * display = "Body mass index (BMI) [Ratio]"
      * equivalence = #equivalent
      * comment = "* Semantics: test\n * Assertion: present\n * Prob:  0.937\t\n * Loc: 0-15\n * Matched: Body Mass Index\n * Source Text: Body Mass Index closest to reference date"
* group[+]
  * source = "http://ddent.ncpi.someplace.org/ddent-fhir/CodeSystems/DD/DbGAP/phs000888.v1/pht005584.v1.phs000888.v1"
  * target = $umls
  * element
    * code = #phv00265049.v1
    * display = "BMI"
    * target
      * code = #C0005893
      * display = "Body mass index procedure"
      * equivalence = #equivalent
      * comment = "* Semantics: test\n * Assertion: present\n * Prob:  0.937\t\n * Loc: 0-15\n * Matched: Body Mass Index\n * Source Text: Body Mass Index closest to reference date"
* group[+]
  * source = "http://ddent.ncpi.someplace.org/ddent-fhir/CodeSystems/DD/DbGAP/phs000888.v1/pht005584.v1.phs000888.v1"
  * target = $loinc
  * element
    * code = #phv00265049.v1
    * display = "BMI"
    * target
      * code = #39156-5
      * display = "Body mass index (BMI) [Ratio]"
      * equivalence = #equivalent
      * comment = "* Semantics: test\n * Assertion: present\n * Prob:  0.937\t\n * Loc: 0-15\n * Matched: Body Mass Index\n * Source Text: Body Mass Index closest to reference date"

Instance: Instance-ConceptMap-CUI-To-DD
InstanceOf: ConceptMap
Usage: #definition
* url = "http://ddent.ncpi.someplace.org/ddent-fhir/ConceptMap/CUI/phs000888.v1.p1-CUItoDD"
* identifier.system = "http://ddent.ncpi.someplace.org/ddent-fhir/study/cm/cui-dd"
* identifier.value = "phs000888.v1.p1"
* name = "phs000888.v1.p-CUItoDD"
* title = "Study Concept Map for eMERGE Network Imputed GWAS for 41 Phenotypes"
* status = #draft
* experimental = false
* description = "The electronic Medical Records and Genomics (eMERGE) Network is a consortium of ten participating sites"
* sourceUri = "http://ddent.ncpi.someplace.org/ddent-fhir/ValueSet/CUI/phs000888.v1.p1"
* targetUri = "http://ddent.ncpi.someplace.org/ddent-fhir/ValueSet/DD/phs000888.v1.p1"
* group
  * source = $snomed
  * target = "http://ddent.ncpi.someplace.org/ddent-fhir/CodeSystems/DD/DbGAP/phs000888.v1/pht004678.v1.phs000888.v1"
  * element
    * code = #233985008
    * display = "Abdominal aortic aneurysm"
    * target 
      * code =  #phv00225967.v1
      * display = "CASE_CONTROL_AAA"
      * equivalence = #equivalent
      * comment = "* Semantics: problem\n * Assertion: present\n * Prob:  0.867\t\n * Loc: 23-48\n * Matched: Abdominal Aortic Aneurysm\n * Source Text: Case - control status: Abdominal Aortic Aneurysm"
* group[+]
  * source = $umls
  * target = "http://ddent.ncpi.someplace.org/ddent-fhir/CodeSystems/DD/DbGAP/phs000888.v1/pht004678.v1.phs000888.v1"
  * element
    * code = #C0162871
    * display = "Abdominal aortic aneurysm"
    * target 
      * code =  #phv00225967.v1
      * display = "CASE_CONTROL_AAA"
      * equivalence = #equivalent
      * comment = "* Semantics: problem\n * Assertion: present\n * Prob:  0.867\t\n * Loc: 23-48\n * Matched: Abdominal Aortic Aneurysm\n * Source Text: Case - control status: Abdominal Aortic Aneurysm"
* group[+]
  * source = $loinc
  * target = "http://ddent.ncpi.someplace.org/ddent-fhir/CodeSystems/DD/DbGAP/phs000888.v1/pht004678.v1.phs000888.v1"
  * element
    * code = #58266-8
    * display = "Ever diagnosed by a doctor as having an abdominal aortic aneurysm"
    * target
      * code =  #phv00225967.v1
      * display = "CASE_CONTROL_AAA"
      * equivalence = #equivalent
      * comment = "* Semantics: problem\n * Assertion: present\n * Prob:  0.867\t\n * Loc: 23-48\n * Matched: Abdominal Aortic Aneurysm\n * Source Text: Case - control status: Abdominal Aortic Aneurysm"
* group[+]
  * source = $umls
  * target = "http://ddent.ncpi.someplace.org/ddent-fhir/CodeSystems/DD/DbGAP/phs000888.v1/Pht004680_v1.phs000888.v1"
  * element
    * code = #C0005890
    * display = "Body Height"
    * target 
      * code =  #phv00226015.v1.p1
      * display = "HEIGHT"
      * equivalence = #equivalent
      * comment = "* Semantics: problem\n * Assertion: present\n * Prob:  0.962\t\n * Loc: 11-17\n * Matched: Height\n * Source Text: Subject's height at enrollment"
  * element[+]
    * code = #C0005910
    * display = "Body Weight"
    * target 
      * code =  #phv00226014.v1.p1
      * display = "WEIGHT"
      * equivalence = #equivalent
      * comment = "* Semantics: problem\n * Assertion: present\n * Prob:  0.962\t\n * Loc: 11-17\n * Matched: Weight\n * Source Text: Subject's weight at enrollment"
* group[+]
  * source = $loinc
  * target = "http://ddent.ncpi.someplace.org/ddent-fhir/CodeSystems/DD/DbGAP/phs000888.v1/Pht004680_v1.phs000888.v1"
  * element
    * code = #8302-2
    * display = "Body height"
    * target 
      * code =  #phv00226015.v1.p1
      * display = "HEIGHT"
      * equivalence = #equivalent
      * comment = "* Semantics: problem\n * Assertion: present\n * Prob:  0.962\t\n * Loc: 11-17\n * Matched: Height\n * Source Text: Subject's height at enrollment"
  * element[+]
    * code = #29463-7
    * display = "Body weight"
    * target 
      * code =  #phv00226014.v1.p1
      * display = "WEIGHT"
      * equivalence = #equivalent
      * comment = "* Semantics: problem\n * Assertion: present\n * Prob:  0.962\t\n * Loc: 11-17\n * Matched: Weight\n * Source Text: Subject's weight at enrollment"
* group[+]
  * source = $umls
  * target = "http://ddent.ncpi.someplace.org/ddent-fhir/CodeSystems/DD/DbGAP/phs000888.v1/pht005581.v1.phs000888.v1"
  * element
    * code = #C1305855
    * display = "Body mass index"
    * target 
      * code =  #phv00265018.v1
      * display = "H1"
      * equivalence = #equivalent
      * comment = "* Semantics: test\n * Assertion: present\n * Prob:  0.493\t\n * Loc: 10-12\n * Matched: BMI\n * Source Text: Subject's BMI over time"
  * element[+]
    * code = #C0424638
    * display = "Height and Weight"
    * target[+] 
      * code = #phv00265019.v1
      * display = "W1"
      * equivalence = #equivalent
      * comment = "* Semantics: test\n * Assertion: present\n * Prob:  0.998\t\n * Loc: 0-40\n * Matched: Height of first qualifying height/weight\n * Source Text: Height of first qualifying height/weight measurement. NOTE: two measurements of >= 99th percentile (BMI) are needed on different calendar days.  H1/W1 and H2/W2 should be the latest two qualifying measurements."
* group[+]
  * source = $loinc
  * target = "http://ddent.ncpi.someplace.org/ddent-fhir/CodeSystems/DD/DbGAP/phs000888.v1/pht005581.v1.phs000888.v1"
  * element
    * code = #39156-5
    * display = "Body mass index (BMI) [Ratio]"
    * target
      * code = #phv00265018.v1
      * display = "H1"
      * equivalence = #equivalent
      * comment = "* Semantics: test\n * Assertion: present\n * Prob:  0.493\t\n * Loc: 10-12\n * Matched: BMI\n * Source Text: Subject's BMI over time"
* group[+]
  * source = $umls
  * target = "http://ddent.ncpi.someplace.org/ddent-fhir/CodeSystems/DD/DbGAP/phs000888.v1/pht005584.v1.phs000888.v1"
  * element
    * code = #C0005893
    * display = "Body mass index procedure"
    * target
      * code = #phv00265049.v1
      * display = "BMI"
      * equivalence = #equivalent
      * comment = "* Semantics: test\n * Assertion: present\n * Prob:  0.937\t\n * Loc: 0-15\n * Matched: Body Mass Index\n * Source Text: Body Mass Index closest to reference date"
* group[+]
  * source = $loinc
  * target = "http://ddent.ncpi.someplace.org/ddent-fhir/CodeSystems/DD/DbGAP/phs000888.v1/pht005584.v1.phs000888.v1"
  * element
    * code = #39156-5
    * display = "Body mass index (BMI) [Ratio]"
    * target
      * code = #phv00265049.v1
      * display = "BMI"
      * equivalence = #equivalent
      * comment = "* Semantics: test\n * Assertion: present\n * Prob:  0.937\t\n * Loc: 0-15\n * Matched: Body Mass Index\n * Source Text: Body Mass Index closest to reference date"


Instance: ConceptMap-UMLS
InstanceOf: ConceptMap
Usage: #definition
* url = $umls
* name = "UMLS Analogs"
* title = "Alternate mappings that can be made for UMLS terms"
* status = #draft
* experimental = false
* description = "These terms may appear as part of a dataset's encoding. This map will permit systematic expansion to other terminologies"
* sourceUri = $umls
* targetUri = $common-systems
* group
  * source = $umls
  * target = $snomed
  * element 
    * code = #C0162871 
    * display = "Abdominal aortic aneurysm"
    * target
      * code = #233985008
      * display = "Abdominal aortic aneurysm"
      * equivalence = #equivalent
* group[+]
  * source = $umls
  * target = $loinc
  * element
    * code = #C0162871 
    * display = "Abdominal aortic aneurysm"
    * target
      * code = #58266-8 
      * display = "Ever diagnosed by a doctor as having an abdominal aortic aneurysm"
      * equivalence = #equivalent
  * element[+]
    * code = #C0005890 
    * display = "Body height"
    * target
      * code = #8302-2
      * display = "Body height"
      * equivalence = #equivalent
  * element[+]
    * code = #C0005910 
    * display = "Body Weight"
    * target 
      * code = #29463-7 
      * display = "Body Weight"
      * equivalence = #equivalent
  * element[+]
    * code = #C1305855
    * display = "Body mass index"
    * target
      * code = #39156-5 
      * display = "Body mass index (BMI) [Ratio]"
      * equivalence = #equivalent
