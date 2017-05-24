set term postscript eps enh solid monochrome 32
set output "two_solids_10000.eps"
unset tics
unset label
unset key
set samples 10000
set label "N_A = 3,000" at 1000, 135
set label "N_B = 2,000" at 1000, 115
set label "q_{tot} = 10,000" at 1000, 95
set xlabel "q_A"
set ylabel "multiplicity {/Symbol W}"
plot [0:10000][0:150] 144*exp(-(x-6000.0)**2/14400.0) lw 4
