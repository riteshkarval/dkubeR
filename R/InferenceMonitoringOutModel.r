# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' InferenceMonitoringOutModel Class
#'
#' @field job 
#' @field prometheus_query 
#' @field deployments 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InferenceMonitoringOutModel <- R6::R6Class(
  'InferenceMonitoringOutModel',
  public = list(
    `job` = NULL,
    `prometheus_query` = NULL,
    `deployments` = NULL,
    initialize = function(`job`, `prometheus_query`, `deployments`){
      if (!missing(`job`)) {
        stopifnot(R6::is.R6(`job`))
        self$`job` <- `job`
      }
      if (!missing(`prometheus_query`)) {
        stopifnot(is.character(`prometheus_query`), length(`prometheus_query`) == 1)
        self$`prometheus_query` <- `prometheus_query`
      }
      if (!missing(`deployments`)) {
        stopifnot(is.list(`deployments`), length(`deployments`) != 0)
        lapply(`deployments`, function(x) stopifnot(is.character(x)))
        self$`deployments` <- `deployments`
      }
    },
    toJSON = function() {
      InferenceMonitoringOutModelObject <- list()
      if (!is.null(self$`job`)) {
        InferenceMonitoringOutModelObject[['job']] <- self$`job`$toJSON()
      }
      if (!is.null(self$`prometheus_query`)) {
        InferenceMonitoringOutModelObject[['prometheus_query']] <- self$`prometheus_query`
      }
      if (!is.null(self$`deployments`)) {
        InferenceMonitoringOutModelObject[['deployments']] <- self$`deployments`
      }

      InferenceMonitoringOutModelObject
    },
    fromJSON = function(InferenceMonitoringOutModelJson) {
      InferenceMonitoringOutModelObject <- jsonlite::fromJSON(InferenceMonitoringOutModelJson)
      if (!is.null(InferenceMonitoringOutModelObject$`job`)) {
        jobObject <- JobModel$new()
        jobObject$fromJSON(jsonlite::toJSON(InferenceMonitoringOutModelObject$job, auto_unbox = TRUE))
        self$`job` <- jobObject
      }
      if (!is.null(InferenceMonitoringOutModelObject$`prometheus_query`)) {
        self$`prometheus_query` <- InferenceMonitoringOutModelObject$`prometheus_query`
      }
      if (!is.null(InferenceMonitoringOutModelObject$`deployments`)) {
        self$`deployments` <- InferenceMonitoringOutModelObject$`deployments`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "job": %s,
           "prometheus_query": %s,
           "deployments": [%s]
        }',
        self$`job`$toJSON(),
        self$`prometheus_query`,
        lapply(self$`deployments`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(InferenceMonitoringOutModelJson) {
      InferenceMonitoringOutModelObject <- jsonlite::fromJSON(InferenceMonitoringOutModelJson)
      JobModelObject <- JobModel$new()
      self$`job` <- JobModelObject$fromJSON(jsonlite::toJSON(InferenceMonitoringOutModelObject$job, auto_unbox = TRUE))
      self$`prometheus_query` <- InferenceMonitoringOutModelObject$`prometheus_query`
      self$`deployments` <- InferenceMonitoringOutModelObject$`deployments`
    }
  )
)