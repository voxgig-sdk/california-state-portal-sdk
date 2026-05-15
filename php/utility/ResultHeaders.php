<?php
declare(strict_types=1);

// CaliforniaStatePortal SDK utility: result_headers

class CaliforniaStatePortalResultHeaders
{
    public static function call(CaliforniaStatePortalContext $ctx): ?CaliforniaStatePortalResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result) {
            if ($response && is_array($response->headers)) {
                $result->headers = $response->headers;
            } else {
                $result->headers = [];
            }
        }
        return $result;
    }
}
