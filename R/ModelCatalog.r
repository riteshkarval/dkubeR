# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ModelCatalog Class
#'
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ModelCatalog <- R6::R6Class(
  'ModelCatalog',
  public = list(
    initialize = function(){
    },
    toJSON = function() {
      ModelCatalogObject <- list()

      ModelCatalogObject
    },
    fromJSON = function(ModelCatalogJson) {
      ModelCatalogObject <- jsonlite::fromJSON(ModelCatalogJson)
    },
    toJSONString = function() {
       sprintf(
        '{
        }',
      )
    },
    fromJSONString = function(ModelCatalogJson) {
      ModelCatalogObject <- jsonlite::fromJSON(ModelCatalogJson)
    }
  )
)