<?php
declare(strict_types=1);

// CaliforniaStatePortal SDK utility: feature_add

class CaliforniaStatePortalFeatureAdd
{
    public static function call(CaliforniaStatePortalContext $ctx, mixed $f): void
    {
        $ctx->client->features[] = $f;
    }
}
