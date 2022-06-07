set terminal postscript eps enhanced linewidth 1 font "Courier,12"
set output "rt_knn_sdyney.eps"
set size 0.5,0.5
set origin 0.0, 0.0
set key top left

# set multiplot layout 2,2 columnsfirst margins 0.1,0.9,0.1,0.9 spacing 0.16


set size 0.5,0.5
set origin 0.5,0
set title "Sydney"
set xlabel "k" font "Helvetica-Bold"
set ylabel "CPU Cost ( us )" font "Helvetica-Bold"
set yrange [0:500]
set xrange [1:5]
set xtics ("10" 1, "20" 2, "30" 3, "40" 4, "50" 5)
plot "sydney.dat" u 1:2 w lp lw 3  pt 2 ps 1.3 t "H-Grid", "sydney.dat" u 1:3 w lp lw 3  pt 1 ps 1.3 t "R-Tree"

# unset multiplot
set output