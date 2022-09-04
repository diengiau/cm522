* first, change pwd to class folder
* log file: can choose between log or smcl format
log using "log/01_statistics of return.smcl", replace
* first, change pwd to class folder
use "data/Ret.dta" , clear

* Step 0. generate year and month from date
ge year = year(date)
ge month = month(date)


* Step 1. Summary statistics

* Q1. How many year of data
tab year

* Q2. what is summary statistics (average, median, min, max) of returns
su ret
su ret, de

* Q3. how many unique firms
* if not installed: search distinct
distinct permno

* Q4. mean of return over year
tab year, su(ret)

* Q5. draw a plot for mean of return over year
collapse (mean) ret, by(year)
twoway (line ret year)
twoway (bar ret year)

*close log file
log close
