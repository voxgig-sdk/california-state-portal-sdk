# CaliforniaStatePortal SDK exists test

require "minitest/autorun"
require_relative "../CaliforniaStatePortal_sdk"

class ExistsTest < Minitest::Test
  def test_create_test_sdk
    testsdk = CaliforniaStatePortalSDK.test(nil, nil)
    assert !testsdk.nil?
  end
end
