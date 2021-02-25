# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DatumModelK8svolume Class
#'
#' @field name 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DatumModelK8svolume <- R6::R6Class(
  'DatumModelK8svolume',
  public = list(
    `name` = NULL,
    initialize = function(`name`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
    },
    toJSON = function() {
      DatumModelK8svolumeObject <- list()
      if (!is.null(self$`name`)) {
        DatumModelK8svolumeObject[['name']] <- self$`name`
      }

      DatumModelK8svolumeObject
    },
    fromJSON = function(DatumModelK8svolumeJson) {
      DatumModelK8svolumeObject <- jsonlite::fromJSON(DatumModelK8svolumeJson)
      if (!is.null(DatumModelK8svolumeObject$`name`)) {
        self$`name` <- DatumModelK8svolumeObject$`name`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s
        }',
        self$`name`
      )
    },
    fromJSONString = function(DatumModelK8svolumeJson) {
      DatumModelK8svolumeObject <- jsonlite::fromJSON(DatumModelK8svolumeJson)
      self$`name` <- DatumModelK8svolumeObject$`name`
    }
  )
)