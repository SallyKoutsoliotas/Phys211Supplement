#!/usr/bin/gnuplot -persist
#
#    
#    	G N U P L O T
#    	Version 3.7 patchlevel 3
#    	last modified Thu Dec 12 13:00:00 GMT 2002
#    	System: Linux 2.4.21-20.EL
#    
#    	Copyright(C) 1986 - 1993, 1998 - 2002
#    	Thomas Williams, Colin Kelley and many others
#    
#    	Type `help` to access the on-line reference manual
#    	The gnuplot FAQ is available from
#    	http://www.gnuplot.info/gnuplot-faq.html
#    
#    	Send comments and requests for help to <info-gnuplot@dartmouth.edu>
#    	Send bugs, suggestions and mods to <bug-gnuplot@dartmouth.edu>
#    
set terminal postscript landscape enhanced monochrome dashed defaultplex "Helvetica" 20
set output "mass_per_nucleon.ps"
set noclip points
set clip one
set noclip two
set bar 1.000000
set border 31 lt -1 lw 1.000
set xdata
set ydata
set zdata
set x2data
set y2data
set boxwidth
set dummy x,y
set format x "% g"
set format y "% g"
set format x2 "% g"
set format y2 "% g"
set format z "% g"
set angles radians
set grid nopolar
set grid xtics ytics noztics nox2tics noy2tics nomxtics nomytics nomztics nomx2tics nomy2tics lt 0 lw 1.000, lt 0 lw 1.000
set key title ""
set nokey
set nolabel
set label 1 "^2H - Deuterium" at 18, 1.007, 0 left norotate
set label 2 "^{56}Fe - Iron" at 56, 0.9998, 0 centre norotate
set label 3 "^{238}U - Uranium" at 200, 1.0013, 0 centre norotate
set noarrow
set arrow 1 from 15.8, 1.007, 0 to 5, 1.0071, 0  linetype 1 linewidth 1.000
set arrow 2 from 56, 0.9996, 0 to 56, 0.999, 0  linetype 1 linewidth 1.000
set arrow 3 from 225, 1.001, 0 to 238, 1.0004, 0  linetype 1 linewidth 1.000
set nolinestyle
set nologscale
set offsets 0, 0, 0, 0
set pointsize 1
set encoding default
set nopolar
set noparametric
set view 60, 30, 1, 1
set samples 100, 100
set isosamples 10, 10
set surface
set nocontour
set clabel '%8.3g'
set mapping cartesian
set nohidden3d
set cntrparam order 4
set cntrparam linear
set cntrparam levels auto 5
set cntrparam points 5
set size ratio 0 1,1
set origin 0,0
set data style points
set function style lines
set xzeroaxis lt -2 lw 1.000
set x2zeroaxis lt -2 lw 1.000
set yzeroaxis lt -2 lw 1.000
set y2zeroaxis lt -2 lw 1.000
set tics in
set ticslevel 0.5
set ticscale 1 0.5
set mxtics default
set mytics default
set mx2tics default
set my2tics default
set xtics border mirror norotate 0,20
set ytics border mirror norotate autofreq 
set ztics border nomirror norotate autofreq 
set nox2tics
set noy2tics
set title "" 0.000000,0.000000  ""
set timestamp "" bottom norotate 0.000000,0.000000  ""
set rrange [ * : * ] noreverse nowriteback  # (currently [-0.00000:10.0000] )
set trange [ * : * ] noreverse nowriteback  # (currently [-5.00000:5.00000] )
set urange [ * : * ] noreverse nowriteback  # (currently [-5.00000:5.00000] )
set vrange [ * : * ] noreverse nowriteback  # (currently [-5.00000:5.00000] )
set xlabel "A" 0.000000,0.000000  ""
set x2label "" 0.000000,0.000000  ""
set timefmt "%d/%m/%y\n%H:%M"
set xrange [ 0.00000 : 250.000 ] noreverse nowriteback
set x2range [ * : * ] noreverse nowriteback  # (currently [-10.0000:10.0000] )
set ylabel "M/A (Relative Atomic Mass Units)" 0.000000,0.000000  ""
set y2label "" 0.000000,0.000000  ""
set yrange [ 0.998000 : 1.00800 ] noreverse nowriteback
set y2range [ * : * ] noreverse nowriteback  # (currently [-10.0000:10.0000] )
set zlabel "" 0.000000,0.000000  ""
set zrange [ * : * ] noreverse nowriteback  # (currently [-10.0000:10.0000] )
set zero 1e-08
set lmargin -1
set bmargin -1
set rmargin -1
set tmargin -1
set locale "C"
f(x) = a*(x-x0)**2 + b*(x-x1)**3 + c*(x-x2)**4 + off
a = 2.23978674229215e-06
x0 = 33.9087446978194
b = -4.75337175979815e-08
x1 = 29.8899986670275
c = 6.92113183363431e-11
x2 = 1.00001512529105
off = 0.998530827816805
plot "atomic_mass.dat" u 3:($4/$3) smooth bezier, "atomic_mass.dat" u 3:($4/$3) w p 6
#    EOF
