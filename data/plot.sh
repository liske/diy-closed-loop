
set xdata time
set timefmt "%Y-%m-%d"
set format x "%Y-%m-%d"
set key autotitle columnhead
set xlabel "Quartal"
set ylabel "% HbA1c"

set tics out
set ytics nomirror
set y2tics
set y2label "% TIR"
set yrange [5:9]
set y2range [0:100]
set xrange ["2018-01-01":"2020-01-01"]
set xtics ("2017" "2017-01-01", "2018" "2018-01-01", "2019"  "2019-01-01", "2020" "2020-01-01")
# Libre
set arrow from "2017-12-16", graph 0 to "2017-12-16", graph 1 nohead front lc "#7f7f7f"
# Open Looping
set arrow from "2018-09-08", graph 0 to "2018-09-08", graph 1 nohead front lc "#7f7f7f"
# Closed Looping
set arrow from "2019-02-29", graph 0 to "2019-02-29", graph 1 nohead front lc "#7f7f7f"
plot "statistics.csv" using 1:(0):3 with filledcurves axis x1y2 lc "#00FFC0C0", "statistics.csv" using 1:3:($3+$4) with filledcurves axis x1y2 lc "#00C0FF60", "statistics.csv" using 1:($3+$4):($3+$4+$5) with filledcurves axis x1y2 lc "#00FFFF60", "statistics.csv" using 1:2 with fsteps lc "#0000ff" lw 3, 70 with lines axis x1y2 lc "#7f7f7f", 5 with lines axis x1y2 lc "#7f7f7f"
