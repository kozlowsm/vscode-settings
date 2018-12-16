#!/bin/bash

echo -e "Initializing package.json"
npm init -y

echo "Installing dependencies..."
npm i eslint -D 
npm i eslint-config-airbnb -D 
npm i eslint-config-prettier -D 
npm i eslint-plugin-import -D 
npm i eslint-plugin-jsx-a11y -D 
npm i eslint-plugin-prettier -D 
npm i eslint-plugin-react -D 
npm i prettier -D 

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

echo "Ensure ESLint and Prettier extensions are installed on VSCode."

echo "Installation Complete!"