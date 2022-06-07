set terminal postscript eps enhanced linewidth 1 font "Courier,14"

set size 0.5,0.5
set origin 0.0, 0.0
# set multiplot layout 2,2 columnsfirst margins 0.15,0.9,0.1,0.9 spacing 0.2
set key top left

set style data histogram
set style histogram clustered gap 1
set style fill pattern 1 border -1

# set output "index_time_sydney.eps"
# set title "Sydney"
# set xlabel "# points (*10^5)" font "Helvetica-Bold"   
# set ylabel "CPU Cost ( s )" font "Helvetica-Bold"
# set yrange [0:30]
# plot "sydney.dat" u 2:xticlabels(1) title "ST-Cube", "sydney.dat" u 3:xticlabels(1) title "3DR-Tree"

set output "index_time_nyc.eps"
set title "New York"
set xlabel "# points (*10^5)" font "Helvetica-Bold"   
set ylabel "CPU Cost ( s )" font "Helvetica-Bold"
set yrange [0:30]
plot "nyc.dat" u 2:xticlabels(1) title "ST-Cube", "nyc.dat" u 3:xticlabels(1) title "3DR-Tree"

# unset multiplot
set output