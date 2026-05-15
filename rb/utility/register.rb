# CaliforniaStatePortal SDK utility registration
require_relative '../core/utility_type'
require_relative 'clean'
require_relative 'done'
require_relative 'make_error'
require_relative 'feature_add'
require_relative 'feature_hook'
require_relative 'feature_init'
require_relative 'fetcher'
require_relative 'make_fetch_def'
require_relative 'make_context'
require_relative 'make_options'
require_relative 'make_request'
require_relative 'make_response'
require_relative 'make_result'
require_relative 'make_point'
require_relative 'make_spec'
require_relative 'make_url'
require_relative 'param'
require_relative 'prepare_auth'
require_relative 'prepare_body'
require_relative 'prepare_headers'
require_relative 'prepare_method'
require_relative 'prepare_params'
require_relative 'prepare_path'
require_relative 'prepare_query'
require_relative 'result_basic'
require_relative 'result_body'
require_relative 'result_headers'
require_relative 'transform_request'
require_relative 'transform_response'

CaliforniaStatePortalUtility.registrar = ->(u) {
  u.clean = CaliforniaStatePortalUtilities::Clean
  u.done = CaliforniaStatePortalUtilities::Done
  u.make_error = CaliforniaStatePortalUtilities::MakeError
  u.feature_add = CaliforniaStatePortalUtilities::FeatureAdd
  u.feature_hook = CaliforniaStatePortalUtilities::FeatureHook
  u.feature_init = CaliforniaStatePortalUtilities::FeatureInit
  u.fetcher = CaliforniaStatePortalUtilities::Fetcher
  u.make_fetch_def = CaliforniaStatePortalUtilities::MakeFetchDef
  u.make_context = CaliforniaStatePortalUtilities::MakeContext
  u.make_options = CaliforniaStatePortalUtilities::MakeOptions
  u.make_request = CaliforniaStatePortalUtilities::MakeRequest
  u.make_response = CaliforniaStatePortalUtilities::MakeResponse
  u.make_result = CaliforniaStatePortalUtilities::MakeResult
  u.make_point = CaliforniaStatePortalUtilities::MakePoint
  u.make_spec = CaliforniaStatePortalUtilities::MakeSpec
  u.make_url = CaliforniaStatePortalUtilities::MakeUrl
  u.param = CaliforniaStatePortalUtilities::Param
  u.prepare_auth = CaliforniaStatePortalUtilities::PrepareAuth
  u.prepare_body = CaliforniaStatePortalUtilities::PrepareBody
  u.prepare_headers = CaliforniaStatePortalUtilities::PrepareHeaders
  u.prepare_method = CaliforniaStatePortalUtilities::PrepareMethod
  u.prepare_params = CaliforniaStatePortalUtilities::PrepareParams
  u.prepare_path = CaliforniaStatePortalUtilities::PreparePath
  u.prepare_query = CaliforniaStatePortalUtilities::PrepareQuery
  u.result_basic = CaliforniaStatePortalUtilities::ResultBasic
  u.result_body = CaliforniaStatePortalUtilities::ResultBody
  u.result_headers = CaliforniaStatePortalUtilities::ResultHeaders
  u.transform_request = CaliforniaStatePortalUtilities::TransformRequest
  u.transform_response = CaliforniaStatePortalUtilities::TransformResponse
}
