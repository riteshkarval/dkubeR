# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' JobFeaturesetModel Class
#'
#' @field inputs 
#' @field outputs 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
JobFeaturesetModel <- R6::R6Class(
  'JobFeaturesetModel',
  public = list(
    `inputs` = NULL,
    `outputs` = NULL,
    initialize = function(`inputs`, `outputs`){
      if (!missing(`inputs`)) {
        stopifnot(is.list(`inputs`), length(`inputs`) != 0)
        lapply(`inputs`, function(x) stopifnot(R6::is.R6(x)))
        self$`inputs` <- `inputs`
      }
      if (!missing(`outputs`)) {
        stopifnot(is.list(`outputs`), length(`outputs`) != 0)
        lapply(`outputs`, function(x) stopifnot(R6::is.R6(x)))
        self$`outputs` <- `outputs`
      }
    },
    toJSON = function() {
      JobFeaturesetModelObject <- list()
      if (!is.null(self$`inputs`)) {
        JobFeaturesetModelObject[['inputs']] <- lapply(self$`inputs`, function(x) x$toJSON())
      }
      if (!is.null(self$`outputs`)) {
        JobFeaturesetModelObject[['outputs']] <- lapply(self$`outputs`, function(x) x$toJSON())
      }

      JobFeaturesetModelObject
    },
    fromJSON = function(JobFeaturesetModelJson) {
      JobFeaturesetModelObject <- jsonlite::fromJSON(JobFeaturesetModelJson)
      if (!is.null(JobFeaturesetModelObject$`inputs`)) {
        self$`inputs` <- lapply(JobFeaturesetModelObject$`inputs`, function(x) {
          inputsObject <- JobInputFeaturesetModel$new()
          inputsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          inputsObject
        })
      }
      if (!is.null(JobFeaturesetModelObject$`outputs`)) {
        self$`outputs` <- lapply(JobFeaturesetModelObject$`outputs`, function(x) {
          outputsObject <- JobInputFeaturesetModel$new()
          outputsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          outputsObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "inputs": [%s],
           "outputs": [%s]
        }',
        lapply(self$`inputs`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`outputs`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(JobFeaturesetModelJson) {
      JobFeaturesetModelObject <- jsonlite::fromJSON(JobFeaturesetModelJson)
      self$`inputs` <- lapply(JobFeaturesetModelObject$`inputs`, function(x) JobInputFeaturesetModel$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`outputs` <- lapply(JobFeaturesetModelObject$`outputs`, function(x) JobInputFeaturesetModel$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)