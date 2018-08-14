#!/usr/bin/env bash

cp ../tailwind.js tailwind.js

echo '@tailwind preflight'  > preflight.src.css
echo '@tailwind components' > components.src.css
echo '@tailwind utilities'  > utilities.src.css

../node_modules/.bin/tailwind build preflight.src.css  -c tailwind.js -o preflight.css
../node_modules/.bin/tailwind build components.src.css -c tailwind.js -o components.css
../node_modules/.bin/tailwind build utilities.src.css  -c tailwind.js -o utilities.css

cat preflight.css components.css utilities.css > tailwind.css
