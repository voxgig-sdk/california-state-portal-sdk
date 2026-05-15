package = "voxgig-sdk-california-state-portal"
version = "0.0-1"
source = {
  url = "git://github.com/voxgig-sdk/california-state-portal-sdk.git"
}
description = {
  summary = "CaliforniaStatePortal SDK for Lua",
  license = "MIT"
}
dependencies = {
  "lua >= 5.3",
  "dkjson >= 2.5",
  "dkjson >= 2.5",
}
build = {
  type = "builtin",
  modules = {
    ["california-state-portal_sdk"] = "california-state-portal_sdk.lua",
    ["config"] = "config.lua",
    ["features"] = "features.lua",
  }
}
