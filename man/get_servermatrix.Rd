% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/download_db.R
\name{get_servermatrix}
\alias{get_servermatrix}
\title{get_servermatrix}
\usage{
get_servermatrix(
  dn = NULL,
  sslver = FALSE,
  printmatrix = TRUE,
  url = "https://methylation.recount.bio/",
  verbose = FALSE,
  sm_path = system.file("extdata", "servermatrix_rda", package = "recountmethylation")
)
}
\arguments{
\item{dn}{Server data returned from RCurl (default NULL).}

\item{sslver}{Whether to use SSL certificate authentication for server 
connection (default FALSE).}

\item{printmatrix}{Whether to print the data matrix to console (default 
TRUE).}

\item{url}{Server website url (default "https://methylation.recount.bio/").}

\item{verbose}{Whether to show verbose messages (default FALSE).}

\item{sm_path}{Path to the servermatrix_rda dir containing the stored 
servermatrix files (default: system.file...).}
}
\value{
Matrix of server files and file metadata
}
\description{
Get a matrix of server files. If the RCurl call fails, a matrix is loaded
from the stored package files at `sm_path`.
}
\examples{
sm <- get_servermatrix(url = "")
}
\seealso{
servermatrix, get_rmdl, smfilt
}
