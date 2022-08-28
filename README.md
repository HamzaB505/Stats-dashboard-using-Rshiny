# Stats-dashboard-using-Rshiny
This is a basic dashboard using Rshiny and Dashboard for doing statistical analysis on any .CSV dataset.

# What can you do with it 
It constitutes three seperate dashboards :
1. Basic descriptive statistics to explore the data, 
2. visualisation techniques for quantitative and qualitative variables (univariate, multivariate)
3. Basic statistical tools such as regression, ANOVA and chi test. 

This project is a small piece of functionalities of Rshiny and Rdashboard and represents the amount of work that can be done in 24 hours with these packages. 
Further improvements may come later if I decide to re-visit this dashboard.

# How to use ?
In the first dashboard you have the upload button in order to insert any .CSV files (the only format supported for now), then you can choose the seperator of the columns 
and the decimal for numeric numbers (comma or dot). After uploading the file you will see in the first dashboard the first 5 lines, a brief description of the dataset
how many number of numeric/categorical variables, number of lines etc. Then some descriptive stats for both numeric and categorical as well. The second dashboard contains
uni dimensional visualisation techniques (boxplot, barplot, etc) and you can obviously choose the variable you want to visualize. The third dashboard has multidimensional visualisation
techniques and it can be parametred and you get to choose the variables you want to visualise and also can add smooth lines that represent the relationship between two variables
(linear, polynomial, logarithmic). Finally the last dashboard has correlation of the numeric variables and possibility to perform t-testing, ANOVA and linear regression.

# Permission
Feel free to use these files as practice tutorials but beware the code is messy and I did not have time to make look nice and reproducable.

Lastly, this is project was done for a course at TELECOM NANCY in France by ya boi (aka me).
