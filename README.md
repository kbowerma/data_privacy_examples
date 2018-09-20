# Creating Clustering examples from Census data

## create delta set

### Create a 100 row sample set

#### create the header
```head -1 usa_00001.csv | awk -F',' 'BEGIN{OFS=",";} {print $7,$10,$24,$25,$43}'  > d100.csv```
####Load the data 
 ```gshuf -n 101 usa_00001.csv | awk -F',' 'BEGIN{OFS=",";} {print $7,$10,$24,$25,$43}'  >> d100.csv```
#### Confirm header 
``` head -1 d100.csv```

"STATEFIP","CITY","SEX","AGE","INCTOT"

## Now Create the real Data (reduced set)
```cat usa_00001.csv | awk -F',' 'BEGIN{OFS=",";} {print $7,$10,$24,$25,$43}'  > d.csv```




##  create echo set
create header, and fill the file after shuffle
``` 
     head -1 usa_00002.csv | awk -F ',' 'BEGIN{OFS=",";} {print $7,$44,$22}' > e.csv
     tail -n+2  usa_00002.csv | gshuf | awk -F ',' 'BEGIN{OFS=",";} {print $7,$44,$22}' >> e.csv
```
--



# Reference

## pandas 

[read_csv](http://pandas.pydata.org/pandas-docs/stable/io.html)

Data collected from [usa.ipums.org](https://usa.ipums.org/usa/)

_[CLUSTERING OF HOUSING AND HOUSEHOLD
PATTERNS USING 2011 POPULATION CENSUS](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.831.8660&rep=rep1&type=pdf)_

_[Clustering Data - NCRM EPrints Repository](http://eprints.ncrm.ac.uk/247/1/Vickers_ESRC_RM.ppt)