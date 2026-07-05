# frozen_string_literal: true

# Typed models for the CaliforniaStatePortal SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Member types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Ruby types are unenforced; these YARD
# annotations document the shapes. Do not edit by hand.

# Service entity data model.
#
# @!attribute [rw] category
#   @return [String, nil]
#
# @!attribute [rw] department
#   @return [String, nil]
#
# @!attribute [rw] description
#   @return [String, nil]
#
# @!attribute [rw] id
#   @return [String, nil]
#
# @!attribute [rw] name
#   @return [String, nil]
#
# @!attribute [rw] popular
#   @return [Boolean, nil]
#
# @!attribute [rw] url
#   @return [String, nil]
Service = Struct.new(
  :category,
  :department,
  :description,
  :id,
  :name,
  :popular,
  :url,
  keyword_init: true
)

# Request payload for Service#list.
#
# @!attribute [rw] category
#   @return [String, nil]
#
# @!attribute [rw] department
#   @return [String, nil]
#
# @!attribute [rw] description
#   @return [String, nil]
#
# @!attribute [rw] id
#   @return [String, nil]
#
# @!attribute [rw] name
#   @return [String, nil]
#
# @!attribute [rw] popular
#   @return [Boolean, nil]
#
# @!attribute [rw] url
#   @return [String, nil]
ServiceListMatch = Struct.new(
  :category,
  :department,
  :description,
  :id,
  :name,
  :popular,
  :url,
  keyword_init: true
)

