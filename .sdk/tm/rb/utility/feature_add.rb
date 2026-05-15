# CaliforniaStatePortal SDK utility: feature_add
module CaliforniaStatePortalUtilities
  FeatureAdd = ->(ctx, f) {
    ctx.client.features << f
  }
end
