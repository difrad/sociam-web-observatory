#3> <#> a <http://purl.org/twc/vocab/conversion/CSV2RDF4LOD_environment_variables> ;
#3>     rdfs:seeAlso 
#3>     <http://purl.org/twc/page/csv2rdf4lod/distributed_env_vars>,
#3>     <https://github.com/timrdf/csv2rdf4lod-automation/wiki/Script:-source-me.sh> .

export CSV2RDF4LOD_CONVERT_PERSON_URI="http://tw.rpi.edu/instances/DominicDiFranzo"
source /home/dd1y12/prizms/sociam-web-observatory/data/source/csv2rdf4lod-source-me-for-sociam.sh
alias sociam='sudo su sociam'
export PATH=$PATH`/home/dd1y12/opt/prizms/bin/install/paths.sh`
export CSV2RDF4LOD_HOME="/home/dd1y12/opt/prizms/repos/csv2rdf4lod-automation"
export DATAFAQS_HOME="/home/dd1y12/opt/prizms/repos/DataFAQs"
export JENAROOT=/home/dd1y12/opt/apache-jena-2.10.0
export CLASSPATH=$CLASSPATH`/home/dd1y12/opt/prizms/bin/install/classpaths.sh`
