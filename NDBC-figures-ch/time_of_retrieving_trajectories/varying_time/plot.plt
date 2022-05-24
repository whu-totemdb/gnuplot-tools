set terminal pdfcairo enhanced font "simsum, 21"
set output "rs_t_mta4.pdf"
set size 1,1
set origin 0.0, 0.0
# set multiplot layout 2,2 columnsfirst margins 0.1,0.9,0.1,0.9 spacing 0.2
set key top left



set style data histogram
set style histogram clustered gap 1.5
set style fill pattern 3 border -1

# set title "纽约" font "simsum, 24"
# set xlabel "时间范围 (h)" font "simsum, 24"
# set ylabel "查询用时 ( ms )" font "simsum, 24"
# set xrange [-1:5]
# set xtics ()
# set yrange [0:1.5]
# set y2range [0:1500]
# set y2tics
# plot "4.dat" u 2:xticlabels(1) axes x1y1 title "内存","4.dat" u 3:xticlabels(1) axes x1y2 title "磁盘"

# set title "纽约" font "simsum, 24"
# set xlabel "时间范围 (h)" font "simsum, 24"
# set ylabel "查询用时 ( ms )" font "simsum, 24"
# set xrange [-1:5]
# set xtics ()
# set yrange [0:15]
# set y2range [0:1500]
# set y2tics
# plot "6.dat" u 2:xticlabels(1) axes x1y1 title "内存","6.dat" u 3:xticlabels(1) axes x1y2 title "磁盘"

# set title "纽约" font "simsum, 24"
# set xlabel "时间范围 (h)" font "simsum, 24"
# set ylabel "查询用时 ( ms )" font "simsum, 24"
# set xrange [-1:5]
# set xtics ()
# set yrange [0:2.5]
# set y2range [0:2500]
# set y2tics
# plot "5.dat" u 2:xticlabels(1) axes x1y1 title "内存","5.dat" u 3:xticlabels(1) axes x1y2 title "磁盘"

# set title "纽约" font "simsum, 24"
set xlabel "时间范围 (h)" font "simsum, 24"
set ylabel "查询用时 ( s )" font "simsum, 24"
set xrange [-1:5]
set xtics ()
set yrange [0:150]
set y2range [0:3000]
set y2tics
plot "7.dat" u 2:xticlabels(1) axes x1y1 title "内存","7.dat" u 3:xticlabels(1) axes x1y2 title "磁盘" 


# unset multiplot
set output