library(gt)

gt_add_divider = function(gt_object, columns, ..., include_labels = TRUE){
  stopifnot("Table must be of class 'gt_tbl'" = "gt_tbl" %in% class(gt_object))
  gt_object %>%
    tab_style(
      # dotas include passed named arguments to the internal function
      style = cell_borders(sides = "right", ...),
      locations = if (isTRUE(include_labels)) {
        # columns to affect
        list(cells_body(columns = {{ columns }}))
          cells_column_labels(columns = {{ columns }})
      } else{
        cells_body(columns = {{columns}})
      }
    )
}


# head(mtcars, 6) %>% gt()
# head(mtcars, 6) %>% gt() %>% gt_add_divider(cyl)
