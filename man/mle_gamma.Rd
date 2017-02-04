% Please edit documentation in R/demo1-GEN.R
\name{mle_gamma}
\alias{mle_gamma}
\title{MLE for the Gamma distribution}
\usage{
mle_gamma(data, start = c(1, 1), vcov = FALSE)
}
\arguments{
\item{data}{the data vector assumed to be generated from the Gamma 
distribution}

\item{start}{the initial values for the parameters of the Gamma distribution 
(passed to \code{\link{optim}()})}

\item{vcov}{whether to return an approximate variance-covariance matrix of 
the parameter vector}
}
\value{
A list with elements \code{estimate} (parameter estimates for alpha 
  and beta) and, if \code{vcov = TRUE}, \code{vcov} (the variance-covariance 
  matrix of the parameter vector).
}
\description{
Estimate the parameters (alpha and beta) of the Gamma distribution using
maximum likelihood.
}
