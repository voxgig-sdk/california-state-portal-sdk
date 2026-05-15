package core

var UtilityRegistrar func(u *Utility)

var NewBaseFeatureFunc func() Feature

var NewTestFeatureFunc func() Feature

var NewServiceEntityFunc func(client *CaliforniaStatePortalSDK, entopts map[string]any) CaliforniaStatePortalEntity

