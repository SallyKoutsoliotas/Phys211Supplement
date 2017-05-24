set term postscript eps enh solid monochrome 32
set output "two_solids_100.eps"
unset tics
unset label
unset key
set label "N_A = 30" at 10, 135
set label "N_B = 20" at 10, 115
set label "q_{tot} = 100" at 10, 95
set xlabel "q_A"
set ylabel "multiplicity {/Symbol W}"
plot [0:100][0:150] 144*exp(-(x-60.0)**2/144.0) lw 4
