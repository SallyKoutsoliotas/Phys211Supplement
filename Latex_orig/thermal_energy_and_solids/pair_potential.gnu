set term postscript eps monochrome solid
set output "pair_potential_bare.eps"
unset border
unset key
unset tics
#set xzeroaxis lt 1
plot [0.5:2.7][-1:0.4] 1.0/x**12 - 2.0/x**6 lw 4
