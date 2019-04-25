

Gnuplot doesn't actually expect time data to be in quotes, so you have to tell it:

set timefmt '"%Y-%m-%d %H:%M:%S"'

You can put the double quotes inside single quotes as I did here, or escape the quotes:

set timefmt "\"%Y-%m-%d %H:%M:%S\""

the same applies to your xrange specification:

set xrange ['"2013-07-21 16:00"':'"2013-07-22 16:00"']

If you delete the quotes in the data file, then you can use the formatting you originally had, except the column numbers will be shifted over by 1 since the date takes up two columns without the quotes.




###################

set datafile separator ","
