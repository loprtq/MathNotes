# Get files
files <- list.files(pattern = "\\.qmd$", recursive = TRUE)

## Read files
lines <- unlist(lapply(files, readLines))

## Extract package names
pkgs <- unique(unlist(regmatches(lines, gregexpr("library\\(['\"]?([A-Za-z0-9\\.]+)['\"]?\\)", lines))))
pkgs <- gsub("library\\(['\"]?|['\"]?\\)", "", pkgs)
pkgs <- pkgs[pkgs != ""]

# Save package names to a text file
writeLines(pkgs, "quarto-packages.txt")
