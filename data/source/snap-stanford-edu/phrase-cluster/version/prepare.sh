#!/bin/bash
#
#3> <> prov:specializationOf <https://github.com/difrad/sociam-web-observatory/blob/master/data/source/snap-stanford-edu/phrase-cluster/version/prepare.sh>;
#3>    a conversion:PreparationTrigger;
#3>    foaf:name "2manual.sh";
#3> rdfs:seeAlso
#3>  <https://github.com/timrdf/csv2rdf4lod-automation/wiki/Automated-creation-of-a-new-Versioned-Dataset>,
#3>  <https://github.com/timrdf/csv2rdf4lod-automation/wiki/Conversion-trigger>,
#3>  <https://github.com/timrdf/csv2rdf4lod-automation/wiki/Conversion-cockpit>;
#3> .
#
# This script is responsible for processing files in source/ and storing their modified forms
# as files in the manual/ directory. These modified files should be ready for conversion.
# 
# This script is also responsible for constructing the conversion trigger
#   (e.g., with cr-create-conversion-trigger.sh -w manual/*.csv)
#
# When this script resides in a cr:directory-of-versions directory,
# (e.g. source/datahub-io/corpwatch/version)
# it is invoked by retrieve.sh (or cr-retrieve.sh).
#   (see https://github.com/timrdf/csv2rdf4lod-automation/wiki/Directory-Conventions)
#
# When this script is invoked, the conversion cockpit is the current working directory.
#

cat        source/clust-qt08080902w3mfq5.txt | awk -f ../../src/shift-B-and-C-records.awk  > manual/clust-qt08080902w3mfq5.csv
justify.sh source/clust-qt08080902w3mfq5.txt manual/clust-qt08080902w3mfq5.csv ../../src/shift-B-and-C-records.awk

# Create the conversion trigger:
cr-create-conversion-trigger.sh -w manual/clust-qt08080902w3mfq5.csv 

