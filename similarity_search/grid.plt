set term pdfcairo lw 2 font "Courier,12"
set output "grid.pdf"

set title "CPU cost with Quad-tree level increasing" font "Helvetica-Bold"
set xlabel "Quad-tree level" font "Helvetica-Bold"
set ylabel "CPU cost(s)" font "Helvetica-Bold"
set xrange [4:7]
set yrange [0:2.2]
set xtics ("4" 4, "5" 5, "6" 6, "7" 7)
plot "grid.dat" u 1:2 w lp lt 8 lw 1 pt 2 ps 1 t "LORS", "grid.dat" u 1:3 w lp lt 8 lw 1 pt 6 ps 1 t "LCSS", "grid.dat" u 1:4 w lp lt 8 lw 1 pt 4 ps 1 t "Hausdorff", "grid.dat" u 1:5 w lp lt 8 lw 1 pt 9 ps 1 t "Frechet"  
