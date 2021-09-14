/** 
 * Research Study will singularly represent the study as a single unit. Participants
 * will be added to the study as Research Subjects and added to the corresponding 
 * consent group as an entity. All participants will also be added as entities to a 
 * single group that represents the entire study. 
 */

Instance: research-study-phs000888.v1.p1
InstanceOf: ResearchStudy
Usage: #example
Description: "The electronic Medical Records and Genomics (eMERGE) Network is a consortium of ten participating sites (Cincinnati Children's Hospital Medical Center/Boston Children's Hospital, Children's Hospital of Philadelphia, Essentia Institute of Rural Health, Marshfield Clinic Research Foundation and Pennsylvania State University, Geisinger Clinic, Group Health Cooperative/University of Washington, Mayo Clinic, Icahn School of Medicine at Mount Sinai, Northwestern University, Vanderbilt University Medical Center) funded by the NHGRI to investigate the use of electronic medical record (EMR) systems for genomic research. The goal of eMERGE is to conduct genome-wide association studies in approximately 55,000 individuals using EMR-derived phenotypes and DNA from linked Biorepositories."
* title = "eMERGE Network Imputed GWAS for 41 Phenotypes"
* status = #completed 
* primaryPurposeType = #diagnostic 

/**
 * For this group, it is assumed that all study participants are present in entity list
 */
Instance: research-group-phs000888-all
InstanceOf: Group
Usage: #example
Description: "Example of grouping subjects together for high level summarization"
* type = #person
* actual = true
* name = "all study members"
* quantity = 1
* characteristic
  * code = $umls#C0947630 "Scientific Study"
  * valueCodeableConcept
    * coding
      * system = "https://www.ncbi.nlm.nih.gov/projects/gap/group-identifier/phs000888"
      * code = #AllSubjects
* characteristic[=].exclude = false
* member
  * entity = Reference(patient-example-pt001)
  * entity[+] = Reference(patient-example-pt002)
  * entity[+] = Reference(patient-example-pt003)
  * entity[+] = Reference(patient-example-pt004)
  * entity[+] = Reference(patient-example-pt005)