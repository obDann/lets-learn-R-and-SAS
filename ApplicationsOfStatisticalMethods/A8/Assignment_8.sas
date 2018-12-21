/* Question 8 */

/* (a) Read the data into SAS and display the dataset */

filename myurl url " http://www.utsc.utoronto.ca/~butler/c32/heart-rates.csv";

proc import
	datafile=myurl
	dbms=csv
	out=mydata
	replace;
	getnames=yes;

proc print;

/* (b) Make a suitable plot of the two variables */

/* We see that there is one categorial variable and one quantitative variable, so we make a boxplot */

proc sgplot;
	vbox heartrate / category=gender;

/* Run the most appropriate t-test to compare the mean hart rate for males and females */

proc ttest;
	var heartrate;
	class gender;

/* We fail to reject the null hypothesis; however, this is not trustworthy because there is an outlier; ttests assumes normality */

/*****************************************************************************/

/* Question 9 */


/* Population mean is 100, standard deviation in 10 */

/* (a)  sample size is 35, actual population mean is 103. calculate the power */

proc power;
	onesamplemeans
	test=t
	mean=100  /*actual mean*/
	nullmean=103 /* null mean*/
	stddev=10 /*standard deviation*/
	ntotal=35 /*sample size*/
	power=.; /* Find the power */

/* (b) How big is the sample size needed in order to get the power up to 0.75? */

proc power;
	onesamplemeans
	test=t
	mean=100  /*actual mean*/
	nullmean=103 /* null mean*/
	stddev=10 /*standard deviation*/
	ntotal=. /*sample size*/
	power=0.75; /* Find the power */

/* (c) N total is rounded up */


/*
(d) After a further study, the researchers found that the population SD is about 12 rather than 10.
Calculate the sample size now required to get a  power of 0.75
*/

proc power;
	onesamplemeans
	test=t
	mean=100  /*actual mean*/
	nullmean=103 /* null mean*/
	stddev=12
	ntotal=. /*sample size*/
	power=0.75; /* Find the power */
