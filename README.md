# PBI-biggish-data

This repo is a proof-of-concept for low code / no code data science. The objective
is to apply simple data science methods to a large dataset (> 8 million records) using a 
combination of Microsoft SQL Server and Power BI on a Windows 10 laptop. The SQL Server
instance is a "local host" instance residing on my laptop. 

The data source is BioTIME, and the global biodiversity dataset was the "all database" summary
dataset. Please see the following link for more information about BioTIME.

https://biotime.st-andrews.ac.uk/

This repo contains T-SQL scripts and Power BI files that *should* be executable. These
examples are for education purposes only. Please re-use them at your own peril. 

# Formulating a data science question

Separately, I've generated a species list for Quercus (oak) tree species from GBIF. I am
going to use that list to add common names to my data.

My data science question is "how has North American oak species diversity changed through time?"

My method goes as follows. Do all large scale operations in SQL Server then ask ecoligcally
meaningful questions in Power BI. The large scale operations include filtering the BioTIME 
dataset (1) for the genus "Quercus" and (2) for the lat/log bounding coordinates for North 
America. This can be accompished with a single query which creates a view object that
I'll name vw_NorthAmericanOaks.

These filters quickly reduce the dataset into something quite manageble by Power BI. Once
we've done that, we can have some "low code / no code" fun in Power BI.


Please contact me for more info. Thanks for reading. 

Gareth Rowell, gareth_rowell@nps.gov

# Misc Notes

I used NotePad++ to manage the dataset once it was downloaded. The .csv file is too large
for NotePad, VSCode or Excel.  All my T-SQL was coded using Microsoft Azure Data. 

Transformations in Power BI were all done using no code point-and-click methods within 
the Power Query tool.  





 