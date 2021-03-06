CWRU DSCI351-451 EDA: 

Data Analytic Style
========================================================
author: Roger H. French 
date: 04 September, 2018
autosize: true
transition: rotate
transition-speed: fast

Week 02a-f: Data Analytic Style

Reading, Homeworks, Projects, SemProjects
=======================================================

  * Readings: 
    * PRP 94-116 for Next Tuesday
    - Then [Open Intro Stats Chapter 1.0 to 1.9](https://play.google.com/books/reader?printsec=frontcover&output=reader&id=G2EOBwAAAEAJ&pg=GBS.PA0)
  * Homeworks
    * HW2 in your repo
    - Due next Tuesday 
  * Data Science Projects: 
  * 451 SemProjects:  
  * Friday Comm. Hour

Textbooks
========================================================

#### Textbooks

  - [Peng: R Programming for Data Science](https://play.google.com/books/reader?printsec=frontcover&output=reader&id=F1mVHgAAAEAJ&pg=GBS.PA1)
  - [Peng: Exploratory Data Analysis with R](https://play.google.com/books/reader?printsec=frontcover&output=reader&id=R-09BgAAAEAJ&pg=GBS.PA1)
  - [Open Intro Stats, v3](https://play.google.com/books/reader?printsec=frontcover&output=reader&id=G2EOBwAAAEAJ&pg=GBS.PA0)
  - [Wickham: R for Data Science](https://play.google.com/books/reader?printsec=frontcover&output=reader&id=I6y3DQAAQBAJ&pg=GBS.PA1)
  - [Hastie: Intro to Statistical Learning with R](https://play.google.com/books/reader?printsec=frontcover&output=reader&id=KtuPCwAAAEAJ&pg=GBS.PA0)

Syllabus
=========================================================

![DSCI351-451 Syllabus](./figs/syllabus.png)

Updating your packages in Rstudio
=========================================================

  * Check in lower right pane
  * Packages tab
  * Use Update Button
    * If you reboot a VDI, 
      - you probably have to re-update packages
    * since its a locked-down computer 
    * no persistent modifications to c: drive
    
Elements of Data Analytic Style
=========================================================

The data analysis checklist

  * This comes from Leek's Leanpub.com book
    * [The Elements of Data Analytic Style](https://leanpub.com/datastyle)
    * [GPlay Books of Leek EDA](https://play.google.com/books/reader?printsec=frontcover&output=reader&id=Qgc_BgAAAEAJ&pg=GBS.PA5)

This checklist provides a condensed look at the information in this book. 
  - It can be used as a guide during the process of a data analysis, 
    - as a rubric for grading data analysis projects, 
    - or as a way to evaluate the quality of a reported data analysis.

The overall steps in a Data Analysis
===========================================================

  - I. Answering the question
  - II. Checking the data
  - III. Tidying the data
  - IV. Exploratory analysis
  - V. Inference
  - VI. Prediction
  - VII. Causality
  - VIII. Written analyses
  - IX. Figures
  - X. Presentations
  - XI. Reproducibility
  - XII. R packages


  I. Answering the question
=================================================

  1. Did you specify the type of data analytic question 
    - (e.g. exploration, assocation causality) before touching the data?
  2. Did you define the metric for success before beginning?
  3. Did you understand the context for the question 
    - and the scientific or business application?
  4. Did you record the experimental design?
  5. Did you consider whether the question 
    - could be answered with the available data?

  II. Checking the data
=================================================

  1. Did you plot univariate and multivariate summaries of the data?
  2. Did you check for outliers?
  3. Did you identify the missing data code?

  III. Tidying the data
=================================================

  1. Is each variable one column?
  2. Is each observation one row?
  3. Do different data types appear in each table?
  4. Did you record the recipe for moving from raw to tidy data?
  5. Did you create a code book?
  6. Did you record all parameters, units, and functions applied to the data?

  IV. Exploratory analysis
=================================================

  1. Did you identify missing values?
  2. Did you make univariate plots (histograms, density plots, boxplots)?
  3. Did you consider correlations between variables (scatterplots)?
  4. Did you check the units of all data points 
    - to make sure they are in the right range?
  5. Did you try to identify any errors or miscoding of variables?
  6. Did you consider plotting on a log scale?
  7. Would a scatterplot be more informative?

  V. Inference
=================================================

  1. Did you identify what large population you are trying to describe?
  2. Did you clearly identify the quantities of interest in your model?
  3. Did you consider potential confounders?
  4. Did you identify and model potential sources of correlation 
  - such as measurements over time or space?
  5. Did you calculate a measure of uncertainty 
    - for each estimate on the scientific scale?

  VI. Prediction
=================================================

  1. Did you identify in advance your error measure?
  2. Did you immediately split your data into training and validation?
  3. Did you use cross validation, resampling, or bootstrapping 
    - only on the training data?
  4. Did you create features using only the training data?
  5. Did you estimate parameters only on the training data?
  6. Did you fix all features, parameters, and models 
    - before applying to the validation data?
  7. Did you apply only one final model to the validation data 
    - and report the error rate?

  VII. Causality
=================================================

  1. Did you identify whether your study was randomized?
  2. Did you identify potential reasons that causality may not be appropriate 
    - such as confounders, missing data, 
    - non-ignorable dropout, or unblinded experiments?
  2. If not, did you avoid using language that would imply cause and effect?

  VIII. Written analyses
=================================================

  1. Did you describe the question of interest?
  2. Did you describe the data set, experimental design, 
    - and question you are answering?
  3. Did you specify the type of data analytic question you are answering?
  4. Did you specify in clear notation the exact model you are fitting?
  5. Did you explain on the scale of interest 
    - what each estimate and measure of uncertainty means?
  6. Did you report a measure of uncertainty 
    - for each estimate on the scientific scale?

  IX. Figures
=================================================

  1. Does each figure communicate an important piece of information 
    - or address a question of interest?
  2. Do all your figures include plain language axis labels?
  3. Is the font size large enough to read?
  4. Does every figure have a detailed caption that explains 
    - all axes, legends, and trends in the figure?

  X. Presentations
=================================================

  1. Did you lead with a brief, understandable to everyone 
    - statement of your problem?
  2. Did you explain the data, measurement technology, and experimental design 
    -before you explained your model?
  3. Did you explain the features you will use to model data 
    - before you explain the model?
  4. Did you make sure all legends and axes were legible 
    - from the back of the room?

  XI. Reproducibility
=================================================

  1. Did you avoid doing calculations manually?
  2. Did you create a script that reproduces all your analyses?
  3. Did you save the raw and processed versions of your data?
  4. Did you record all versions of the software you used to process the data?
  5. Did you try to have someone else run your analysis code 
    - to confirm they got the same answers?

  XII. R packages
=================================================

  1. Did you make your package name "Googleable"
  2. Did you write unit tests for your functions?
  3. Did you write help files for all functions?
  4. Did you write a vignette?
  5. Did you try to reduce dependencies to actively maintained packages?
  6. Have you eliminated all errors and warnings from R CMD CHECK?

Intro to Git: How Does Distributed Code Versioning Work
=========================================================

[From 2016 SDLE Teatime Learnings, W2-P2+P3]

Read Intro To Git and its workings
  - Discusses how Git works
  - Pull/Push, Commits, Branches, etc.
  - [1808-351-351m-451-w02b-f-HowGitOperates.pdf](./2-class/1808-351-351m-451-w02b-f-HowGitOperates.pdf)




