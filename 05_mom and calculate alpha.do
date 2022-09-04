* first, change pwd to class folder
use "data/Ret.dta" , clear

* Step 0. Set firm-time as panel data
ge year = year(date)
ge month = month(date)
destring year month, replace  
gen t = ym(year, month)
format t %tm
order t, after(yyyymm) 
xtset permno t

* Step 1. Create momentum factors
replace ret = 0 if mi(ret)
gen mom12m = ( (1+l.ret)*(1+l2.ret)*(1+l3.ret)*(1+l4.ret)*(1+l5.ret)*(1+l6.ret)* ///
               (1+l7.ret)*(1+l8.ret)*(1+l9.ret)*(1+l10.ret)*(1+l11.ret) ) - 1
label var mom12m "Twelve month momentum"


drop year month date t ret

save "data/Mom.dta"

* ======================================================================== *
* please finish below questions by yourself
* Step 2. Merge to main data


* Step 3: FM regression model: ret = beta log_me bm mom12m

* Step 4: sorting on mom12m

* Step 5: merge data with Factor.dta

* ======================================================================== *
* then, we run factor models and find alphas (DEMO in class)
