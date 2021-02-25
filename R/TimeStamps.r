# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' TimeStamps Class
#'
#' @field start 
#' @field end 
#' @field duration 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TimeStamps <- R6::R6Class(
  'TimeStamps',
  public = list(
    `start` = NULL,
    `end` = NULL,
    `duration` = NULL,
    initialize = function(`start`, `end`, `duration`){
      if (!missing(`start`)) {
        stopifnot(is.character(`start`), length(`start`) == 1)
        self$`start` <- `start`
      }
      if (!missing(`end`)) {
        stopifnot(is.character(`end`), length(`end`) == 1)
        self$`end` <- `end`
      }
      if (!missing(`duration`)) {
        stopifnot(R6::is.R6(`duration`))
        self$`duration` <- `duration`
      }
    },
    toJSON = function() {
      TimeStampsObject <- list()
      if (!is.null(self$`start`)) {
        TimeStampsObject[['start']] <- self$`start`
      }
      if (!is.null(self$`end`)) {
        TimeStampsObject[['end']] <- self$`end`
      }
      if (!is.null(self$`duration`)) {
        TimeStampsObject[['duration']] <- self$`duration`$toJSON()
      }

      TimeStampsObject
    },
    fromJSON = function(TimeStampsJson) {
      TimeStampsObject <- jsonlite::fromJSON(TimeStampsJson)
      if (!is.null(TimeStampsObject$`start`)) {
        self$`start` <- TimeStampsObject$`start`
      }
      if (!is.null(TimeStampsObject$`end`)) {
        self$`end` <- TimeStampsObject$`end`
      }
      if (!is.null(TimeStampsObject$`duration`)) {
        durationObject <- TimeStampsDuration$new()
        durationObject$fromJSON(jsonlite::toJSON(TimeStampsObject$duration, auto_unbox = TRUE))
        self$`duration` <- durationObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "start": %s,
           "end": %s,
           "duration": %s
        }',
        self$`start`,
        self$`end`,
        self$`duration`$toJSON()
      )
    },
    fromJSONString = function(TimeStampsJson) {
      TimeStampsObject <- jsonlite::fromJSON(TimeStampsJson)
      self$`start` <- TimeStampsObject$`start`
      self$`end` <- TimeStampsObject$`end`
      TimeStampsDurationObject <- TimeStampsDuration$new()
      self$`duration` <- TimeStampsDurationObject$fromJSON(jsonlite::toJSON(TimeStampsObject$duration, auto_unbox = TRUE))
    }
  )
)