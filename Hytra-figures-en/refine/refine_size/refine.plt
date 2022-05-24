set terminal postscript eps enhanced linewidth 1 font "Courier,14"
set output "refine.eps"
set size 1,1
set origin 0.0, 0.0
set multiplot layout 2,2 columnsfirst margins 0.1,0.9,0.1,0.9 spacing 0.2
set key top center



set style data histogram
set style histogram clustered gap 1.5
set style fill pattern 1 border -1

set title "Number of refinement - maxLevel=4"
set xlabel "size of rectangle (km)" font "Helvetica-Bold"   
set ylabel "refinement ( 10^5 )" font "Helvetica-Bold"
set xrange [-1:5]
set yrange [0:5]
plot "4.dat" u 2:xticlabels(1) t "refinement"

unset multiplot
set output