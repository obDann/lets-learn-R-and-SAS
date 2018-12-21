/*
Question 8

(a) Read the data into SAS and display the mean TotalPoints for each lecture section
*/

/* Reading the data */
filename myurl url "https://www.utsc.utoronto.ca/~butler/c32/SportsExamples.csv";
proc import
	datafile=myurl
	dbms=csv
	out=mydata
	replace;
	getnames=yes;

/* Viewing the data */
proc print;

proc means;
	class section;

/* (b) Obtain a boxplot of total points for each section */

/*
There is one categorial variable and one quantifiable variable, so it is suitable to make a boxplot
*/

proc sgplot;
	vbox Total_Points / category=section;

/*****************************************************************************/


/* Question 9 */

/* (a) Read the data into SAS and display the first 20 rows */

filename myurl url "http://www.utsc.utoronto.ca/~butler/c32/footprint.txt";
proc import
	datafile=myurl
	dbms=csv
	out=footprint
	replace;
	getnames=yes;
	delimiter=' ';

/* Viewing the data */
proc print data=footprint(obs=20);

/* (b) Make a suitable graph of the ecological footprint */

/* We see that there is one (suitable) categorial variable and one quantiative variable, so a boxplot is used */

proc sgplot;
    vbox eco_footprint / category=region;

proc means mean median;
    class Region;
