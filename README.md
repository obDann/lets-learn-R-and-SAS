# Let's learn R and SAS

The purpose of this repository is to learn SAS, R, and fundamental applications of statistics throughout the timeframe of my Applied Statistics education. This repository is expected to be active from September 2018 to April 2019.

Any R code is written in a ".Rmd" format as opposed to a ".R" format; hence why this repository seems SAS heavy, but it actually is not.

Note that more topics are covered in the courses themselves, and those courses will continue to evolve over time with possibly different libraries/technologies. You can find out more about these topics [here (Applications of Statistical Methods)](https://www.utsc.utoronto.ca/~butler/c32/) and [here (Statistics for Life and Social Sciences)](https://www.utsc.utoronto.ca/~butler/d29/) taught by [Professor Butler](https://github.com/nxskok).

---

### [Applications of Statistical Methods](./ApplicationsOfStatisticalMethods)

The main objectives in each assignment are the following:

* [Assignment 1 [R]:](./ApplicationsOfStatisticalMethods/A1) Reading in data, and generating a suitable graph for the data provided
* [Assignment 2 [R]:](./ApplicationsOfStatisticalMethods/A2) Generating histograms (using Sturges' rule), interpreting histograms and its shape, and conducting a simple t-test (null hypothesis: the mean of the dataset is "x")
* [Assignment 3 [R]:](./ApplicationsOfStatisticalMethods/A3) Conducting a two-sample t-test (null hypothesis: the mean of this group is equal to a mean of another group), and power (probability of not making a type II error)
* [Assignment 4 [R]:](./ApplicationsOfStatisticalMethods/A4) QQ plots to assess normality of data, sign test to assess non-normality (special thanks to [smmr](https://github.com/nxskok/smmr)), and matched pairs t-test (null hypothesis: the mean before change of the same subject is the same after the change of the same subject)
* [Assignment 5 [R]:](./ApplicationsOfStatisticalMethods/A5) Mood's median test (null hypothesis: the median of one group is the same as another group), Analysis of Variance (ANOVA; all groups have the same mean), and Tukey's range test (determines which means are significantly different from each other if ANOVA has a small p-value)
* [Assignment 6 [R]:](./ApplicationsOfStatisticalMethods/A6) Tidying/cleaning data, and formalizing a report using R markdown
* [Assignment 7 [SAS]:](./ApplicationsOfStatisticalMethods/A7) Reading data, generating graphs, and MEANS procedure
* [Assignment 8 [SAS]:](./ApplicationsOfStatisticalMethods/A8) Conducting t-tests, and determining power

---

### [Statistics for Life and Social Sciences](./StatisticsForLifeAndSocialSciences)
 
All assignments are completed in R. The objectives of each assignment are the following

* [Assignment 1:](./StatisticsForLifeAndSocialSciences/A1)
  * **Regression with one explanatory variable**: A response variable (y) depends on an explanatory variable (x), provided that the relationship is significant. Highlight:
    * Mean predictions within a confidence interval
  * **Logistic Regression with one explanatory variable**: The response variable has binary values, typically consisting of True or False. A general logistic regression enables binary predictions provided that the relationship between the response variable and the explanatory variable is significant. Highlights:
    * Significance between the explanatory variable and the response variable
    * Interpretations of an explanatory variable's coefficient
* [Assignment 2:](./StatisticsForLifeAndSocialSciences/A2)
  * **Logistic Regression with multiple explanatory variables**: The response variable has binary values, typically consisting ofg True or False. A general logistic regression enables binary predictions provided that the relationship between the response variable and the explanatory variables are siginficant. Highlights:
    * Significance between the response variable and explanatory variables. Insignificant variables are removed through the process of backwards elimination
    * Explanatory variables can be both quantitative and categorical; specific categorical values can be found in the baseline/intercept of the model
    * Coefficient interpretation between explanatory variables and prediction analysis
  * **Ordinal Logistic Regression with multiple explanatory variables**: As opposed to a generic logistic regression, an ordinal logistic regression has a response variable that has multiple values, but factors in how the values can be ordered (e.g. from greatest to least). Highlights:
    * Significance between the explanatory variables and response variable
    * Interpretations of predictions and probabilities relative to predictions
* [Assignment 3:](./StatisticsForLifeAndSocialSciences/A3)
  * **Nominal Logistic Regression**: The response variable has multiple values, but as opposed to a ordinal logistic regression, the values need not be ordered. Highlights:
    * Significance of explanatory variables are conducted by an ANOVA
    * Interpretations of predictions and probabilities relative to predictions
  * **Survival Analysis (Cox-Proportional Hazards Model)**: Provided many explanatory variables, determine the category that may survive the longest. Highlights:
    * "Survive" is loosely used. The response variable is a quantitative variable that is a measure before inevitability (e.g. death, club resignation etc.)
    * A definition to highlight is the word *Censored*. *Censored* follows the idea that there is not a definitive measurement for a subject to have the inevibility to occur when the data was recorded
    * Predictions typically consist of one main focus group, but with different (categorical) treatments
    * Interpretation of surivival curves
* [Assignment 4:](./StatisticsForLifeAndSocialSciences/A4)
   * **Analysis of Variance with interactions**: Provided one quantitative response variable and two or more categorical variables, determine if there is an interaction between the categorical variables (additional synergy to the response variable's magnitude), and determine if the interaction is significant. Highlights:
     * Interaction plots: If the slopes are (approximately) parallel, then the interaction between variables is not significant. If there is at least one slope that is not parallel to the others, then the interaction is significant
     * Simple effects: Fixate one explanatory varaible as a value, then look at the probabilities, run an ANOVA, and if warranted (p-value is considerably small from the ANOVA), run a Tukey analysis.
   * **Contrasts between groups**: Comparing means between combinations of a specific explanatory variable's values (e.g. you are able to compare 2 explanatory values to 1 explanatory value). Highlights:
     * To set up contrasts, specific hypotheses are required, which later leads to orthogonal vectors based on the hypotheses
     * Conclusions of the hypotheses are conducted based on the p-values of the stated hypotheses
* [Assignment 5:](./StatisticsForLifeAndSocialSciences/A5)
  * **Analysis of Covariance (ANCOVA)**:  Determines which variables (and interactions between them) are siginficant and which ones are inconsequential to the quantitative response variable. Highlights:
    * Typically conducted with one quantitative explanatory variable and one categorical explanatory variable
    * Slope interpretation and interaction significance
  * **Multivariate Analysis of Variance (MANOVA)**: As opposed to ANOVA, multivariate analysis analysis considers more than 1 response variable. Determines if each group consistently have the same mean across the response variables. Highlight:
    * Response variables must be quantitative
  * **Repeated Measures ANOVA**: Anagolous to matched pairs, test whether the mean effects of the response variable is the same over n timeframes/treatments on the same subject. Highlights:
    * Interpretation of a spaghetti plot
    * Significance of variables/interaction(s) over the time frame
* [Assignment 6:](./StatisticsForLifeAndSocialSciences/A6)
  * **Discriminant Analysis**: Predict group membership based on quantitative variables. Highlights:
    * Linear discriminants determines how categories are grouped
    * The number of linear discriminants is the minimum of (# of explanatory variables, # response values - 1)
    * The determinant of the best linear discriminant is the highest portion in "proportion of trace"
    * Predictions in discriminant analysis and assessment of accuracy/predictions
* [Assignment 7:](./StatisticsForLifeAndSocialSciences/A7)
  * **Cluster Analysis**: Determine which categorical values are alike based off of distances/dissimilarities (distances and dissimilarities are interchangeable in this context).
    * Demonstrated is a hierarchial cluster analysis using several methods, visualized through a dendrogram
    * All within a Euclidean space:
      * Single-linkage is the distance between 2 clusters of their closest points
      * Complete linkage is the distance between 2 cluster of their furthest points
      * Ward's method takes the mean of clusters, works out the sum of square distances from the means, then combines the two clusters to an overall mean, to eventually have a distance between the sum of square distances and the collective mean
  * **K-means clustering**: Determine how many clusters is suitable in a cluster analysis
    * Typically involves standardizing/scaling values in respective quantitative variables
    * The suitable amount of clusters is found using a scree-plot. The pointed "elbow" is the optimal number of clusters
