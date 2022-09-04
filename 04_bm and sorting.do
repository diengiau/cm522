log using "log/04_bm sorting.log", replace

* first, change pwd to class folder
use "data/Main.dta" , clear

* merge with Bm
merge 1:1 permno yyyymm using "data/Bm.dta"
keep if _merge == 3
drop _merge

* statistics of bm
su bm

* Fama-Macbeth regression
asreg ret beta log_me bm, fmb newey(6)

* sorting
astile g_bm = bm, nq(10) by(yyyymm)

* statistics
tab g_bm, su(bm)

* 10 portfolio returns over time
collapse (mean) ret, by(g_bm yyyymm)
tab g_bm, su(ret)

* close log file
log close
