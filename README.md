## About
Perl script to calculate running speed. Parameters can be entered in any fashion as long as the number of distance (in miles) matches the number of durations (in hh:mm:ss or mm:ss formats, with optional decimals in ss).

## Examples

```
perl main.pl 1.01 07:13.78 1.01 06:17.20 1.01 06:54.90
```

```
perl main.pl 1.01 1.01 1.01 07:13.78 06:17.20 06:54.90
```

The output is the same:

	total_distance=3.03, total_duration=00:20:25, average_speed=8.90mph, average_pace=06:44/mi
