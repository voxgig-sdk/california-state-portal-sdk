# CaliforniaStatePortal SDK feature factory

from feature.base_feature import CaliforniaStatePortalBaseFeature
from feature.test_feature import CaliforniaStatePortalTestFeature


def _make_feature(name):
    features = {
        "base": lambda: CaliforniaStatePortalBaseFeature(),
        "test": lambda: CaliforniaStatePortalTestFeature(),
    }
    factory = features.get(name)
    if factory is not None:
        return factory()
    return features["base"]()
