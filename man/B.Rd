% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{B}
\alias{B}
\title{B (modified geometric mean)}
\usage{
B(x, na.rm = TRUE)
}
\arguments{
\item{x}{a vector of frequencies}

\item{na.rm}{if TRUE, missing values are removed. If FALSE, NA is returned if there is any NA value.}
}
\value{
The value of the B statistics, which is normalised (varies between 0
  and 1).
}
\description{
Computes the B index for a vector of frequencies of categories.
}
\details{
According to Wilcox (1973, p. 330), and following Kaiser (1968), the B index
relies on the geometric mean, but corrects it for undesirable properties.
The formula for the B index is:
\deqn{1 - \sqrt{1 - \left(\sqrt[K]{\prod_{i=1}^k \frac{f_i K}{N}}\right)^2}}
}
\examples{
x <- rmultinom(1, 100, rep_len(0.25, 4))
x <- as.vector(t(x))
B(x)

df <- rmultinom(10, 100, rep_len(0.25, 4))
df <- as.data.frame(t(df))
apply(df, 1, B)
}
\references{
Wilcox, Allen R. 'Indices of Qualitative Variation and Political
  Measurement.' \emph{The Western Political Quarterly} 26, no. 2 (1 June
  1973): 325-43. doi:10.2307/446831.
  Kaiser, Henry F. 'A Measure of the Population Quality of Legislative Apportionment.' \emph{The American Political Science Review} 62, no. 1 (March 1968): 208. doi:10.2307/1953335.
}
