set terminal postscript eps enhanced linewidth 1 font "Courier,14"
set output "realtime_nyc.eps"
set size 0.5, 0.5
set origin 0.0, 0.0
# set multiplot layout 2,2 columnsfirst margins 0.1,0.9,0.1,0.9 spacing 0.2
set key top left



set style data histogram
set style histogram clustered gap 1.5
set style fill pattern 1 border -1

set title "New York"
set xlabel "Size of Rectangle (km)" font "Helvetica-Bold"   
set ylabel "CPU Cost ( ms )" font "Helvetica-Bold"
set xrange [-1:5]
set xtics ("5" 0, "10" 1, "15" 2, "20" 3, "25" 4)
set yrange [0:5]

plot "nyc.dat" u 2 title "maxlevel=4","nyc.dat" u 3 title "maxlevel=5","nyc.dat" u 4 title "maxlevel=6","nyc.dat" u 5 title "maxlevel=7"


# unset multiplot
set output