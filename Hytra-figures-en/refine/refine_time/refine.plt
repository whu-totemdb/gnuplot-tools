set terminal postscript eps enhanced linewidth 1 font "Courier,14"
set output "refine.eps"
set size 1,1
set origin 0.0, 0.0
set multiplot layout 2,2 columnsfirst margins 0.1,0.9,0.1,0.9 spacing 0.2
set key top left



set style data histogram
set style histogram clustered gap 1.5
set style fill pattern 1 border -1

set title "Range Query Cost - maxLevel=4"
set xlabel "size o rectangle (km)" font "Helvetica-Bold"   
set ylabel "CPU Cost ( s )" font "Helvetica-Bold"
set xrange [-1:5]
set yrange [0:70]
plot "4.dat" u 2:xticlabels(1) title "refine"

unset multiplot
set output