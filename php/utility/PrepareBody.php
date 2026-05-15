<?php
declare(strict_types=1);

// CaliforniaStatePortal SDK utility: prepare_body

class CaliforniaStatePortalPrepareBody
{
    public static function call(CaliforniaStatePortalContext $ctx): mixed
    {
        if ($ctx->op->input === 'data') {
            return ($ctx->utility->transform_request)($ctx);
        }
        return null;
    }
}
