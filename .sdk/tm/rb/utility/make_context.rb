# CaliforniaStatePortal SDK utility: make_context
require_relative '../core/context'
module CaliforniaStatePortalUtilities
  MakeContext = ->(ctxmap, basectx) {
    CaliforniaStatePortalContext.new(ctxmap, basectx)
  }
end
