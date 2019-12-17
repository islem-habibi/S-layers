set arrow from 1,1.11 to 1167,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for sp|Q9RRB6|SLPA_DEIRA"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:1167]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "/usr/opt/www/pub/CBS/services/TMHMM-2.0/tmp/TMHMM_31131/sp_Q9RRB6_SLPA_DEIRA.eps"
plot "/usr/opt/www/pub/CBS/services/TMHMM-2.0/tmp/TMHMM_31131/sp_Q9RRB6_SLPA_DEIRA.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
