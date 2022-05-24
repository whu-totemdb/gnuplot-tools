set terminal pdfcairo enhanced  font "simsum, 21"
set output "rq_s_tdrive_3.pdf"
set size 1,1
set origin 0.0, 0.0
# set multiplot layout 2,2 columnsfirst margins 0.1,0.9,0.1,0.9 spacing 0.16

set key top left
#4
# set title "T-drive"
# set xlabel "空间范围边长 (km)" font "simsum, 24"
# set ylabel "查询用时 ( ms )" font "simsum, 24"
# set xrange [1:5]
# set yrange [0:6]
# set xtics ("5" 1, "10" 2, "15" 3, "20" 4, "25" 5)
# plot "1.dat" u 1:2 w lp lw 3 pt 2 ps 1.3 t "扫描平面", "1.dat" u 1:3 w lp lw 3  pt 1 ps 1.3 t "BFS", "1.dat" u 1:4 w lp lw 3  pt 6  ps 1.3 t "DFS"


#6
set title "T-drive"
set xlabel "空间范围边长 (km)" font "simsum, 24"
set ylabel "查询用时 ( ms )" font "simsum, 24"
set xrange [1:5]
set yrange [0:300]
set xtics ("5" 1, "10" 2, "15" 3, "20" 4, "25" 5)
plot "3.dat" u 1:2 w lp lw 3  pt 2 ps 1.3 t "扫描平面", "3.dat" u 1:3 w lp lw 3  pt 1 ps 1.3 t "BFS", "3.dat" u 1:4 w lp lw 3  pt 6  ps 1.3 t "DFS"


#5
# set title "T-drive"
# set xlabel "空间范围边长 (km)" font "simsum, 24"
# set ylabel "查询用时 ( ms )" font "simsum, 24"
# set xrange [1:5]
# set yrange [0:50]
# set xtics ("5" 1, "10" 2, "15" 3, "20" 4, "25" 5)
# plot "2.dat" u 1:2 w lp lw 3  pt 2 ps 1.3 t "扫描平面", "2.dat" u 1:3 w lp lw 3  pt 1 ps 1.3 t "BFS", "2.dat" u 1:4 w lp lw 3  pt 6  ps 1.3 t "DFS"



# unset multiplot
set output