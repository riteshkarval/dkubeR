# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GitAccessInfo Class
#'
#' @field path 
#' @field url 
#' @field branch 
#' @field credentials 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GitAccessInfo <- R6::R6Class(
  'GitAccessInfo',
  public = list(
    `path` = NULL,
    `url` = NULL,
    `branch` = NULL,
    `credentials` = NULL,
    initialize = function(`path`, `url`, `branch`, `credentials`){
      if (!missing(`path`)) {
        stopifnot(is.character(`path`), length(`path`) == 1)
        self$`path` <- `path`
      }
      if (!missing(`url`)) {
        stopifnot(is.character(`url`), length(`url`) == 1)
        self$`url` <- `url`
      }
      if (!missing(`branch`)) {
        stopifnot(is.character(`branch`), length(`branch`) == 1)
        self$`branch` <- `branch`
      }
      if (!missing(`credentials`)) {
        stopifnot(R6::is.R6(`credentials`))
        self$`credentials` <- `credentials`
      }
    },
    toJSON = function() {
      GitAccessInfoObject <- list()
      if (!is.null(self$`path`)) {
        GitAccessInfoObject[['path']] <- self$`path`
      }
      if (!is.null(self$`url`)) {
        GitAccessInfoObject[['url']] <- self$`url`
      }
      if (!is.null(self$`branch`)) {
        GitAccessInfoObject[['branch']] <- self$`branch`
      }
      if (!is.null(self$`credentials`)) {
        GitAccessInfoObject[['credentials']] <- self$`credentials`$toJSON()
      }

      GitAccessInfoObject
    },
    fromJSON = function(GitAccessInfoJson) {
      GitAccessInfoObject <- jsonlite::fromJSON(GitAccessInfoJson)
      if (!is.null(GitAccessInfoObject$`path`)) {
        self$`path` <- GitAccessInfoObject$`path`
      }
      if (!is.null(GitAccessInfoObject$`url`)) {
        self$`url` <- GitAccessInfoObject$`url`
      }
      if (!is.null(GitAccessInfoObject$`branch`)) {
        self$`branch` <- GitAccessInfoObject$`branch`
      }
      if (!is.null(GitAccessInfoObject$`credentials`)) {
        credentialsObject <- GitAccessCredentials$new()
        credentialsObject$fromJSON(jsonlite::toJSON(GitAccessInfoObject$credentials, auto_unbox = TRUE))
        self$`credentials` <- credentialsObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "path": %s,
           "url": %s,
           "branch": %s,
           "credentials": %s
        }',
        self$`path`,
        self$`url`,
        self$`branch`,
        self$`credentials`$toJSON()
      )
    },
    fromJSONString = function(GitAccessInfoJson) {
      GitAccessInfoObject <- jsonlite::fromJSON(GitAccessInfoJson)
      self$`path` <- GitAccessInfoObject$`path`
      self$`url` <- GitAccessInfoObject$`url`
      self$`branch` <- GitAccessInfoObject$`branch`
      GitAccessCredentialsObject <- GitAccessCredentials$new()
      self$`credentials` <- GitAccessCredentialsObject$fromJSON(jsonlite::toJSON(GitAccessInfoObject$credentials, auto_unbox = TRUE))
    }
  )
)