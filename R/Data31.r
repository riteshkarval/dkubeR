# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Data31 Class
#'
#' @field uid 
#' @field namespace 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Data31 <- R6::R6Class(
  'Data31',
  public = list(
    `uid` = NULL,
    `namespace` = NULL,
    initialize = function(`uid`, `namespace`){
      if (!missing(`uid`)) {
        stopifnot(is.character(`uid`), length(`uid`) == 1)
        self$`uid` <- `uid`
      }
      if (!missing(`namespace`)) {
        stopifnot(is.character(`namespace`), length(`namespace`) == 1)
        self$`namespace` <- `namespace`
      }
    },
    toJSON = function() {
      Data31Object <- list()
      if (!is.null(self$`uid`)) {
        Data31Object[['uid']] <- self$`uid`
      }
      if (!is.null(self$`namespace`)) {
        Data31Object[['namespace']] <- self$`namespace`
      }

      Data31Object
    },
    fromJSON = function(Data31Json) {
      Data31Object <- jsonlite::fromJSON(Data31Json)
      if (!is.null(Data31Object$`uid`)) {
        self$`uid` <- Data31Object$`uid`
      }
      if (!is.null(Data31Object$`namespace`)) {
        self$`namespace` <- Data31Object$`namespace`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uid": %s,
           "namespace": %s
        }',
        self$`uid`,
        self$`namespace`
      )
    },
    fromJSONString = function(Data31Json) {
      Data31Object <- jsonlite::fromJSON(Data31Json)
      self$`uid` <- Data31Object$`uid`
      self$`namespace` <- Data31Object$`namespace`
    }
  )
)