-- CaliforniaStatePortal SDK error

local CaliforniaStatePortalError = {}
CaliforniaStatePortalError.__index = CaliforniaStatePortalError


function CaliforniaStatePortalError.new(code, msg, ctx)
  local self = setmetatable({}, CaliforniaStatePortalError)
  self.is_sdk_error = true
  self.sdk = "CaliforniaStatePortal"
  self.code = code or ""
  self.msg = msg or ""
  self.ctx = ctx
  self.result = nil
  self.spec = nil
  return self
end


function CaliforniaStatePortalError:error()
  return self.msg
end


function CaliforniaStatePortalError:__tostring()
  return self.msg
end


return CaliforniaStatePortalError
