#3> <> prov:specializationOf <https://github.com/difrad/sociam-web-observatory/blob/master/data/source/snap-stanford-edu/phrase-cluster/src/shift-B-and-C-records.awk> .
#
# See http://www.memetracker.org/data.html for format.
#
# Example of a record in the file: lines below map to the fields above. 
# First line is record A, followed by B and 3 C records. Then another B and 2 C records.
#
#  2  8  we're not commenting on that story i'm afraid   2131865
#
#     3  3  we're not commenting on that    489007
#
#        2008-08-18 14:23:05  1  M  http://business.theage.com.au/business/bb-chief-set-to-walk-plank-20080818-3xp7.html
#
#        2008-11-26 01:27:13  1  B  http://sfweekly.com/2008-11-26/news/buy-line
#
#        2008-11-27 18:55:30  1  B  http://aconstantineblacklist.blogspot.com/2008/11/re-researcher-matt-janovic.html
#
#     5  2  we're not commenting on that story      2131864
#
#        2008-12-08 14:50:18  3  B  http://videogaming247.com/2008/12/08/home-in-10-days-were-not-commenting-on-that-story-says-scee
#
#        2008-12-08 19:35:31  2  B  http://jplaystation.com/2008/12/08/home-in-10-days-were-not-commenting-on-that-story-says-scee

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
            printf("\t\t\t\t\t\t%s\n",$0)
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
