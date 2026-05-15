<?php
declare(strict_types=1);

// CaliforniaStatePortal SDK utility: result_body

class CaliforniaStatePortalResultBody
{
    public static function call(CaliforniaStatePortalContext $ctx): ?CaliforniaStatePortalResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result && $response && $response->json_func && $response->body) {
            $result->body = ($response->json_func)();
        }
        return $result;
    }
}
