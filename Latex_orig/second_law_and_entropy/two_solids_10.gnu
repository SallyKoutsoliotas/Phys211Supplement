set term postscript eps enh solid monochrome 32
set output "two_solids_10.eps"
set style data histogram
set style fill solid
unset tics
unset label
unset key
set label "N_A = 3" at 0, 135
set label "N_B = 2" at 0, 115
set label "q_{tot} = 10" at 0, 95
set xlabel "q_A"
set ylabel "multiplicity {/Symbol W}"
plot [][0:150] "q10.dat"
