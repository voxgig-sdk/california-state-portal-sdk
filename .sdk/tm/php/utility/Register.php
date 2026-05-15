<?php
declare(strict_types=1);

// CaliforniaStatePortal SDK utility registration

require_once __DIR__ . '/../core/UtilityType.php';
require_once __DIR__ . '/Clean.php';
require_once __DIR__ . '/Done.php';
require_once __DIR__ . '/MakeError.php';
require_once __DIR__ . '/FeatureAdd.php';
require_once __DIR__ . '/FeatureHook.php';
require_once __DIR__ . '/FeatureInit.php';
require_once __DIR__ . '/Fetcher.php';
require_once __DIR__ . '/MakeFetchDef.php';
require_once __DIR__ . '/MakeContext.php';
require_once __DIR__ . '/MakeOptions.php';
require_once __DIR__ . '/MakeRequest.php';
require_once __DIR__ . '/MakeResponse.php';
require_once __DIR__ . '/MakeResult.php';
require_once __DIR__ . '/MakePoint.php';
require_once __DIR__ . '/MakeSpec.php';
require_once __DIR__ . '/MakeUrl.php';
require_once __DIR__ . '/Param.php';
require_once __DIR__ . '/PrepareAuth.php';
require_once __DIR__ . '/PrepareBody.php';
require_once __DIR__ . '/PrepareHeaders.php';
require_once __DIR__ . '/PrepareMethod.php';
require_once __DIR__ . '/PrepareParams.php';
require_once __DIR__ . '/PreparePath.php';
require_once __DIR__ . '/PrepareQuery.php';
require_once __DIR__ . '/ResultBasic.php';
require_once __DIR__ . '/ResultBody.php';
require_once __DIR__ . '/ResultHeaders.php';
require_once __DIR__ . '/TransformRequest.php';
require_once __DIR__ . '/TransformResponse.php';

CaliforniaStatePortalUtility::setRegistrar(function (CaliforniaStatePortalUtility $u): void {
    $u->clean = [CaliforniaStatePortalClean::class, 'call'];
    $u->done = [CaliforniaStatePortalDone::class, 'call'];
    $u->make_error = [CaliforniaStatePortalMakeError::class, 'call'];
    $u->feature_add = [CaliforniaStatePortalFeatureAdd::class, 'call'];
    $u->feature_hook = [CaliforniaStatePortalFeatureHook::class, 'call'];
    $u->feature_init = [CaliforniaStatePortalFeatureInit::class, 'call'];
    $u->fetcher = [CaliforniaStatePortalFetcher::class, 'call'];
    $u->make_fetch_def = [CaliforniaStatePortalMakeFetchDef::class, 'call'];
    $u->make_context = [CaliforniaStatePortalMakeContext::class, 'call'];
    $u->make_options = [CaliforniaStatePortalMakeOptions::class, 'call'];
    $u->make_request = [CaliforniaStatePortalMakeRequest::class, 'call'];
    $u->make_response = [CaliforniaStatePortalMakeResponse::class, 'call'];
    $u->make_result = [CaliforniaStatePortalMakeResult::class, 'call'];
    $u->make_point = [CaliforniaStatePortalMakePoint::class, 'call'];
    $u->make_spec = [CaliforniaStatePortalMakeSpec::class, 'call'];
    $u->make_url = [CaliforniaStatePortalMakeUrl::class, 'call'];
    $u->param = [CaliforniaStatePortalParam::class, 'call'];
    $u->prepare_auth = [CaliforniaStatePortalPrepareAuth::class, 'call'];
    $u->prepare_body = [CaliforniaStatePortalPrepareBody::class, 'call'];
    $u->prepare_headers = [CaliforniaStatePortalPrepareHeaders::class, 'call'];
    $u->prepare_method = [CaliforniaStatePortalPrepareMethod::class, 'call'];
    $u->prepare_params = [CaliforniaStatePortalPrepareParams::class, 'call'];
    $u->prepare_path = [CaliforniaStatePortalPreparePath::class, 'call'];
    $u->prepare_query = [CaliforniaStatePortalPrepareQuery::class, 'call'];
    $u->result_basic = [CaliforniaStatePortalResultBasic::class, 'call'];
    $u->result_body = [CaliforniaStatePortalResultBody::class, 'call'];
    $u->result_headers = [CaliforniaStatePortalResultHeaders::class, 'call'];
    $u->transform_request = [CaliforniaStatePortalTransformRequest::class, 'call'];
    $u->transform_response = [CaliforniaStatePortalTransformResponse::class, 'call'];
});
