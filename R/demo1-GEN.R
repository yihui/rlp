#' A cool function
#' 
#' Well, not really cool. Just add 1 to x.
#' @param x a numeric vector
#' @export
#' @examples
#' add_one(1)
#' add_one(1:10)
add_one = function(x) {
  x + 1
}
#' MLE for the Gamma distribution
#' 
#' Estimate the parameters (alpha and beta) of the Gamma distribution using
#' maximum likelihood.
#' @param data the data vector assumed to be generated from the Gamma 
#'   distribution
#' @param start the initial values for the parameters of the Gamma distribution 
#'   (passed to \code{\link{optim}()})
#' @param vcov whether to return an approximate variance-covariance matrix of 
#'   the parameter vector
#' @return A list with elements \code{estimate} (parameter estimates for alpha 
#'   and beta) and, if \code{vcov = TRUE}, \code{vcov} (the variance-covariance 
#'   matrix of the parameter vector).
#' @export
mle_gamma = function(data, start = c(1, 1), vcov = FALSE) {
  loglike = function(param, x) {
    a = param[1]  # alpha (the shape parameter)
    b = param[2]  # beta (the rate parameter)
    n = length(x)
    n * (a * log(b) - lgamma(a)) + (a - 1) * sum(log(x)) - b * sum(x)
  }
  opt = optim(start, loglike, x = data, hessian = vcov, control = list(fnscale = -1))
  if (opt$convergence != 0) stop('optim() failed to converge')
  res = list(estimate = opt$par)
  if (vcov) res$vcov = solve(-opt$hessian)
  res
}
#' Sample from a bivariate Normal distribution
#' 
#' Simulate x from the marginal f(x), then y from f(y|x), and the pair (x, y) 
#' has the desired joint distribution.
#' @param n the desired sample size
#' @param m1,m2 the means of X and Y, respectively
#' @param s1,s2 the standard deviations of X and Y, respectively
#' @param rho the correlation coefficient between X and Y
#' @return A numeric matrix of two columns X and Y.
#' @export
rbinormal = function(n, m1 = 0, m2 = 0, s1 = 1, s2 = 1, rho = 0) {
  # warning: this is not an efficient implementation; you should use
  # vectorization in practice
  res = replicate(n, {
    x = rnorm(1, m1, s1)  # simulate from the marginal f(x)
    m2cond = m2 + s2/s1 * rho * (x - m1)  # conditional mean of Y
    s2cond = sqrt(1 - rho^2) * s2  # conditional sd of Y
    y = rnorm(1, m2cond, s2cond)  # simulate from the conditional f(y|x)
    c(x, y)
  })
  res = t(res)  # transpose the 2xn matrix to nx2
  colnames(res) = c('X', 'Y')
  res
}
