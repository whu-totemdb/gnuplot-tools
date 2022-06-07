set term pdfcairo lw 2 font "Courier,12"
set output "llq.pdf"
set boxwidth 0.8 absolute
set style fill pattern
set style histogram rowstacked
set style data histograms
set title "CPU cost of Filtering and Refining" font "Helvetica-Bold"
set xlabel "|Q|" offset 0,-2 font "Helvetica-Bold"
set ylabel "CPU cost(ms)" font "Helvetica-Bold"
unset xtic
set yrange [0:500]
plot newhistogram "10" offset 0,1, 'llq.dat' using 2 t "Filter" lc rgbcolor "black" lt 1 fs pattern 1, '' u 3 t "Refine" lc rgbcolor "black" lt 1 fs pattern 0, \
    newhistogram "30" offset 0,1, '' u 4 notitle lc rgbcolor "black" lt 1 fs pattern 1, '' u 5 notitle lc rgbcolor "black" lt 1 fs pattern 0, \
    newhistogram "50" offset 0,1, '' u 6 notitle lc rgbcolor "black" lt 1 fs pattern 1, '' u 7 notitle lc rgbcolor "black" lt 1 fs pattern 0, \
    newhistogram "70" offset 0,1, '' u 8 notitle lc rgbcolor "black" lt 1 fs pattern 1, '' u 9 notitle lc rgbcolor "black" lt 1 fs pattern 0, \
	newhistogram "90" offset 0,1, '' u 10 notitle lc rgbcolor "black" lt 1 fs pattern 1, '' u 11 notitle lc rgbcolor "black" lt 1 fs pattern 0