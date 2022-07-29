set terminal postscript eps enhanced linewidth 2 "Helvetica" 17
set size 0.5,0.5
set output 'indexingtime-nyc.eps'

set xlabel 'Data Size(%)'
set ylabel 'Indexing Time(s)'

set xrange [10:110]
set xtics 20,20,100


plot "nyc.dat" u 1:2 w lp lw 2 title "Hytra", "nyc.dat" u 1:3 w lp lw 2 title "R-Tree"

unset output



