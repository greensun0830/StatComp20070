% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/UserBasedRecommender.R
\name{UserBasedRecommender}
\alias{UserBasedRecommender}
\title{Recommender based on users}
\usage{
UserBasedRecommender(uid, n, M, S, N)
}
\arguments{
\item{uid}{user's id}

\item{n}{the max number of recommender results}

\item{M}{the data model}

\item{S}{S is the similarity matrix of users}

\item{N}{The Nearest N User Neighborhood}
}
\value{
the recommend result
}
\description{
Recommend things based on users
}
\examples{
\dontrun{
data(M)
data(S)
data(N)
RECOMMENDER_NUM <- 3
R1 <-UserBasedRecommender(1, RECOMMENDER_NUM, M, S, N)
R1
R2 <- UserBasedRecommender(2, RECOMMENDER_NUM, M, S, N)
R2
R3 <- UserBasedRecommender(3, RECOMMENDER_NUM, M, S, N)
R3
R4 <- UserBasedRecommender(4, RECOMMENDER_NUM, M, S, N)
R4
R5 <- UserBasedRecommender(5, RECOMMENDER_NUM, M, S, N)
R5
}
}
