# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' K8SVolumeInfo Class
#'
#' @field Name 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
K8SVolumeInfo <- R6::R6Class(
  'K8SVolumeInfo',
  public = list(
    `Name` = NULL,
    initialize = function(`Name`){
      if (!missing(`Name`)) {
        stopifnot(is.character(`Name`), length(`Name`) == 1)
        self$`Name` <- `Name`
      }
    },
    toJSON = function() {
      K8SVolumeInfoObject <- list()
      if (!is.null(self$`Name`)) {
        K8SVolumeInfoObject[['Name']] <- self$`Name`
      }

      K8SVolumeInfoObject
    },
    fromJSON = function(K8SVolumeInfoJson) {
      K8SVolumeInfoObject <- jsonlite::fromJSON(K8SVolumeInfoJson)
      if (!is.null(K8SVolumeInfoObject$`Name`)) {
        self$`Name` <- K8SVolumeInfoObject$`Name`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "Name": %s
        }',
        self$`Name`
      )
    },
    fromJSONString = function(K8SVolumeInfoJson) {
      K8SVolumeInfoObject <- jsonlite::fromJSON(K8SVolumeInfoJson)
      self$`Name` <- K8SVolumeInfoObject$`Name`
    }
  )
)