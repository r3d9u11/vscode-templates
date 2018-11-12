#!/bin/bash

TARGET_DIR=vscode-templates-blueprint
TEMPLATE_NAME=__pascalCase_name__

git clone --recurse-submodules git://github.com/r3d9u11/vscode-templates.git $TARGET_DIR

shopt -s extglob

function convert_to_blueprint {
    mkdir -p $1/$TEMPLATE_NAME
    mv $1/!($TEMPLATE_NAME) $1/$TEMPLATE_NAME/
}

for LANG_DIR in $TARGET_DIR/*; do
    for TEMPLATE_DIR in $LANG_DIR/*; do
        convert_to_blueprint $TEMPLATE_DIR
    done
done

echo ""
echo ""
echo "DONE."
echo "Please, add the following lines into section \"blueprint.templatesPath\" of your settings and restart VSCode:"
echo ""
echo "\"$PWD/$TARGET_DIR/c\","
echo "\"$PWD/$TARGET_DIR/cpp\","
echo "\"$PWD/$TARGET_DIR/csharp\","
echo "\"$PWD/$TARGET_DIR/haxe\","
echo "\"$PWD/$TARGET_DIR/javascript\","
echo "\"$PWD/$TARGET_DIR/nim\""
echo ""
echo ""