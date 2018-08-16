#!/usr/bin/env bash

cp tailwind.min.css tailwind.des.css

# shortening states
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)hover\\\\:/\\1hvr\\\\:/g'          tailwind.des.css # hover       -> hvr
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)focus\\\\:/\\1fcs\\\\:/g'          tailwind.des.css # focus       -> fcs
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)active\\\\:/\\1actv\\\\:/g'        tailwind.des.css # active      -> actv
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)group/\\1grp/g'                    tailwind.des.css # group       -> grp
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)group-hover\\\\:/\\1grphvr\\\\:/g' tailwind.des.css # group-hover -> grphvr

# shortening colors
sed -i '.bak' -e 's/-darkest/-d3/g'  tailwind.des.css
sed -i '.bak' -e 's/-darker/-d2/g'   tailwind.des.css
sed -i '.bak' -e 's/-dark/-d1/g'     tailwind.des.css
sed -i '.bak' -e 's/-lightest/-l3/g' tailwind.des.css
sed -i '.bak' -e 's/-lighter/-l2/g'  tailwind.des.css
sed -i '.bak' -e 's/-light/-l1/g'    tailwind.des.css

# Shortening long class names
# Since I don't expect everyone to understand regex, what the command does
# will be explained in a comment to the right side of the command.
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)float/\\1flt/g'                 tailwind.des.css # float          -> flt
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)overflow/\\1oflw/g'             tailwind.des.css # overflow       -> oflw
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)text/\\1txt/g'                  tailwind.des.css # text           -> txt
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)leading/\\1ldng/g'              tailwind.des.css # leading        -> ldng
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)align/\\1algn/g'                tailwind.des.css # align          -> algn
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)whitespace/\\1wsp/g'            tailwind.des.css # whitespace     -> wsp
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)border/\\1bdr/g'                tailwind.des.css # border         -> bdr
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)rounded/\\1rd/g'                tailwind.des.css # rounded        -> rd
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)flex/\\1flx/g'                  tailwind.des.css # flex           -> flx
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)items/\\1itms/g'                tailwind.des.css # items          -> itms
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)content/\\1cont/g'              tailwind.des.css # content        -> cont
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)self/\\1slf/g'                  tailwind.des.css # self           -> slf
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)justify/\\1jst/g'               tailwind.des.css # justify        -> jst
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)mi\(n\)-\([wh]\)/\\1m\\2-\\3/g' tailwind.des.css # min/max-w/h    -> mn/mx-w/h
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)table/\\1tbl/g'                 tailwind.des.css # table          -> tbl
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)cursor/\\1csr/g'                tailwind.des.css # cursor         -> csr
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)pointer-events/\\1ptr/g'        tailwind.des.css # pointer-events -> ptr
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)resize/\\1rsz/g'                tailwind.des.css # resize         -> rsz
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)select/\\1slct/g'               tailwind.des.css # select         -> slct
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)shadow/\\1shdw/g'               tailwind.des.css # shadow         -> shdw
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)opacity/\\1opc/g'               tailwind.des.css # opacity        -> opc
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)fill/\\1fl/g'                   tailwind.des.css # fill           -> fl
sed -i '.bak' -e 's/\\([} ,][:]\\|.\\)stroke/\\1strk/g'               tailwind.des.css # stroke         -> strk

rm tailwind.des.css.bak # created by `sed`
