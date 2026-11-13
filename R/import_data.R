#' @title Database
#' @name import_data
#'
#' @description Importação de dados contendo questões. Necessário o pacote RSQLite
#'     para leitura e manipulação da base SQL.
#'
#' @param path caminho para o base de dados
#'
#' @details path: argumento da função que fornece o caminho para a base de dados.
#'
#' @return Uma base de dados no formato data.frame contendo as variáveis module,
#'      submodule, code, title e text.
#'
#' @author Flaviano Williams Fernandes
#'
#' @seealso \code{\link[RSQLite]{dbConnect}}
#'
#' @examples
#' import_data(path = "~/backup/dbquaest.sqlite3")
#'
#' @export
import_data <- function(path){
  conn <- RSQLite::dbConnect(RSQLite::SQLite(), path)

  database <- RSQLite::dbGetQuery(conn = conn,
                         "SELECT module, submodule, code, title, text
                         FROM question"
  )
  return(database)
}
