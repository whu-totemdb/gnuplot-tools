set terminal postscript eps enhanced linewidth 1 font "Courier,12"
set output "accessIndex.eps"
set size 1,1
set multiplot layout 2,2 columnsfirst margins 0.1,0.9,0.1,0.9 spacing 0.16


set key top center
set title "Access Index - maxLevel=4"
set xlabel "Size of Rectangle (km)" font "Helvetica-Bold"
set ylabel "CPU Cost ( ms )" font "Helvetica-Bold"
set xrange [1:5]
set yrange [0:80]
set xtics ("5" 1, "10" 2, "15" 3, "20" 4, "25" 5)
plot "1.dat" u 1:2 w lp lw 3 pt 2 ps 1.3 t "Adjacency List", "1.dat" u 1:3 w lp lw 3  pt 1 ps 1.3 t "BFS", "1.dat" u 1:4 w lp lw 3  pt 6  ps 1.3 t "DFS"

set title "Access Index - maxLevel=6"
set xlabel "Size of Rectangle (km)" font "Helvetica-Bold"
set ylabel "CPU Cost ( ms )" font "Helvetica-Bold"
set xrange [1:5]
set yrange [0:2000]
set xtics ("5" 1, "10" 2, "15" 3, "20" 4, "25" 5)
plot "3.dat" u 1:2 w lp lw 3  pt 2 ps 1.3 t "Adjacency List", "3.dat" u 1:3 w lp lw 3  pt 1 ps 1.3 t "BFS", "3.dat" u 1:4 w lp lw 3  pt 6  ps 1.3 t "DFS"


set title "Access Index - maxLevel=5"
set xlabel "Size of Rectangle (km)" font "Helvetica-Bold"
set ylabel "CPU Cost ( ms )" font "Helvetica-Bold"
set xrange [1:5]
set yrange [0:500]
set xtics ("5" 1, "10" 2, "15" 3, "20" 4, "25" 5)
plot "2.dat" u 1:2 w lp lw 3  pt 2 ps 1.3 t "Adjacency List", "2.dat" u 1:3 w lp lw 3  pt 1 ps 1.3 t "BFS", "2.dat" u 1:4 w lp lw 3  pt 6  ps 1.3 t "DFS"


set title "Access Index - MaxLevel=7"
set xlabel "Size of Rectangle (km)" font "Helvetica-Bold"
set ylabel "CPU Cost ( ms )" font "Helvetica-Bold"
set xrange [1:5]
set yrange [0:8000]
set xtics ("5" 1, "10" 2, "15" 3, "20" 4, "25" 5)
plot "4.dat" u 1:2 w lp lw 3  pt 2 ps 1.3 t "Adjacency List", "4.dat" u 1:3 w lp lw 3  pt 1 ps 1.3 t "BFS", "4.dat" u 1:4 w lp lw 3  pt 6  ps 1.3 t "DFS"

unset multiplot
set output