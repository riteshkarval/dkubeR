# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DLSupportTensorflow Class
#'
#' @field versions 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DLSupportTensorflow <- R6::R6Class(
  'DLSupportTensorflow',
  public = list(
    `versions` = NULL,
    initialize = function(`versions`){
      if (!missing(`versions`)) {
        stopifnot(is.list(`versions`), length(`versions`) != 0)
        lapply(`versions`, function(x) stopifnot(is.character(x)))
        self$`versions` <- `versions`
      }
    },
    toJSON = function() {
      DLSupportTensorflowObject <- list()
      if (!is.null(self$`versions`)) {
        DLSupportTensorflowObject[['versions']] <- self$`versions`
      }

      DLSupportTensorflowObject
    },
    fromJSON = function(DLSupportTensorflowJson) {
      DLSupportTensorflowObject <- jsonlite::fromJSON(DLSupportTensorflowJson)
      if (!is.null(DLSupportTensorflowObject$`versions`)) {
        self$`versions` <- DLSupportTensorflowObject$`versions`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "versions": [%s]
        }',
        lapply(self$`versions`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(DLSupportTensorflowJson) {
      DLSupportTensorflowObject <- jsonlite::fromJSON(DLSupportTensorflowJson)
      self$`versions` <- DLSupportTensorflowObject$`versions`
    }
  )
)