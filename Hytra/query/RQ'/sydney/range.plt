set terminal postscript eps enhanced linewidth 1 font "Courier,17"
set output "RQ'-range-syd.eps"
set size 0.5,0.5
set origin 0.0, 0.0
set key top left

set xlabel "Spatial Range (km^2)" font "Helvetica-Bold"
set ylabel "Query Time ( ms )" font "Helvetica-Bold"
set xrange [0.5:5.5]
set xtics ("1{/Symbol \264}1" 1, "2{/Symbol \264}2" 2,"3{/Symbol \264}3" 3,"4{/Symbol \264}4" 4,"5{/Symbol \264}5" 5)
set yrange [0:400]
plot "range.dat" u 1:2 w lp lw 3  pt 2 ps 1.3 t "Hytra",\
"range.dat" u 1:3 w lp lw 3  pt 1 ps 1.3 t "Torch",\
"range.dat" u 1:4 w lp lw 3  pt 4 ps 1.3 t "TrajMesa",\
"range.dat" u 1:5 w lp lw 3  pt 5 ps 1.3 t "R-Tree"

set output