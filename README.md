Semantic Geoprocessing Workflows
=============================================
*Abstract:* A method for capturing geoprocessing workflows in Geographic Information Systems (GIS) in terms of linked data, and for automatically typing them with semantics on the level of their operation and data nodes. In this form, workflows can be easily published on the Web and queried for types of results, inputs or tools. This allows GIS analysts to reuse their workflows in a modular way, i.e., to select, adapt and recommend workflow resources based on compatible semantic types. We suggest an OWL-based typing scheme for GIS workflows based on spatial core concepts and an algorithm which types workflow nodes by backtracking over well-known types of GIS operations, making use of their operational signature and OWL RL inference. The method is implemented in Python and was tested on moderately complex example workflows generated with GIS workflow software (ArcGIS's Model Builder).
For details, see references.

*Keywords:* geoprocessing; spatial computing; semantic web; geographic information science

Members & contributors:
* Dr. **Simon Scheider** ([home](http://geographicknowledge.de))
* Dr. **Andrea Ballatore** ([home](http://sites.google.com/site/andreaballatore))


Contents
----------------------
- 'semworkflows.py': the Python module for enriching RDF workflows. It loads workflows and ontologies, applies OWL RL inference, as well as enrichment rules, and runs competency queries over the enriched workflows
- 'workflows/': A collection of example workflows translated into RDF using the Workflow.rdf vocab
- 'ontologies/': contains the ontologies [AnalysisData.rdf](http://geographicknowledge.de/vocab/AnalysisData.rdf), [GISConcepts.rdf](http://geographicknowledge.de/vocab/GISConcepts.rdf), and [Workflow.rdf](http://geographicknowledge.de/vocab/Workflow.rdf)
- 'enrichments/': contains SPARQL enrichment rules for GIS operation types and type propagation rules
- 'questions/': contains the competency queries run over enriched workflows
- 'output/': enriched triple base written into an RDF/Turtle file.

Usage
----------------------
The code is written in Python 2.7 and depends on:
* [RDFLib](https://github.com/RDFLib/rdflib) (# pip install rdflib)
* [RDFClosure](https://github.com/RDFLib/OWL-RL) (install manually from https://github.com/RDFLib/OWL-RL)

References
----------
- Simon Scheider and Andrea Ballatore (2016): Semantic Typing of Geoprocessing Workflows ([preprint](http://geographicknowledge.de/pdf/semantic-typing-geoprocessing.pdf), under review)
