* first, change pwd to class folder
* log file
log using "log/03_size and beta.log", replace

* first, change pwd to class folder
use "data/Ret.dta" , clear

* merge with Size and Beta
merge 1:1 permno yyyymm using "data/Beta.dta"
drop _merge
merge 1:1 permno yyyymm using "data/Size.dta"
keep if _merge == 3
drop _merge

* Set firm-time as panel data
ge year = year(date)
ge month = month(date)
destring year month, replace  
gen t = ym(year, month)
format t %tm
order t, after(yyyymm) 
xtset permno t

* summary statistics
su beta
su me

* create new var
ge log_me = log(me/1000)
su log_me

* a pooled OLS regression between ret and beta and size
reg ret beta log_me

* Fama-Macbeth regression: if not installed: search asreg
asreg ret beta log_me, fmb newey(6)

* save this data
save "data/Main.dta"

* log close
log close
