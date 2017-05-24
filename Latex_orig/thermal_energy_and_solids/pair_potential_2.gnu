set term postscript eps monochrome solid
set output "pair_potential_bare2.eps"
unset border
unset key
unset tics
#set xzeroaxis lt 1
plot [0.85:1.7][-1:0.4] 1.0/x**12 - 2.0/x**6 lw 4
