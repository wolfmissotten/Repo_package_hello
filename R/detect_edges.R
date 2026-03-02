#' Detects edges in a numeric image matrix using a kernel
#'
#' @param img Numeric matrix representing the image
#' @param kernel Numeric square matrix representing the filter kernel. Defaults to Laplacian.
#'
#' @returns Numeric matrix of normalized edge values (range 0-1)
#' @export
#'
#' @examples
#' img <- matrix(runif(100), 10, 10)
#' kernel <- matrix(c(-1,-1,-1,-1,8,-1,-1,-1,-1), 3,3)
#' detect_edges(img, kernel)
detect_edges <- function(img, kernel = matrix(c(-1,-1,-1,
                                                -1,8,-1,
                                                -1,-1,-1), 3,3)){
  # Apply kernel (convolution)
  edges_abs <- abs(apply_kernel(img, kernel))

  # Normalize to [0, 1]
  edges_norm <- normalize_matrix(edges_abs)
  return(edges_norm)
}



#' Apply a kernel to an image matrix
#'
#' @param img Numeric matrix
#' @param kernel Numeric square matrix
#'
#' @returns Numeric matrix after convolution
apply_kernel <- function(img, kernel) {
  nr <- nrow(img)
  nc <- ncol(img)
  k  <- nrow(kernel)
  pad <- floor(k/2)

  out <- matrix(0, nr, nc)

  for (i in (1+pad):(nr-pad)) {
    for (j in (1+pad):(nc-pad)) {
      block <- img[(i-pad):(i+pad), (j-pad):(j+pad)]
      out[i,j] <- sum(block * kernel)
    }
  }
  return(out)
}

#' Normalize a matrix to range `0-1`
#'
#' @param mat Numeric matrix
#'
#' @returns Numeric matrix normalized to `[0,1]`
normalize_matrix <- function(mat) {
  (mat - min(mat)) / (max(mat) - min(mat))
}

