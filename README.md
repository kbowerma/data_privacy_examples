
## set d

## Create a 100 row sample set

#### create the header
```head -1 usa_00001.csv | awk -F',' 'BEGIN{OFS=",";} {print $7,$10,$24,$25,$43}'  > d100.csv```
####Load the data 
 ```gshuf -n 101 usa_00001.csv | awk -F',' 'BEGIN{OFS=",";} {print $7,$10,$24,$25,$43}'  >> d100.csv```
#### Confirm header 
``` head -1 d100.csv```

"STATEFIP","CITY","SEX","AGE","INCTOT"

## Now Create the real Data (reduced set)
```cat usa_00001.csv | awk -F',' 'BEGIN{OFS=",";} {print $7,$10,$24,$25,$43}'  > d.csv```


##pandas 
[read_csv](http://pandas.pydata.org/pandas-docs/stable/io.html)