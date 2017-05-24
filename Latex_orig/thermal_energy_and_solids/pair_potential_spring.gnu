set term postscript eps monochrome
set output "pair_potential_spring_bare.eps"
unset border
unset key
unset tics
#set xzeroaxis lt 1
plot [0.8:1.8][-1:0.1] 1.0/x**12 - 2.0/x**6 lw 4 lt 1, \
  -1.0 + 36.0*(x-1.0)**2 lw 3 lt 0
