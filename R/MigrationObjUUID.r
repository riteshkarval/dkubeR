# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' MigrationObjUUID Class
#'
#' @field src_UUID 
#' @field tgt_UUID 
#' @field src_name 
#' @field tgt_name 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MigrationObjUUID <- R6::R6Class(
  'MigrationObjUUID',
  public = list(
    `src_UUID` = NULL,
    `tgt_UUID` = NULL,
    `src_name` = NULL,
    `tgt_name` = NULL,
    initialize = function(`src_UUID`, `tgt_UUID`, `src_name`, `tgt_name`){
      if (!missing(`src_UUID`)) {
        stopifnot(is.character(`src_UUID`), length(`src_UUID`) == 1)
        self$`src_UUID` <- `src_UUID`
      }
      if (!missing(`tgt_UUID`)) {
        stopifnot(is.character(`tgt_UUID`), length(`tgt_UUID`) == 1)
        self$`tgt_UUID` <- `tgt_UUID`
      }
      if (!missing(`src_name`)) {
        stopifnot(is.character(`src_name`), length(`src_name`) == 1)
        self$`src_name` <- `src_name`
      }
      if (!missing(`tgt_name`)) {
        stopifnot(is.character(`tgt_name`), length(`tgt_name`) == 1)
        self$`tgt_name` <- `tgt_name`
      }
    },
    toJSON = function() {
      MigrationObjUUIDObject <- list()
      if (!is.null(self$`src_UUID`)) {
        MigrationObjUUIDObject[['src_UUID']] <- self$`src_UUID`
      }
      if (!is.null(self$`tgt_UUID`)) {
        MigrationObjUUIDObject[['tgt_UUID']] <- self$`tgt_UUID`
      }
      if (!is.null(self$`src_name`)) {
        MigrationObjUUIDObject[['src_name']] <- self$`src_name`
      }
      if (!is.null(self$`tgt_name`)) {
        MigrationObjUUIDObject[['tgt_name']] <- self$`tgt_name`
      }

      MigrationObjUUIDObject
    },
    fromJSON = function(MigrationObjUUIDJson) {
      MigrationObjUUIDObject <- jsonlite::fromJSON(MigrationObjUUIDJson)
      if (!is.null(MigrationObjUUIDObject$`src_UUID`)) {
        self$`src_UUID` <- MigrationObjUUIDObject$`src_UUID`
      }
      if (!is.null(MigrationObjUUIDObject$`tgt_UUID`)) {
        self$`tgt_UUID` <- MigrationObjUUIDObject$`tgt_UUID`
      }
      if (!is.null(MigrationObjUUIDObject$`src_name`)) {
        self$`src_name` <- MigrationObjUUIDObject$`src_name`
      }
      if (!is.null(MigrationObjUUIDObject$`tgt_name`)) {
        self$`tgt_name` <- MigrationObjUUIDObject$`tgt_name`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "src_UUID": %s,
           "tgt_UUID": %s,
           "src_name": %s,
           "tgt_name": %s
        }',
        self$`src_UUID`,
        self$`tgt_UUID`,
        self$`src_name`,
        self$`tgt_name`
      )
    },
    fromJSONString = function(MigrationObjUUIDJson) {
      MigrationObjUUIDObject <- jsonlite::fromJSON(MigrationObjUUIDJson)
      self$`src_UUID` <- MigrationObjUUIDObject$`src_UUID`
      self$`tgt_UUID` <- MigrationObjUUIDObject$`tgt_UUID`
      self$`src_name` <- MigrationObjUUIDObject$`src_name`
      self$`tgt_name` <- MigrationObjUUIDObject$`tgt_name`
    }
  )
)