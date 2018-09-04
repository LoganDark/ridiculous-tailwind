# Ridiculous Tailwind

Ridiculous Tailwind is the [Tailwind](http://tailwindcss.com/) CSS framework with some extremely generous options enabled for those who are just developing locally and don't want to deal with building things super specifically.

<span style="font-size: 2em">Be warned that this build of Tailwind, even minified, is about 8.5 MB in size.</span>

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
- Screen sizes are normal, but `xs` is added (480px or more)
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
- Shadows are normal + `-outline` suffix is included for every default name
- z-index is 'auto' + any integer from 0 to 100 inclusive
- Opacity is any integer divisible by 5 from 0 to 100 inclusive
- SVG fill and stroke are currentColor + `colors`
- All modules have the `responsive`, `hover`, `active`, `focus`, and `group-hover` states enabled
- Container plugin is enabled with no options
- Prefix is blank, important is false, separator is `:`

## Building

### POSIX(-like)

Run `npm run build_all`, or in order, `build`, `minify`, and then `desperate` (they're `npm` scripts).

`desperate.sh` (the `desperate` script) uses the macOS version of `sed`. You may have to remove the strings after the `-i` option if `sed` complains.

### Windows

Sorry man.

## Being Desperate

Want smaller sizes? Well, if you're desperate, you can use `tailwind.des.css`.

That's the desperate version, which basically has these conversions:

- States:
    - `hover` -> `hvr`
    - `focus` -> `fcs`
    - `active` -> `actv`
    - `group` -> `grp`
    - `group-hover` -> `grphvr`
- Colors:
    - `darkest` -> `d3`
    - `darker` -> `d2`
    - `dark` -> `d1`
    - `lightest` -> `l3`
    - `lighter` -> `l2`
    - `light` -> `l1`
- Class names:
    - `float` -> `flt`
    - `overflow` -> `oflw`
    - `text` -> `txt`
    - `font` -> `fnt`
    - `tracking` -> `tkng`
    - `leading` -> `ldng`
    - `align` -> `algn`
    - `whitespace` -> `wsp`
    - `border` -> `bdr`
    - `rounded` -> `rd`
    - `flex` -> `flx`
    - `items` -> `itms`
    - `content` -> `cont`
    - `self` -> `slf`
    - `justify` -> `jst`
    - `min/max-w/h` -> `mn/mx-w/h`
    - `table` -> `tbl`
    - `cursor` -> `csr`
    - `pointer-events` -> `ptr`
    - `resize` -> `rsz`
    - `select` -> `slct`
    - `shadow` -> `shdw`
    - `opacity` -> `opc`
    - `fill` -> `fl`
    - `stroke` -> `strk`

It's about 7.9 MB in size. That's only approximately a ~600KB reduction.

Please, still don't use this in production.
