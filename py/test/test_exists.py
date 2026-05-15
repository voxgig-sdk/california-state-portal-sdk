# ProjectName SDK exists test

import pytest
from californiastateportal_sdk import CaliforniaStatePortalSDK


class TestExists:

    def test_should_create_test_sdk(self):
        testsdk = CaliforniaStatePortalSDK.test(None, None)
        assert testsdk is not None
