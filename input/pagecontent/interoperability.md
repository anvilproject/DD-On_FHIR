### Interoperability Through Standardization
A fundamental objective is to make certain that data associated with studies is not only accessible by those with valid research interests, but also interpretable. To make interoperability possible, it is recognized that the data should be properly identified according to standard terminologies. 

The difficulty with doing this is that there is a lot of human effort that would be required in order to do this for the large number of pre-existing studies, a task which is likely not funded. As such, it is necessary to think of ways to automate this effort as best as possible wherever we can. 

#### Automating Variable Terminologies Through NLP
Natural Language Processing (NLP) can be employed in many cases to the translate descriptive text provided by researchers into recognizable terminologies when employed by research aware NLP software.

These output terminologies can then be mapped to other terminologies where possible. For instance, a descriptive text that can be confidently mapped to a particular Concept Unique Identifier (CUI) can then be mapped to an appropriate LOINC or SNOMED term via the basic mapping technologies provided by FHIR's ConceptMaps. 

#### ConceptMaps
ConceptMaps provide a simple translation mechanism for mapping terms from one ValueSet to another. These ValueSets can be comprised of one or more distinct terminologies, so, for instance, if the system provides a mapping between CUIs and their related terms from SNOMED, LOINC and other terminologies, it would then be a straight forward leap from the output from the NLP (a CUI) to then provide the codes appropriate codes that would then be used by end user queries. 

For example, if we have the variable, phv0226015, which is a part of the table, pht004680, where the description of the variable was mapped tot he CUI, C0005890, for Body height, a simple query such as the one below could return the known mappings for that code:

  ConceptMap/12345/$translate?code=C0005890

For this example, we'll assume that the ConceptMap with the id 12345 was actually the ConceptMap, ConceptMap-UMLS. Based on the returns from that mapping, we could then populate additional codes to broaden the Observation's interoperability potential. It may look like the following:

    Instance: observation-pt001-phv00226015
    InstanceOf: Observation
    Title: "HEIGHT - pt001"
    Description: "Subject ID"
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

The table identifier, $pht004680, would exist as as a CodeSystem/ValueSet containing each of that table's variables as terms. The final observation would contain a valid reference to the original source of the value (the #phv coding), the CUI from the NLP match and, finally, the LOINC code that would probably be considered the gold standard terminology for this type of observation.

Mappings between these terminologies is being done by various groups, though, not necessarily in FHIR, and there will certainly be gaps that will require some effort to build ourselves. 

#### TODO

##### DDENT
Robert Carroll's team has a python library that can utilize an NLP service to populate CUIs for variables from DbGAP data dictionaries. This currently supports CLAMP but we have plans to incorporate other NLP systems as time permits. This will not provide 100% coverage of variables, but it does automate much of the work. It does have some amount of inappropriate terms as well, so there will need to be some degree of human verification of the final output. For other groups to use this service, permission from the tool's authors will be necessary. 

In addition to performing the mapping which can be used for help doing harmonization, the system generates ConceptMaps going in both directions: from the dbgap table entries to CUIs, and visa-versa. We could theoretically provide a service which provides lookups for all variables that match a particular CUI. In fact, we do have a proof of concept website, WebDDENT which does exactly that along with providing a simple mechanism for importing DbGAP studies and building out the Data Dictionary Concept Maps described above. 

This service provides only the first step in the process, however. Additional work needs to be done collecting mappings and building out the appropriate concept maps required to enable to translations to LOINC, SNOMED, etc. 

Once those are in place, it makes sense to provide a web service that stands in front of the FHIR service containing those resources. This service can manage caching of terms and iterate over the various concept maps necessary to complete all of the translations in order to make the process run more quickly and be easier to use. Much of the work of such a service will have already been done as a result of the work done on WebDDENT, but there will need to be some additional work as well to make sure it's robust and maximally efficient. 