set term pdfcairo lw 2 font "Courier,12"
set output "k.pdf"

# set multiplot layout 2,2 rowsfirst margins 0.105,0.98,0.12,0.91 spacing 0.14

# set size 0.5,0.5
# set origin 0,0
set title "CPU cost with k increasing" font "Helvetica-Bold"
set xlabel "k" font "Helvetica-Bold"
set ylabel "CPU cost(s)" font "Helvetica-Bold"
set xrange [5:50]
set yrange [0:3]
set xtics ("5" 5, "20" 20, "35" 35, "50" 50)
plot "k-4.dat" u 1:2 w lp lt 8 lw 1 pt 2 ps 1 t "LORS", "k-4.dat" u 1:3 w lp lt 8 lw 1 pt 6 ps 1 t "LCSS", "k-4.dat" u 1:4 w lp lt 8 lw 1 pt 4 ps 1 t "Hausdorff", "k-4.dat" u 1:5 w lp lt 8 lw 1 pt 9 ps 1 t "Frechet"  


# set title "CPU cost with |Q| increasing" font "Helvetica-Bold"
# set xlabel "|Q|" font "Helvetica-Bold"
# set ylabel "CPU cost(s)" font "Helvetica-Bold"
# set xrange [10:90]
# set yrange [-0.5:10]
# set xtics ("10" 10, "30" 30, "50" 50, "70" 70, "90" 90)
# plot "Q-4.dat" u 1:2 w lp lt 8 lw 1 pt 2 ps 1 t "LORS", "Q-4.dat" u 1:3 w lp lt 8 lw 1 pt 6 ps 1 t "LCSS", "Q-4.dat" u 1:4 w lp lt 8 lw 1 pt 4 ps 1 t "Hausdorff", "Q-4.dat" u 1:5 w lp lt 8 lw 1 pt 9 ps 1 t "Frechet"  

set output

