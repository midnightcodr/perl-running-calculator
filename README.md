## About
Perl script to calculate running speed. Parameter can be entered in any fashion as long as the number of distance (in miles) matches the number of durations (in hh:mm:ss or mm:ss formats, decimals are supported in ss). 

## Example

```
perl main.pl 1.01 07:13.78 1.01 06:17.20 1.01 06:54.90
```

```
perl main.pl 1.01 1.01 1.01 07:13.78 06:17.20 06:54.90
```

The output is the same:

	total_distance=3.03, total_duration= 0:20:25, average_speed=8.90
