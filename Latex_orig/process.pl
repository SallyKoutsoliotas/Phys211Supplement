#!/usr/bin/perl

system("latex supplement_211_10.tex");
system("latex supplement_211_10.tex");
system("dvips supplement_211_10.dvi");
system("ps2pdf supplement_211_10.ps");
