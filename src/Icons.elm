module Icons exposing (..)


import Svg as Svg
import Svg.Attributes as SvgAttr

arrowOutlineLeft =
    Svg.svg
        [ SvgAttr.version "1.1"
        , SvgAttr.class "h-10 w-10 fill-current"
        , SvgAttr.viewBox "0 0 20 20"
        ]
        [ Svg.path
            [ SvgAttr.d "M0 10a10 10 0 1 1 20 0 10 10 0 0 1-20 0zm2 0a8 8 0 1 0 16 0 8 8 0 0 0-16 0zm8-2h5v4h-5v3l-5-5 5-5v3z"
            ]
            []
        ]



viewHome =
    Svg.svg
        [ SvgAttr.version "1.1"
        , SvgAttr.class "h-10 w-10 fill-current"
        , SvgAttr.viewBox "0 0 20 20"
        ]
        [ Svg.path
            [ SvgAttr.d "M8 20H3V10H0L10 0l10 10h-3v10h-5v-6H8v6z"
            ]
            []
        ]


viewUser =
    Svg.svg
        [ SvgAttr.version "1.1"
        , SvgAttr.class "h-10 w-10 fill-current"
        , SvgAttr.viewBox "0 0 20 20"
        ]
        [ Svg.path
            [ SvgAttr.d "M5 5a5 5 0 0 1 10 0v2A5 5 0 0 1 5 7V5zM0 16.68A19.9 19.9 0 0 1 10 14c3.64 0 7.06.97 10 2.68V20H0v-3.32z"
            ]
            []
        ]




viewHamburger =
    Svg.svg
        [ SvgAttr.class "h-6 w-6 fill-current"
        --, SvgAttr.width "40"
        --, SvgAttr.height "40"
        , SvgAttr.viewBox "0 0 100 80"
        ]
        [ Svg.rect
            [ SvgAttr.width "100"
            , SvgAttr.height "20"
            , SvgAttr.rx "7"
            ]
            []
        , Svg.rect
            [ SvgAttr.width "100"
            , SvgAttr.height "20"
            , SvgAttr.y "30"
            , SvgAttr.rx "7"
            ]
            []
        , Svg.rect
            [ SvgAttr.width "100"
            , SvgAttr.height "20"
            , SvgAttr.y "60"
            , SvgAttr.rx "7"
            ]
            []
        ]

