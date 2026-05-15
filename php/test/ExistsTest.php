<?php
declare(strict_types=1);

// CaliforniaStatePortal SDK exists test

require_once __DIR__ . '/../californiastateportal_sdk.php';

use PHPUnit\Framework\TestCase;

class ExistsTest extends TestCase
{
    public function test_create_test_sdk(): void
    {
        $testsdk = CaliforniaStatePortalSDK::test(null, null);
        $this->assertNotNull($testsdk);
    }
}
