# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' InlineResponse20055DataVersions Class
#'
#' @field version 
#' @field jobs 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InlineResponse20055DataVersions <- R6::R6Class(
  'InlineResponse20055DataVersions',
  public = list(
    `version` = NULL,
    `jobs` = NULL,
    initialize = function(`version`, `jobs`){
      if (!missing(`version`)) {
        stopifnot(R6::is.R6(`version`))
        self$`version` <- `version`
      }
      if (!missing(`jobs`)) {
        stopifnot(is.list(`jobs`), length(`jobs`) != 0)
        lapply(`jobs`, function(x) stopifnot(R6::is.R6(x)))
        self$`jobs` <- `jobs`
      }
    },
    toJSON = function() {
      InlineResponse20055DataVersionsObject <- list()
      if (!is.null(self$`version`)) {
        InlineResponse20055DataVersionsObject[['version']] <- self$`version`$toJSON()
      }
      if (!is.null(self$`jobs`)) {
        InlineResponse20055DataVersionsObject[['jobs']] <- lapply(self$`jobs`, function(x) x$toJSON())
      }

      InlineResponse20055DataVersionsObject
    },
    fromJSON = function(InlineResponse20055DataVersionsJson) {
      InlineResponse20055DataVersionsObject <- jsonlite::fromJSON(InlineResponse20055DataVersionsJson)
      if (!is.null(InlineResponse20055DataVersionsObject$`version`)) {
        versionObject <- FeatureSetVersionDef$new()
        versionObject$fromJSON(jsonlite::toJSON(InlineResponse20055DataVersionsObject$version, auto_unbox = TRUE))
        self$`version` <- versionObject
      }
      if (!is.null(InlineResponse20055DataVersionsObject$`jobs`)) {
        self$`jobs` <- lapply(InlineResponse20055DataVersionsObject$`jobs`, function(x) {
          jobsObject <- FeatureSetUsageDef$new()
          jobsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          jobsObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "version": %s,
           "jobs": [%s]
        }',
        self$`version`$toJSON(),
        lapply(self$`jobs`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(InlineResponse20055DataVersionsJson) {
      InlineResponse20055DataVersionsObject <- jsonlite::fromJSON(InlineResponse20055DataVersionsJson)
      FeatureSetVersionDefObject <- FeatureSetVersionDef$new()
      self$`version` <- FeatureSetVersionDefObject$fromJSON(jsonlite::toJSON(InlineResponse20055DataVersionsObject$version, auto_unbox = TRUE))
      self$`jobs` <- lapply(InlineResponse20055DataVersionsObject$`jobs`, function(x) FeatureSetUsageDef$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)