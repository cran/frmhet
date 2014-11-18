\name{frmhet.pe}
\alias{frmhet.pe}

\title{
Fractional Regression Models under Unobserved Heterogeneity - Partial Effects
}
\description{
\code{frmhet.pe} is used to compute average and/or conditional partial effects in fractional regression models 
under unobserved heterogeneity.
}
\usage{
frmhet.pe(object, smearing = T, APE = T, CPE = F, at = NULL, which.x = NULL,
	table = T, variance = T)
}

\arguments{
  \item{object}{
an object containing the results of an \code{frmhet} command.
}
  \item{smearing}{
a logical value indicating whether the smearing correction is to be applied
}
  \item{APE}{
a logical value indicating whether average partial effects are to be computed.
}
  \item{CPE}{
a logical value indicating whether conditional partial effects are to be computed.
}
  \item{at}{
a numeric vector containing the covariates' values at which the conditional partial effects are to be computed or 
the strings \code{"mean"} (the default) or \code{"median"}, in which cases the covariates are evaluated at their 
mean or median values (or mode, in case of dummy variables), respectively.
}
  \item{which.x}{
a vector containing the names of the covariates to which the partial effects are to be computed.
}
  \item{table}{
a logical value indicating whether a summary table with the results should be printed.
}
  \item{variance}{
a logical value indicating whether the variance of the estimated partial effects should be calculated. Defaults to 
\code{TRUE} whenever \code{table = TRUE}.
}
}

\details{
\code{frmhet.pe} calculates partial effects for fractional regression models estimated via
\code{frmhet}. \code{frmhet.pe} may be used to compute average or conditional partial effects. 
These partial effects may be conditional only on observables, using the smearing estimator, 
or also on unobservables, setting the error term to zero. For calculating standard errors, it 
is taken into account the option that was previously chosen for estimating the model. See 
Ramalho and Ramalho (2015) for details on the computation of partial effects for fractional 
regression models under unobserved heterogeneity.
}

\value{
\code{frmhet.pe} returns a list with the following element:
  \item{PE.p}{a named vector of partial effects.
}

If \code{variance = TRUE} or \code{table = TRUE}, the previous list also contains the following element:
  \item{PE.sd}{a named vector of standard errors of the estimated partial effects.
}

When both average and conditional partial effects are requested, two lists containing the previous elements are 
returned, indexed by the prefixes \code{ape} and \code{cpe}.
}

\references{
Ramalho, E.A. and J.J.S. Ramalho (2015), "Moment-based estimation of nonlinear 
regression models with boundary outcomes and endogeneity, with applications to 
nonnegative and fractional responses", \emph{Econometric Reviews}, forthcoming 
(DOI: 10.1080/07474938.2014.976531).
}

\author{
Joaquim J.S. Ramalho <jsr@uevora.pt>
}

\seealso{
\code{\link{frmhet}}, for fitting fractional regression models under unobserved heterogeneity.\cr
\code{\link{frmhet.reset}}, for the RESET test.\cr
}

\examples{
## See the website http://evunix.uevora.pt/~jsr/FRM.htm.
}
