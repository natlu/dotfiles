options(
  rtichoke.color_scheme = "native"
, rtichoke.editing_mode = "vi"
)


library(colorout)


resize <- function(how_wide = Sys.getenv("COLUMNS")) {
  options(width = as.integer(how_wide))
}

# don't save when q()
q <- function(save="no", ...) {
    quit(save=save, ...)
}

