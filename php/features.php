<?php
declare(strict_types=1);

// CaliforniaStatePortal SDK feature factory

require_once __DIR__ . '/feature/BaseFeature.php';
require_once __DIR__ . '/feature/TestFeature.php';


class CaliforniaStatePortalFeatures
{
    public static function make_feature(string $name)
    {
        switch ($name) {
            case "base":
                return new CaliforniaStatePortalBaseFeature();
            case "test":
                return new CaliforniaStatePortalTestFeature();
            default:
                return new CaliforniaStatePortalBaseFeature();
        }
    }
}
