set terminal postscript eps enhanced linewidth 1 font "Courier,17"
set output "RQ'-datasize-syd.eps"
set size 0.5,0.5
set origin 0.0, 0.0
set key top left


set xlabel "Data Size (%)" font "Helvetica-Bold"
set ylabel "Query Time ( ms )" font "Helvetica-Bold"
set xrange [10:110]
set xtics ("20" 20, "40" 40, "60" 60, "80" 80, "100" 100)
set yrange [0:200]
plot "datasize.dat" u 1:2 w lp lw 3  pt 2 ps 1.3 t "Hytra", "datasize.dat" u 1:3 w lp lw 3  pt 1 ps 1.3 t "Torch", "datasize.dat" u 1:4 w lp lw 3  pt 4 ps 1.3 t "TrajMesa", "datasize.dat" u 1:5 w lp lw 3  pt 5 ps 1.3 t "R-Tree" 
# plot "datasize-nyc.dat" u 2:xticlabels(1) axes x1y1 t "Hytra", "datasize-nyc.dat" u 3:xticlabels(1) axes x1y1 t "Torch", "datasize-nyc.dat" u 4:xticlabels(1) axes x1y1 t "TrajMesa", "datasize-nyc.dat" u 5:xticlabels(1) axes x1y1 t "R-Tree" 

set output