#!/bin/bash

echo -e "Initializing package.json"
npm init -y

echo "Installing dependencies..."
npm i eslint -D --quiet
npm i eslint-config-airbnb -D --quiet
npm i eslint-config-prettier -D --quiet
npm i eslint-plugin-import -D --quiet
npm i eslint-plugin-jsx-a11y -D --quiet
npm i eslint-plugin-prettier -D --quiet
npm i eslint-plugin-react -D --quiet
npm i prettier -D --quiet

echo -e "Create .eslintrc config file..."

echo "{
    \"extends\": [\"airbnb\", \"prettier\"],
    \"plugins\": [\"prettier\"],
    \"rules\": {
        \"prettier/prettier\": [\"error\"]
    },
    \"parserOptions\": {
        \"ecmaVersion\": 6,
        \"sourceType\": \"module\",
        \"ecmaFeatures\": {
            \"jsx\": true
        }
    },
    \"env\": {
        \"es6\": true,
        \"browser\": true,
        \"node\": true
        }
    }" > .eslintrc

echo -e "appending scripts to package.json..."

sed "/&& exit 1\"/a\ ,
    \"format\": \"prettier --write '**/*.{js,jsx,json}'\",
    \"lint\": \"eslint '**/*.{js,jsx,json}' --quiet\"" package.json

# echo -e "prettifying code..."
# prettier --write "**/*.{js,jsx,json}"
# echo -e "linting code..."
# eslint "**/*.{js,jsx,json}" --quiet

echo "Installation Complete!"