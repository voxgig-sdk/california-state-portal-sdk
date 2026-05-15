# CaliforniaStatePortal SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/test_feature'


module CaliforniaStatePortalFeatures
  def self.make_feature(name)
    case name
    when "base"
      CaliforniaStatePortalBaseFeature.new
    when "test"
      CaliforniaStatePortalTestFeature.new
    else
      CaliforniaStatePortalBaseFeature.new
    end
  end
end
