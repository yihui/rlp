#' A Markdown generator
#' 
#' You can generate Markdown text using the function elements of this object.
#' @return Each function element returns a character vector.
#' @export
#' @examples md$b('bold'); md$em('emphasize'); md$ul(head(letters))
md = local({
  enclose = function(x, by = '') paste0(by, x, by)
  list(
       b = function(x) enclose(x, '**'),
      em = function(x) enclose(x, '_'),
    code = function(x) enclose(x, '`'),
    link = function(href, text) sprintf('[%s](%s)', text, href),
      ol = function(x) sprintf('1. %s\n', x),
      ul = function(x) sprintf('- %s\n', x)
  )
})
