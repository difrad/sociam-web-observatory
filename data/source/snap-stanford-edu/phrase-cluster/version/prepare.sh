#3> <> prov:specializationOf <https://github.com/difrad/sociam-web-observatory/blob/master/data/source/snap-stanford-edu/phrase-cluster/version/prepare.sh> .

cat source/clust-qt08080902w3mfq5.txt | awk -f ../../src/shift-B-and-C-records.awk  > manual/clust-qt08080902w3mfq5.csv
