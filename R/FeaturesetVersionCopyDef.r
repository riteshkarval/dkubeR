# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' FeaturesetVersionCopyDef Class
#'
#' @field job_class 
#' @field job_uuid 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FeaturesetVersionCopyDef <- R6::R6Class(
  'FeaturesetVersionCopyDef',
  public = list(
    `job_class` = NULL,
    `job_uuid` = NULL,
    initialize = function(`job_class`, `job_uuid`){
      if (!missing(`job_class`)) {
        stopifnot(is.character(`job_class`), length(`job_class`) == 1)
        self$`job_class` <- `job_class`
      }
      if (!missing(`job_uuid`)) {
        stopifnot(is.character(`job_uuid`), length(`job_uuid`) == 1)
        self$`job_uuid` <- `job_uuid`
      }
    },
    toJSON = function() {
      FeaturesetVersionCopyDefObject <- list()
      if (!is.null(self$`job_class`)) {
        FeaturesetVersionCopyDefObject[['job_class']] <- self$`job_class`
      }
      if (!is.null(self$`job_uuid`)) {
        FeaturesetVersionCopyDefObject[['job_uuid']] <- self$`job_uuid`
      }

      FeaturesetVersionCopyDefObject
    },
    fromJSON = function(FeaturesetVersionCopyDefJson) {
      FeaturesetVersionCopyDefObject <- jsonlite::fromJSON(FeaturesetVersionCopyDefJson)
      if (!is.null(FeaturesetVersionCopyDefObject$`job_class`)) {
        self$`job_class` <- FeaturesetVersionCopyDefObject$`job_class`
      }
      if (!is.null(FeaturesetVersionCopyDefObject$`job_uuid`)) {
        self$`job_uuid` <- FeaturesetVersionCopyDefObject$`job_uuid`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "job_class": %s,
           "job_uuid": %s
        }',
        self$`job_class`,
        self$`job_uuid`
      )
    },
    fromJSONString = function(FeaturesetVersionCopyDefJson) {
      FeaturesetVersionCopyDefObject <- jsonlite::fromJSON(FeaturesetVersionCopyDefJson)
      self$`job_class` <- FeaturesetVersionCopyDefObject$`job_class`
      self$`job_uuid` <- FeaturesetVersionCopyDefObject$`job_uuid`
    }
  )
)