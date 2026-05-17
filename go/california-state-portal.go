package voxgigcaliforniastateportalsdk

import (
	"github.com/voxgig-sdk/california-state-portal-sdk/go/core"
	"github.com/voxgig-sdk/california-state-portal-sdk/go/entity"
	"github.com/voxgig-sdk/california-state-portal-sdk/go/feature"
	_ "github.com/voxgig-sdk/california-state-portal-sdk/go/utility"
)

// Type aliases preserve external API.
type CaliforniaStatePortalSDK = core.CaliforniaStatePortalSDK
type Context = core.Context
type Utility = core.Utility
type Feature = core.Feature
type Entity = core.Entity
type CaliforniaStatePortalEntity = core.CaliforniaStatePortalEntity
type FetcherFunc = core.FetcherFunc
type Spec = core.Spec
type Result = core.Result
type Response = core.Response
type Operation = core.Operation
type Control = core.Control
type CaliforniaStatePortalError = core.CaliforniaStatePortalError

// BaseFeature from feature package.
type BaseFeature = feature.BaseFeature

func init() {
	core.NewBaseFeatureFunc = func() core.Feature {
		return feature.NewBaseFeature()
	}
	core.NewTestFeatureFunc = func() core.Feature {
		return feature.NewTestFeature()
	}
	core.NewServiceEntityFunc = func(client *core.CaliforniaStatePortalSDK, entopts map[string]any) core.CaliforniaStatePortalEntity {
		return entity.NewServiceEntity(client, entopts)
	}
}

// Constructor re-exports.
var NewCaliforniaStatePortalSDK = core.NewCaliforniaStatePortalSDK
var TestSDK = core.TestSDK
var NewContext = core.NewContext
var NewSpec = core.NewSpec
var NewResult = core.NewResult
var NewResponse = core.NewResponse
var NewOperation = core.NewOperation
var MakeConfig = core.MakeConfig
var NewBaseFeature = feature.NewBaseFeature
var NewTestFeature = feature.NewTestFeature
