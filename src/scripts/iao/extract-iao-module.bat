Rem Merging the iao.owl with the extracted modules
robot merge --input iao.owl extract --method MIREOT --branch-from-term "http://purl.obolibrary.org/obo/IAO_0000030" --output ../../ontology/imports/iao-module.owl
Rem Annotates the output with a commentary to the origin of the content 
robot annotate --input ../../ontology/imports/iao-module.owl --ontology-iri http://open-energy-ontology.org/ontology/imports/iao-module.owl --version-iri http://open-energy-ontology.org/ontology/imports/iao-module.owl --annotation rdfs:comment "This file contains externally imported content from the Information Artifact Ontology (IAO) for import into the Open Energy Ontology (OEO). It is automatically extracted using ROBOT." --output ../../ontology/imports/iao-module.owl
Rem Annotates each axiom with the ontology IRI, using prov:wasDerivedFrom
robot annotate --input ../../ontology/imports/iao-module.owl --annotate-derived-from true --annotate-defined-by true --output ../../ontology/imports/iao-module.owl