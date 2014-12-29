% Please edit documentation in R/demo1-GEN.R
\name{rbinormal}
\alias{rbinormal}
\title{Sample from a bivariate Normal distribution}
\usage{
rbinormal(n, m1 = 0, m2 = 0, s1 = 1, s2 = 1, rho = 0)
}
\arguments{
\item{n}{the desired sample size}

\item{m1, m2}{the means of X and Y, respectively}

\item{s1, s2}{the standard deviations of X and Y, respectively}

\item{rho}{the correlation coefficient between X and Y}
}
\value{
A numeric matrix of two columns X and Y.
}
\description{
Simulate x from the marginal f(x), then y from f(y|x), and the pair (x, y)
has the desired joint distribution.
}
