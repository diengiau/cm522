# cm522

YZU CM522 Investment course for master students.

Contact: please email me if you find any problem.

I will provide all related codes in this repository. For data, I will provide you in class. If you are not in my class but you'd like to have the data, please drop me an email.

## Create folder in your computer

-   `CM522`: parent folder

    -   `data`: to store all data

    -   codes file put under CM522 folder

-   A fast way is just simply download this repository and save locally into your laptop

## Code

I provide some small code files (in `.do` format) so that we can practice in class.

-   **Stata** code: with `.do` file type
    -   `01_statistics of return.do`

    -   `02_import and save factor data.do`

    -   `03_size and beta.do`

    -   `04_bm and sorting.do`

    -   `05_mom and calculate alpha.do`
-   **R** code: with `.qmd` file type
    -   `01_Statistics of Returns.qmd`
    -   `02_Merge with factors and run regressions.qmd`
    -   `03_Size and Returns.qmd`
    -   `04_Fama-French regression and alphas.qmd`

## Data

| Data file | Description                                                                                     | Details                                                                                                                    |
|--------------|-------------------------|---------------------------------|
| Ret.dta   | Stock-month level data on returns                                                               | `permno`: firm id; `date` : date at end-of-month; `yyyymm`: date in yyyymm format; `ret` : monthly returns (in percentage) |
| Mret.dta  | Fama-French three-factor data                                                                   | Can be linked to `Ret` by `yyyymm` column                                                                                  |
| Size.dta  | Firm size                                                                                       | `me`: firm size, which equals price times shares outstanding                                                               |
| Beta.dta  | Beta                                                                                            | `beta`: firm beta                                                                                                          |
| Bm.dta    | Book-to-market ratio                                                                            | `bm`: book-to-market ratio                                                                                                 |
| Mom.dta   | [Demo in class] Return momentum. We will learn how to calculate this factor from `ret` in class |                                                                                                                            |
| Ivol.dta  | Idiosyncratic volatility                                                                        |                                                                                                                            |
