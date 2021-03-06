#' Calculate the bivariate absolute error for a forecast/observation wind vector pair
#'
#' Calculate the bivariate absolute error for a forecast/observation wind vector pair. Missing values are not allowed and NA will be returned.
#' @param ob.u observed u component of wind
#' @param ob.v observed v component of wind
#' @param fcst.u forecast u component of wind
#' @param fcst.v forecast v component of wind
#' @return numeric ... the bivariate absolute error
#' @author Bryan Holman
#' @keywords wind bivariate absolute error verification
#' @export
#' @examples
#' getbae(ob.u, ob.v, fcst.u, fcst.v)

# returns the bivariate absolute error when given observed u, observed v,
# forecasted u, and forecasted v
getbae <- function(ob.u, ob.v, fcst.u, fcst.v) {

    # If any information is missing, we cannot do the calculation!
    if (anyNA(c(ob.u, ob.v, fcst.u, fcst.v))) return(NA)

    # else return the bAE
    return(sqrt((fcst.u - ob.u)^2 + (fcst.v - ob.v)^2))
}
