% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ops_fulltext.R
\name{ops_fulltext}
\alias{ops_fulltext}
\title{retrieve full text using patent numbers}
\usage{
ops_fulltext(query = "", type = "", timer = 30)
}
\arguments{
\item{query}{A patent number or character vector containing patent numbers.}

\item{type}{Description, claims, or fulltext (availability). See details}

\item{timer}{Set the time delay between calls to OPS in seconds.}
}
\value{
A list.
}
\description{
For jurisdictions where full text is available. This is
  presently limited to Austria (AT), Canada (CA), the European Patent Office
  (EP), Great Britain (GB), the Patent Cooperation Treaty (WO), Spain (ES)
  and Switzerland (CH).
}
\details{
Setting type "fulltext" will simply retrieve information on the
  availability of fulltext elements for a given record. description will
  retrieve the available descriptions. claims will retrieve the available
  claims. Note that the function filters the countries to thise with full
  text availability (otherwise the query will fail). To identify documents
  inside full text availability use the patent family service to link from
  numbers outside fulltext (e.g. US) to those inside fulltext (e.g. EP or
  WO). Retrieval of multiple segments (biblio, description, claims) is
  supported by OPS but not yet in this function. Be cautious when using the
  arguments (e.g. description) as they will pull back a lot of data affecting
  your quota.
}
\examples{
\dontrun{ops_fulltext("WO0000034", type = "fulltext", timer = 20)}
}

