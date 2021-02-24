import wagtail.admin.rich_text.editors.draftail.features as draftail_features

from wagtail.admin.rich_text.converters.html_to_contentstate import (
    InlineStyleElementHandler,
)

from wagtail.core import hooks


@hooks.register('register_rich_text_features')
def register_code_styling(features):
    """Add features for rich text WYSIWYG editor. """

    feature_name = 'code'
    type_ = 'CODE'
    tag = 'code'

    control = {
        "type": type_,
        "label": "</>",
        "description": "Code",
    }

    features.register_editor_plugin(
        "draftail", feature_name, draftail_features.InlineStyleFeature(control)
    )

    db_conversion = {
        "from_database_format": {
            tag: InlineStyleElementHandler(type_)
        },

        "to_database_format": {
            "style_map": {
                type_: {
                    "element": tag,
                }
            }
        },
    }

    features.register_converter_rule("contentstate", feature_name, db_conversion)

    # This will register this feature with all rich-text editors by default
    features.default_features.append(feature_name)


@hooks.register('register_rich_text_features')
def register_centertext_feature(features):
    """Create center text in rich-text editor."""
    feature_name = 'center'
    type_ = 'CENTERTEXT'
    tag = 'div'

    control = {
        "type": type_,
        "label": "Center",
        "description": "Center Text",
        "style": {
            "display": "block",
            "text-align": "center",
        },
    }

    features.register_editor_plugin(
        "draftail", feature_name, draftail_features.InlineStyleFeature(control)
    )

    db_conversion = {
        "from_database_format": {
            tag: InlineStyleElementHandler(type_)
        },

        "to_database_format": {
            "style_map": {
                type_: {
                    "element": tag,
                    "props": {
                        "class": "d-block text-center"
                    }
                }
            }
        },
    }

    features.register_converter_rule("contentstate", feature_name, db_conversion)

    # This will register this feature with all rich-text editors by default
    features.default_features.append(feature_name)


@hooks.register('register_rich_text_features')
def register_justifytext_feature(features):
    """Create justify text in rich-text editor."""
    feature_name = 'justify'
    type_ = 'JUSTIFYTEXT'
    tag = 'div'

    control = {
        "type": type_,
        "label": "Justify",
        "description": "Justify Text",
        "style": {
            "display": "block",
            "text-align": "justify",
        },
    }

    features.register_editor_plugin(
        "draftail", feature_name, draftail_features.InlineStyleFeature(control)
    )

    db_conversion = {
        "from_database_format": {
            tag: InlineStyleElementHandler(type_)
        },

        "to_database_format": {
            "style_map": {
                type_: {
                    "element": tag,
                    "props": {
                        "class": "d-block text-justify"
                    }
                }
            }
        },
    }

    features.register_converter_rule("contentstate", feature_name, db_conversion)

    # This will register this feature with all rich-text editors by default
    features.default_features.append(feature_name)


@hooks.register('register_rich_text_features')
def register_righttext_feature(features):
    """Create right text in rich-text editor."""
    feature_name = 'right'
    type_ = 'RIGHTTEXT'
    tag = 'div'

    control = {
        "type": type_,
        "label": "Right",
        "description": "Right Text",
        "style": {
            "display": "block",
            "text-align": "right",
        },
    }

    features.register_editor_plugin(
        "draftail", feature_name, draftail_features.InlineStyleFeature(control)
    )

    db_conversion = {
        "from_database_format": {
            tag: InlineStyleElementHandler(type_)
        },

        "to_database_format": {
            "style_map": {
                type_: {
                    "element": tag,
                    "props": {
                        "class": "d-block text-right"
                    }
                }
            }
        },
    }

    features.register_converter_rule("contentstate", feature_name, db_conversion)

    # This will register this feature with all rich-text editors by default
    features.default_features.append(feature_name)
