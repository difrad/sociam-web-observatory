#3> <> prov:specializationOf <https://github.com/difrad/sociam-web-observatory/blob/master/data/source/snap-stanford-edu/phrase-cluster/src/shift-B-and-C-records.awk> .
#
# See http://www.memetracker.org/data.html for format.

BEGIN {
   FS="	" # Tab
} 

{
   if( $0 != "format:" ) {
      if( $1 != "<ClSz>" && $2 != "<QtFq>" && $3 != "<Tm>" ) {
         if( $1 != "" && NF >= 4 ) {
            print
            #print "--A--",$0
         }else if( $2 != "" && NF >= 4 ) {
            #print "--B--",$0
            printf("\t\t\t%s\n",$0)
         }else if( $3 != "" && NF >= 4 ) {
            #print "--C--",$0
            printf("\t\t\t\t\t\t\t%s\n",$0)
         }else{
            #print "--?-- ",NF,$0
         }
      }else {
         #print "  H  ",$0 # Header
      }
   }else {
      #print "  C  ",$0 # Comment
   }
}
