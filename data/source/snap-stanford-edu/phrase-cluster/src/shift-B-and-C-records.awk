#3> <> prov:specializationOf <> .

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
