% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{ADA}
\alias{ADA}
\title{Average Deviation Analog (ADA)}
\usage{
ADA(x, na.rm = TRUE)
}
\arguments{
\item{x}{a vector of frequencies}

\item{na.rm}{if TRUE, missing values are removed. If FALSE, NA is returned if there is any NA value.}
}
\value{
The value of the ADA statistics, which is normalised (varies between 0
  and 1).
}
\description{
Computes the average deviation analog (ADA) for a vector of frequencies of
categories.
}
\details{
According to Wilcox (1973, p. 328), the ADA is 'an analog of the average or
mean deviation'. The formula for the ADA is:
\deqn{1 - \frac{\sum_{i=1}^k \left| f_i - \frac{N}{K}\right|}{2 \frac{N}{K}(K-1)}}
}
\examples{
x <- rmultinom(1, 100, rep_len(0.25, 4))
x <- as.vector(t(x))
ADA(x)

df <- rmultinom(10, 100, rep_len(0.25, 4))
df <- as.data.frame(t(df))
apply(df, 1, ADA)
}
\references{
Wilcox, Allen R. 'Indices of Qualitative Variation and Political
  Measurement.' \emph{The Western Political Quarterly} 26, no. 2 (1 June
  1973): 325-43. doi:10.2307/446831.
}
