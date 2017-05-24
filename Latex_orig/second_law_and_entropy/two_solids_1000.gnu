set term postscript eps enh solid monochrome 32
set output "two_solids_1000.eps"
unset tics
unset label
unset key
set samples 1000
set label "N_A = 300" at 100, 135
set label "N_B = 200" at 100, 115
set label "q_{tot} = 1000" at 100, 95
set xlabel "q_A"
set ylabel "multiplicity {/Symbol W}"
plot [0:1000][0:150] 144*exp(-(x-600.0)**2/1440.0) lw 4
