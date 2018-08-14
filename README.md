# Ridiculous Tailwind

Ridiculous Tailwind is the [Tailwind](http://tailwindcss.com/) CSS framework with some extremely generous options enabled for those who are just developing locally and don't want to deal with building things super specifically.

<span style="font-size: 2em">Be warned that this build of Tailwind, even minified, is about 9.2 MB in size.</span>

Before I list all the changes I've made, let me define some things:

- `pixels` - from `0` to `32`, for example `m-0px`: `0px` or `m-32px`: `32px`, any integer in between
- `rems` - from `0` to `64`, divided by four like Tailwind usually does, for example `m-0`: `0rem` or `m-64`: `16rem`
- `percents`:
    - `1/2`: `50%`
    - `1/3`: `33.33333%`
    - `2/3`: `66.66667%`
    - `1/4`: `25%`
    - `3/4`: `75%`
    - `1/5`: `20%`
    - `2/5`: `40%`
    - `3/5`: `60%`
    - `4/5`: `80%`
    - `1/6`: `16.66667%`
    - `5/6`: `83.33333%`
    - `full`: `100%`
- `units`, contains all three of those + `auto` and `px`: `auto` and `1px`
- `colors`, containing all default Tailwind colors

Now, let's get to the features:

- Colors are normal
- Screen sizes are normal
- Fonts are normal
- Text sizes are normal + `units`
- Font weights are normal
- Leading is normal + `units`
- Tracking is normal + any integer from -1000 to 1000 * 0.001em, for example tracking: 6 is 0.006em
- Text colors are normal
- Background colors are normal
- Background sizes are normal
- Border widths are normal + `pixels`
- Border colors are normal
- Border radius is normal + `units`
- width, height, min-width, min-height are basically 'screen' + `units`
- max-width and max-height are normal + `units`
- Padding, margin, negative margin are `units`
- Shadows are normal
- z-index is 'auto' + any integer from 0 to 100 inclusive
- Opacity is any integer divisible by 5 from 0 to 100 inclusive
- SVG fill and stroke are currentColor + `colors`
- All modules have the `responsive`, `hover`, `active`, `focus`, and `group-hover` states enabled
- Container plugin is enabled with no options
- Prefix is blank, important is false, separator is `:`

## Building

### POSIX(-like)

`cd` to `dist`, and run `./build.sh && ./minify.sh` in `bash`, or your shell's equivalent.

### Windows

Sorry man.