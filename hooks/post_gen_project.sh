#!/bin/bash

if [ "{{cookiecutter.server}}" != "true" ]; then
    rm -rf server
fi

if [ "{{cookiecutter.webapp}}" != "true" ]; then
    rm -rf webapp
fi

if [ "{{cookiecutter.frontend_language}}" == "javascript" ]; then
    rm -f webapp/src/index.ts
else
    rm -f webapp/src/index.js
fi
