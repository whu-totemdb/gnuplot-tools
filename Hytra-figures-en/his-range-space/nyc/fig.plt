set terminal postscript eps enhanced linewidth 1 font "Courier,12"
set output "rq_s_mta_4.eps"
set size 0.5,0.5
set origin 0.0, 0.0
# set multiplot layout 2,2 columnsfirst margins 0.1,0.9,0.1,0.9 spacing 0.16
# set size 0.5,0.5
# set origin 0,0.5
# set key top center
# set title "MTA"
# set xlabel "Size of Rectangle (km)" font "Helvetica-Bold"
# set ylabel "CPU Cost ( ms )" font "Helvetica-Bold"
# set xrange [1:5]
# set yrange [0:4]
# set xtics ("5" 1, "10" 2, "15" 3, "20" 4, "25" 5)
# plot "1.dat" u 1:2 w lp lw 3 pt 2 ps 1.3 t "Sweep Plane", "1.dat" u 1:3 w lp lw 3  pt 1 ps 1.3 t "BFS", "1.dat" u 1:4 w lp lw 3  pt 6  ps 1.3 t "DFS"

# set size 0.5,0.5
# set origin 0.5,0.5
# set title "MTA"
# set xlabel "Size of Rectangle (km)" font "Helvetica-Bold"
# set ylabel "CPU Cost ( ms )" font "Helvetica-Bold"
# set xrange [1:5]
# set yrange [0:200]
# set xtics ("5" 1, "10" 2, "15" 3, "20" 4, "25" 5)
# plot "3.dat" u 1:2 w lp lw 3  pt 2 ps 1.3 t "Sweep Plane", "3.dat" u 1:3 w lp lw 3  pt 1 ps 1.3 t "BFS", "3.dat" u 1:4 w lp lw 3  pt 6  ps 1.3 t "DFS"


# set size 0.5,0.5
# set origin 0,0
# set title "MTA"
# set xlabel "Size of Rectangle (km)" font "Helvetica-Bold"
# set ylabel "CPU Cost ( ms )" font "Helvetica-Bold"
# set xrange [1:5]
# set yrange [0:30]
# set xtics ("5" 1, "10" 2, "15" 3, "20" 4, "25" 5)
# plot "2.dat" u 1:2 w lp lw 3  pt 2 ps 1.3 t "Sweep Plane", "2.dat" u 1:3 w lp lw 3  pt 1 ps 1.3 t "BFS", "2.dat" u 1:4 w lp lw 3  pt 6  ps 1.3 t "DFS"


set size 0.5,0.5
set origin 0.5,0
set title "MTA"
set xlabel "Size of Rectangle (km)" font "Helvetica-Bold"
set ylabel "CPU Cost ( ms )" font "Helvetica-Bold"
set xrange [1:5]
set yrange [0:1500]
set xtics ("5" 1, "10" 2, "15" 3, "20" 4, "25" 5)
plot "4.dat" u 1:2 w lp lw 3  pt 2 ps 1.3 t "Sweep Plane", "4.dat" u 1:3 w lp lw 3  pt 1 ps 1.3 t "BFS", "4.dat" u 1:4 w lp lw 3  pt 6  ps 1.3 t "DFS"

# unset multiplot
set output