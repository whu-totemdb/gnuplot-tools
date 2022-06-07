set term pdfcairo lw 2 font "Courier,12"
set output "dataset.pdf"

set title "CPU cost with dataset size increasing" font "Helvetica-Bold"
set xlabel "|D|" font "Helvetica-Bold"
set ylabel "CPU cost(s)" font "Helvetica-Bold"
set xrange [3000:33000]
set yrange [-0.5:4.5]
set xtics ("3000" 3000, "13000" 13000, "23000" 23000, "33000" 33000)
plot "dataset.dat" u 1:2 w lp lt 8 lw 1 pt 2 ps 1 t "LORS", "dataset.dat" u 1:3 w lp lt 8 lw 1 pt 6 ps 1 t "LCSS", "dataset.dat" u 1:4 w lp lt 8 lw 1 pt 4 ps 1 t "Hausdorff", "dataset.dat" u 1:5 w lp lt 8 lw 1 pt 9 ps 1 t "Frechet"  
