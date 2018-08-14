#!/usr/bin/env bash

../node_modules/.bin/cleancss preflight.css  -O2 -o preflight.min.css
../node_modules/.bin/cleancss components.css -O2 -o components.min.css
../node_modules/.bin/cleancss utilities.css  -O2 -o utilities.min.css
../node_modules/.bin/cleancss tailwind.css   -O2 -o tailwind.min.css
