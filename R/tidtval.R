library(dplyr)
# use tidyval
car_summary = function(var){
  mtcars %>%
    group_by({{var}}) %>%
    summarize(mean = mean(mpg),
              n = n())
}


car_summary_dots = function(...){
  mtcars %>%
    group_by(...) %>%
    summarize(mean = mean(mpg),
              n = n(), .groups = "drop")
}

# tidycal in practice with optional arguments

my_car_summary_dots2 = function(var, ...){
  mtcars %>%
    group_by({{var}}) %>%
    summarize(mean = mean(mpg),
              n = n(),
              ..., .groups = "drop")
}

# E.g. my_car_summary_dots2(cyl, hp_mean = mean(hp))


# tidyval with novel data
var_summary = function(data, var){
  data %>%
    summarize(
      n = n(),
      min = min({{var}}),
      max = max({{var}}),
      .groups = "drop")

}

# mtcars %>%
#   group_by(cyl) %>%
#   var_summary(mpg)

# tidyval with .data and "strings"
var_summary2 = function(data, var){
  data %>%
    summarise(n = n(),
              min = min(.data[[var]]),
              max = max(.data[[var]]),
              .groups = "drop")
}



