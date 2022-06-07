set term pdfcairo lw 2 font "Courier,12"
set output "llk.pdf"
set boxwidth 0.8 absolute
set style fill pattern
set style histogram rowstacked
set style data histograms
set title "CPU cost of Filtering and Refining" font "Helvetica-Bold"
set xlabel "k" offset 0,-2 font "Helvetica-Bold"
set ylabel "CPU cost(ms)" font "Helvetica-Bold"
unset xtic
set yrange [0:200]
plot newhistogram "5" offset 0,1, 'refine.dat' using 2 t "Filter" lc rgbcolor "black" lt 1 fs pattern 1, '' u 3 t "Refine" lc rgbcolor "black" lt 1 fs pattern 0, \
    newhistogram "20" offset 0,1, '' u 4 notitle lc rgbcolor "black" lt 1 fs pattern 1, '' u 5 notitle lc rgbcolor "black" lt 1 fs pattern 0, \
    newhistogram "35" offset 0,1, '' u 6 notitle lc rgbcolor "black" lt 1 fs pattern 1, '' u 7 notitle lc rgbcolor "black" lt 1 fs pattern 0, \
    newhistogram "50" offset 0,1, '' u 8 notitle lc rgbcolor "black" lt 1 fs pattern 1, '' u 9 notitle lc rgbcolor "black" lt 1 fs pattern 0
    