<?php
declare(strict_types=1);

// Typed models for the CaliforniaStatePortal SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
//
// These are documentation-grade value objects (PHP 8 typed properties),
// registered on the composer classmap autoload. The SDK boundary exchanges
// assoc-arrays; these classes name the shapes for tooling and typed callers.

/** Service entity data model. */
class Service
{
    public ?string $category = null;
    public ?string $department = null;
    public ?string $description = null;
    public ?string $id = null;
    public ?string $name = null;
    public ?bool $popular = null;
    public ?string $url = null;
}

/** Request payload for Service#list. */
class ServiceListMatch
{
    public ?string $category = null;
    public ?string $department = null;
    public ?string $description = null;
    public ?string $id = null;
    public ?string $name = null;
    public ?bool $popular = null;
    public ?string $url = null;
}

