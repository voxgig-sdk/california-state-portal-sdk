<?php
declare(strict_types=1);

// CaliforniaStatePortal SDK base feature

class CaliforniaStatePortalBaseFeature
{
    public string $version;
    public string $name;
    public bool $active;

    public function __construct()
    {
        $this->version = '0.0.1';
        $this->name = 'base';
        $this->active = true;
    }

    public function get_version(): string { return $this->version; }
    public function get_name(): string { return $this->name; }
    public function get_active(): bool { return $this->active; }

    public function init(CaliforniaStatePortalContext $ctx, array $options): void {}
    public function PostConstruct(CaliforniaStatePortalContext $ctx): void {}
    public function PostConstructEntity(CaliforniaStatePortalContext $ctx): void {}
    public function SetData(CaliforniaStatePortalContext $ctx): void {}
    public function GetData(CaliforniaStatePortalContext $ctx): void {}
    public function GetMatch(CaliforniaStatePortalContext $ctx): void {}
    public function SetMatch(CaliforniaStatePortalContext $ctx): void {}
    public function PrePoint(CaliforniaStatePortalContext $ctx): void {}
    public function PreSpec(CaliforniaStatePortalContext $ctx): void {}
    public function PreRequest(CaliforniaStatePortalContext $ctx): void {}
    public function PreResponse(CaliforniaStatePortalContext $ctx): void {}
    public function PreResult(CaliforniaStatePortalContext $ctx): void {}
    public function PreDone(CaliforniaStatePortalContext $ctx): void {}
    public function PreUnexpected(CaliforniaStatePortalContext $ctx): void {}
}
