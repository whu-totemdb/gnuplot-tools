set terminal postscript eps enhanced linewidth 1 font "Courier,14"
set output "memAndDisk.eps"
set size 1,1
set origin 0.0, 0.0
set multiplot layout 2,2 columnsfirst margins 0.1,0.9,0.1,0.9 spacing 0.2
set key top center



set style data histogram
set style histogram clustered gap 1.5
set style fill pattern 3 border -1

set title "Range Query Cost - maxLevel=4"
set xlabel "time duration (h)" font "Helvetica-Bold"   
set ylabel "CPU Cost ( ms )" font "Helvetica-Bold"
set xrange [-1:5]
set xtics ()
set yrange [0:1.5]
set y2range [0:1500]
set y2tics
plot "4.dat" u 2:xticlabels(1) axes x1y1 title "Memory","4.dat" u 3:xticlabels(1) axes x1y2 title "Disk"

set title "Range Query Cost - maxLevel=6"
set xlabel "time duration (h)" font "Helvetica-Bold"   
set ylabel "CPU Cost ( ms )" font "Helvetica-Bold"
set xrange [-1:5]
set xtics ()
set yrange [0:15]
set y2range [0:1500]
set y2tics
plot "6.dat" u 2:xticlabels(1) axes x1y1 title "Memory","6.dat" u 3:xticlabels(1) axes x1y2 title "Disk"

set title "Range Query Cost - maxLevel=5"
set xlabel "time duration (h)" font "Helvetica-Bold"   
set ylabel "CPU Cost ( ms )" font "Helvetica-Bold"
set xrange [-1:5]
set xtics ()
set yrange [0:2.5]
set y2range [0:2500]
set y2tics
plot "5.dat" u 2:xticlabels(1) axes x1y1 title "Memory","5.dat" u 3:xticlabels(1) axes x1y2 title "Disk"

set title "Range Query Cost - maxLevel=7"
set xlabel "time duration (h)" font "Helvetica-Bold"   
set ylabel "CPU Cost ( ms )" font "Helvetica-Bold"
set xrange [-1:5]
set xtics ()
set yrange [0:150]
set y2range [0:3000]
set y2tics
plot "7.dat" u 2:xticlabels(1) axes x1y1 title "Memory","7.dat" u 3:xticlabels(1) axes x1y2 title "Disk"


unset multiplot
set output