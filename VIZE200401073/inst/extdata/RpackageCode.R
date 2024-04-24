library(usethis)
usethis::use_mit_license("Elif Avci")
# 5. Create a Readme.md
usethis::use_readme_md()

# 6. Creat a News file
usethis::use_news_md()

# 8. Create unit test infrastructure
usethis::use_testthat()
use_test("data-presence")
use_test("data-integrity")
# 10. Make the DESCRIPTION file better.
use_description() # Overwrite existing file

use_namespace(roxygen = TRUE)
# 12 Create your functions inside a .R scripts under R
file.create("R/data-presence.R")
file.create("R/data-integrity.R")
file.create("R/data-write.R")
file.create("R/data-analysisGraphic.R")
