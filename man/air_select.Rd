% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/airtabler.R
\name{air_select}
\alias{air_select}
\title{Select}
\usage{
air_select(
  base,
  table_name,
  record_id = NULL,
  fields = NULL,
  filterByFormula = NULL,
  maxRecord = NULL,
  sort = NULL,
  view = NULL,
  pageSize = NULL,
  offset = NULL,
  combined_result = TRUE
)
}
\arguments{
\item{base}{Airtable base}

\item{table_name}{Table name}

\item{record_id}{(optional) Use record ID argument to retrieve an existing
record details}

\item{fields}{(optional) Only data for fields whose names are in this list
will be included in the records. If you don't need every field, you can use
this parameter to reduce the amount of data transferred.}

\item{filterByFormula}{(optional) A formula used to filter records.}

\item{maxRecord}{(optional) The maximum total number of records that will be
returned.}

\item{sort}{A list of sort objects that specifies how the records will be
ordered.}

\item{view}{(optional) The name or ID of the view defined in the table}

\item{pageSize}{(optional) The number of records returned in each request.
Must be less than or equal to 100. Default is 100.}

\item{offset}{(optional) To fetch the next page of records set this argument
with a value of offset element from previous response}

\item{combined_result}{If TRUE (default) all data is returned in the same
data frame. If FALSE table fields are returned in separate \code{fields}
element.}
}
\value{
A data frame with records or a list with record details if
  \code{record_id} is specified.
}
\description{
Select records from table
}
\section{View}{

  You can retrieve records in an order of a view by providing the name or ID of
  the view in the view query parameter. The results will include only records
  visible in the order they are displayed.
}

\section{Filter by formula}{

  The formula will be evaluated for each record, and if the result is not 0,
  false, "", NaN, [], or #Error! the record will be included in the response.
  If combined with view, only records in that view which satisfy the formula
  will be returned. For example, to only include records where Country isn't
  empty, pass in: NOT({Country} = '')
}

\section{Sorting}{

  Each sort object must have a field key specifying the name of
  the field to sort on, and an optional direction key that is either "asc" or
  "desc". The default direction is "asc".
  For example, to sort records by Country, pass in: \code{list(field =
  "Country", direction = "desc")}
}

