<?php
declare(strict_types=1);

// CaliforniaStatePortal SDK utility: make_context

require_once __DIR__ . '/../core/Context.php';

class CaliforniaStatePortalMakeContext
{
    public static function call(array $ctxmap, ?CaliforniaStatePortalContext $basectx): CaliforniaStatePortalContext
    {
        return new CaliforniaStatePortalContext($ctxmap, $basectx);
    }
}
