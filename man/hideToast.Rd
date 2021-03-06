% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hideToast.R
\name{hideToast}
\alias{hideToast}
\title{Hide existing toast messages}
\usage{
hideToast(animate = TRUE, session = shiny::getDefaultReactiveDomain())
}
\arguments{
\item{animate}{a logical indicating whether to remove the toast message(s) instantly or use its \code{hideMethod} with animations to remove (Default).}

\item{session}{the Shiny session. Defaults to \code{shiny::getDefaultReactiveDomain()}.}
}
\value{
`invisible()`
}
\description{
Hide existing toast messages
}
