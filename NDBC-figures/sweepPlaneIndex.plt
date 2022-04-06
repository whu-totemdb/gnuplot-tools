set terminal postscript eps enhanced linewidth 1 font "Courier,14"
set output "sweepPlaneIndex.eps"
set size 1,1
set origin 0.0, 0.0
set multiplot layout 2,1 columnsfirst margins 0.15,0.9,0.1,0.9 spacing 0.2
set key top left

set style data histogram
set style histogram clustered gap 1
set style fill pattern 1 border -1

set title "Index Construction Cost of Sweeping Plane"
set xlabel "maxLevel" font "Helvetica-Bold"   
set ylabel "CPU Cost ( ms )" font "Helvetica-Bold"
set yrange [0:1000]
plot "sweepPlaneIndexTime.dat" u 2:xticlabels(1) title "Initial Creation","sweepPlaneIndexTime.dat" u 3:xticlabels(1) title "Merge Update","sweepPlaneIndexTime.dat" u 4:xticlabels(1) title "Total"


set style data histogram
set style histogram clustered gap 1
set style fill solid 0.4 border
set title "Index Size of Sweeping Plane"
set xlabel "maxLevel" font "Helvetica-Bold"
set ylabel "Number of Keys" font "Helvetica-Bold"
set yrange [0:400]
plot "sweepPlaneIndexSize.dat" u 2:xticlabels(1) title "Index Size"



unset multiplot
set output