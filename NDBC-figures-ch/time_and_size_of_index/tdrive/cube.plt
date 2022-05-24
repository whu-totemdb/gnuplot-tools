set terminal pdfcairo enhanced font "simsum, 21"
set output "output.pdf"
set size 1,1
set origin 0.0, 0.0
# set multiplot layout 2,2 columnsfirst margins 0.15,0.9,0.1,0.9 spacing 0.2
set key top left

set style data histogram
set style histogram clustered gap 1
set style fill pattern 3 border -1

set title "T-drive"
set xlabel "轨迹点数量 (*10^5)" 
set ylabel "创建用时 ( s )" 
set yrange [0:50]
plot "time.dat" u 2:xticlabels(1) title "时空立方体索引","time.dat" u 3:xticlabels(1) title "3DR-Tree"


# unset multiplot
set output