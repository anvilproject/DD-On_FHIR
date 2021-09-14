/** Group object, patients and Research Subjects that make up that group */

/**
  * Because we aren't using one of FHIR's recommended scopes, we can get away with 
  * having a generic consent object that we'll point to by all Research Subjects
  * within that consent group (normally, research scope would force this consent
  * object to be tied directly to a particular research subject)*/
Instance: consent-hmb      
InstanceOf: Consent
Description: "Consent for Health/Medical/Biomedical"
* identifier.system = "https://www.ncbi.nlm.nih.gov/projects/gap/consent-group-identifier"
* identifier.value = "HMB"
* status = #inactive
* scope = $umls#C0035168 "Research"
* category = #rsdid
* policyRule = #hipaa-research

/**
  * To tag each of our groups correctly via the value[X] field, we need a Code System
  */
CodeSystem: Study_phs000888_groups
Id: phs000888-groups
Title: "eMERGE Groups"
Description: "Group types associated with study phs000888."
* ^url = $phs000888-consents
* ^content = #complete
* ^identifier.system = "https://www.ncbi.nlm.nih.gov/projects/gap/group-identifier"
* ^identifier.value = "phs000888"
* #AllSubjects "All subjects"
* #GroupConsentHMB "Consent Group 01 HMB" 
* #GroupConsent02 "Consent Group 02"


/**
  * The group contains all members of the relevant super/subset of interest. In this
  * case, we specify that only members of a given consent group are members and those
  * are added individually as entities.
  * 
  * One should imagine other groups would exist for each of the consent groups as well
  * as a group that represents the entire study as well.
  */
Instance: research-group-phs000888-hmb
InstanceOf: Group
Usage: #example
Description: "Example of grouping subjects together for high level summarization"
* type = #person
* actual = true
* name = "Consented with HMB"
* quantity = 1
* characteristic
  * code = $umls#C0742766 "Consent signed"
  * valueCodeableConcept
    * coding
      * system = "https://www.ncbi.nlm.nih.gov/projects/gap/group-identifier/phs000888"
      * code = #GroupConsentHMB 
* characteristic[=].exclude = false
* member
  * entity = Reference(patient-example-pt001)
  * entity[+] = Reference(patient-example-pt002)
  * entity[+] = Reference(patient-example-pt003)
  * entity[+] = Reference(patient-example-pt004)
  * entity[+] = Reference(patient-example-pt005)

/**
  * Each patient will have at least one matching Research Subject associated with it. That
  * Research Subject will point toward the consent object
  */
/* ---------------------- Patient 001 --------------------------------------------*/
Instance: patient-example-pt001
InstanceOf: Patient
Usage: #example
Description: "Example of the representation of Patient."

Instance: research-subject-example-pt001
InstanceOf: ResearchSubject
Usage: #example
Description: "Example of the representation of Research Subject."
* status = #on-study
* study = Reference(research-study-phs000888.v1.p1)
* individual = Reference(patient-example-pt001)
* consent = Reference(consent-hmb)

/* ---------------------- Patient 002 --------------------------------------------*/
Instance: patient-example-pt002
InstanceOf: Patient
Usage: #example
Description: "Example of the representation of Patient."

Instance: research-subject-example-pt002
InstanceOf: ResearchSubject
Usage: #example
Description: "Example of the representation of Research Subject."
* status = #on-study
* study = Reference(research-study-phs000888.v1.p1)
* individual = Reference(patient-example-pt002)
* consent = Reference(consent-hmb)

/* ---------------------- Patient 003 --------------------------------------------*/
Instance: patient-example-pt003
InstanceOf: Patient
Usage: #example
Description: "Example of the representation of Patient."

Instance: research-subject-example-pt003
InstanceOf: ResearchSubject
Usage: #example
Description: "Example of the representation of Research Subject."
* status = #on-study
* study = Reference(research-study-phs000888.v1.p1)
* individual = Reference(patient-example-pt003)
* consent = Reference(consent-hmb)

/* ---------------------- Patient 004 --------------------------------------------*/
Instance: patient-example-pt004
InstanceOf: Patient
Usage: #example
Description: "Example of the representation of Patient."

Instance: research-subject-example-pt004
InstanceOf: ResearchSubject
Usage: #example
Description: "Example of the representation of Research Subject."
* status = #on-study
* study = Reference(research-study-phs000888.v1.p1)
* individual = Reference(patient-example-pt004)
* consent = Reference(consent-hmb)

/* ---------------------- Patient 005 --------------------------------------------*/
Instance: patient-example-pt005
InstanceOf: Patient
Usage: #example
Description: "Example of the representation of Patient."

Instance: research-subject-example-pt005
InstanceOf: ResearchSubject
Usage: #example
Description: "Example of the representation of Research Subject."
* status = #on-study
* study = Reference(research-study-phs000888.v1.p1)
* individual = Reference(patient-example-pt005)
* consent = Reference(consent-hmb)


