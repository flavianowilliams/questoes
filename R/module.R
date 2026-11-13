#' @title Módulos
#' @name module
#'
#' @description Módulo contendo questões de mecânica clássica
#'
#' @return arquivo PDF
#'
#' @author Flaviano Williams Fernandes
#'
#' @examples
#' module("mechanics")
#'
#' @export
module <- function(modulo){
  path <- here::here("modules/mechanics/mechanics.qmd")
  system(paste0("quarto render ", path))
}
