set term postscript eps enh solid color 24
set output "coupled_systems_raw.eps"
unset key
a = 1
b = 12
c = 1
d = 5
unset tics
set xlabel "E_A"
set ylabel "Entropy"
fa(x) = a*log(1.0+b*x)
fb(x) = c*log(1.0+d*(1.0-x))
plot [0:1][0:3.5] fa(x) lt 2 lw 3, fb(x) lt 2 lw 3, fa(x)+fb(x) lt 2 lw 3
