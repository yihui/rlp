% Please edit documentation in R/demo2-GEN.R
\docType{data}
\name{md}
\alias{md}
\title{A Markdown generator}
\format{\preformatted{List of 6
 $ b   :function (x)  
 $ em  :function (x)  
 $ code:function (x)  
 $ link:function (href, text)  
 $ ol  :function (x)  
 $ ul  :function (x)  
}}
\usage{
md
}
\value{
Each function element returns a character vector.
}
\description{
You can generate Markdown text using the function elements of this object.
}
\examples{
md$b("bold")
md$em("emphasize")
md$ul(head(letters))
}
\keyword{datasets}
