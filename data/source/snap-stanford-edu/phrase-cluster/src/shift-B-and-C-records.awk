#3> <> prov:specializationOf <https://github.com/difrad/sociam-web-observatory/blob/master/data/source/snap-stanford-edu/phrase-cluster/src/shift-B-and-C-records.awk> .

BEGIN {
   FS="  " # Tab
} 

{
   if( $1 != "" && NF >= 4 ) {
      print "--A--",$0
   }else if( $2 != "" && NF >= 4 ) {
      print "--B--",$0
   }else{
      print
   }
}
