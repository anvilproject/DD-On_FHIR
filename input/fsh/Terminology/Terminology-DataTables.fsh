CodeSystem: Pht004678_v1_p1
Id: phs000888-pht004678.v1.p1
Title: "eMERGE_Imputed_Subject_Phenotypes"
Description: "The dataset provides information about presence/absence of medical diagnoses, including AAA, ADHD, AMD, appendicitis, asthma and n=34 other case/control statuses."
* ^url = $pht004678
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2021-08-19"
* ^publisher = "NCPI FHIR Works"
* ^content = #complete
* ^identifier.system = "https://www.ncbi.nlm.nih.gov/projects/gap/table_identifier"
* ^identifier.value = "pht004678.v1.p1"
* #phv00225961.v1.p1 "SUBJID" "De-identified Subject- eMERGE ID"
* #phv00225962.v1.p1 "SEX" "Gender of participant"
* #phv00225963.v1.p1 "DECADE_BIRTH" "Decade of birth"
* #phv00225964.v1.p1 "YEAR_BIRTH" "Year of Birth for Pediatrics"
* #phv00225965.v1.p1 "ETHNICITY" "Ethnicity of participant"
* #phv00225966.v1.p1 "RACE" "Race of participant"
* #phv00225967.v1.p1 "CASE_CONTROL_AAA" "Case - control status: Abdominal Aortic Aneurysm"
* #phv00225968.v1.p1 "CASE_CONTROL_ACEI" "Case - control status: Ace-I Cough"
* #phv00225969.v1.p1 "CASE_CONTROL_ADHD" "Case - control status: Attention Deficit Hyperactivity Disorder"
* #phv00225970.v1.p1 "CASE_CONTROL_AMD" "Case - control status: Age-related macular disease"
* #phv00225971.v1.p1 "CASE_CONTROL_APPENDICITIS" "Case - control status: Appendicitis"
* #phv00225972.v1.p1 "CASE_CONTROL_ASTHMA" "Case - control status: Asthma"
* #phv00225973.v1.p1 "CASE_CONTROL_ATOPICDERMATITIS" "Case - control status: Atopic Dermatitis"
* #phv00225974.v1.p1 "CASE_CONTROL_AUTISM" "Case - control status: Autism"

CodeSystem: Phv00225963_v1_p1
Id: phs000888.pht004678.phv00225963.v1.p1
Title: "Decade of birth"
Description: "The dataset provides information about presence/absence of medical diagnoses, including AAA, ADHD, AMD, appendicitis, asthma and n=34 other case/control statuses."
* ^url = $phv00225963
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2021-08-19"
* ^publisher = "NCPI FHIR Works"
* ^content = #complete
* ^identifier.system = "https://www.ncbi.nlm.nih.gov/projects/gap/variable_identifier"
* ^identifier.value = "phv00225963.v1.p1"
* #1 "1900-1919"
* #2 "1920-1929"
* #3 "1930-1939"
* #4 "1940-1949"
* #5 "1950-1959"
* #6 "1960-1960"
* #7 "1970-1979"
* #8 "1980-1989"
* #9 "1990-1999"
* #10 "Year 2000 and later"

ValueSet: Phv00225963_vs
Id: phs000888.pht004678.phv00225963-vs
Title: "Values_for_Phv00225963-vs"
Description: "Values allowed for Phv00225962"
* $phv00225963#1 "1900-1919"
* $phv00225963#2 "1920-1929"
* $phv00225963#3 "1930-1939"
* $phv00225963#4 "1940-1949"
* $phv00225963#5 "1950-1959"
* $phv00225963#6 "1960-1960"
* $phv00225963#7 "1970-1979"
* $phv00225963#8 "1980-1989"
* $phv00225963#9 "1990-1999"
* $phv00225963#10 "Year 2000 and later"
* $umls#C1705492 "Missing"
* $umls#C439673 "Unknown"

CodeSystem: Pht004680_v1_p1
Id: phs000888-pht004680.v1.p1
Title: "EMERGEII_BMI_merged"
Description: "The dataset provides data of repeat BMI/height/weight measurements and age of observation."
* ^url = $pht004680
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2021-08-19"
* ^publisher = "NCPI FHIR Works"
* ^content = #complete
* ^identifier.system = "https://www.ncbi.nlm.nih.gov/projects/gap/table_identifier"
* ^identifier.value = "pht004680.v1.p1"
* #phv00226013.v1.p1 "SUBJID" "De-identified Subject- eMERGE ID"
* #phv00226014.v1.p1 "WEIGHT" "Subject's weight at enrollment"
* #phv00226015.v1.p1 "HEIGHT" "Subject's height at enrollment"
* #phv00226016.v1.p1 "BODY_MASS_INDEX" "Subject's BMI over time"
* #phv00226017.v1.p1 "AGE_OBSERVATION" "Age when clinical event was recorded in record"
* #phv00226018.v1.p1 "YEAR_OBSERVATION" "Year when clinical event was recorded in record"
* #phv00226019.v1.p1 "VISIT_NUMBER" "A database generated unique key created for weight, height, BMI repeated values"


ValueSet: Phs000888_v1_p1_CUIs
Id: phs000888.v1.p1-cuis
Title: "CUIs mapped to phs000888.v1.p1"
Description: "CUIs mapped to phs000888.v1.p1"
* $snomed#233985008
* $umls#C0162871 "Abdominal aortic aneurysm"
* $umls#C0005890 "Body Height"
* $umls#C0005910 "Body Weight"
* $umls#C1305855 "Body mass index"
* $umls#C0005893 "Body mass index procedure"
* $umls#C0424638 "Height and weight"
* $loinc#8302-2 "Body height"
* $loinc#29463-7 "Body Weight"
* $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* $loinc#58266-8 "Ever diagnosed by a doctor as having an abdominal aortic aneurysm"
