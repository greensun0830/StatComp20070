#' @title The Nearest N User Neighborhood
#' @name NearestNUserNeighborhood
#' @description The function computes the nearest n user neighborhood
#' @param S S is the similarity matrix of users
#' @param n n is the number of neighborhood. 
#' @return  The Nearest N User Neighborhood
#' @examples
#' \dontrun{
#' data(S)
#' NEIGHBORHOOD_NUM <- 2
#' N <- NearestNUserNeighborhood(S, NEIGHBORHOOD_NUM)
#' N
#' }
#' @export
NearestNUserNeighborhood <- function(S, n){
  row <- nrow(S)
  neighbor <- matrix(0, row, n)
  for(z1 in 1:row){
    for(z2 in 1:n){
      m <- which.max(S[,z1])
      neighbor[z1,][z2] <- m
      S[,z1][m] = 0
    }
  }
  neighbor
}