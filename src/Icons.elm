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
        , SvgAttr.viewBox "0 0 127.58 45.06"
        ]
        [ Svg.path
            [ SvgAttr.d "M8 20H3V10H0L10 0l10 10h-3v10h-5v-6H8v6z"
            ]
            []
        ]

viewLogo =
    Svg.svg
        [ SvgAttr.version "1.1"
        , SvgAttr.class "h-15 w-40 fill-current"
        , SvgAttr.viewBox "0 0 180 40"
        ]
        [ Svg.path
            [ SvgAttr.fill "#666", SvgAttr.d "M0,9.88A21.63,21.63,0,0,1,8.33,8.39a17.78,17.78,0,0,1,5,.62l-.77,4.32a14.24,14.24,0,0,0-4.06-.57,10.67,10.67,0,0,0-3.91.57V33.89H0Z"
            ] []
        , Svg.path
            [ SvgAttr.fill "#666", SvgAttr.d "M37,23.15H20.55v.21c0,4.42,2.72,6.63,7.61,6.63a18.81,18.81,0,0,0,7.76-1.65l.67,4.38a21.53,21.53,0,0,1-8.49,1.64c-8.17,0-12.29-4-12.29-12.9,0-7.26,2.73-13.12,11-13.12,6.79,0,10.59,3.76,10.59,11.11a14,14,0,0,1-.46,3.7M20.54,19.29H33V19c0-4.52-2.37-6.58-6.28-6.58s-6.17,2-6.17,6.58Z"
            ] []         
        , Svg.path
            [ SvgAttr.fill "#666", SvgAttr.d "M42.7,0h4.63V25.87c0,3.19.87,4,2.46,4a4.81,4.81,0,0,0,2-.37l.67,4.22a8.25,8.25,0,0,1-3.14.51c-3.75,0-6.63-2-6.63-7.5Z"
            ] []
        , Svg.path
            [ SvgAttr.fill "#666", SvgAttr.d "M75.3,32.87a32.31,32.31,0,0,1-9.77,1.49c-6.42,0-10.18-2.21-10.18-7.82s4.07-7.76,10.54-7.76h4.84V16.57c0-3-2.21-4-5.86-4a20.58,20.58,0,0,0-7,1.19l-.66-4.27A29.4,29.4,0,0,1,65,8.34c5.91,0,10.28,2.21,10.28,8.69V32.87ZM70.73,22.38H65.94c-4,0-6,1.08-6,4.06,0,3.24,2.16,4,5.4,4a19.82,19.82,0,0,0,5.35-.62v-7.4Z"
            ] []
        , Svg.path
            [ SvgAttr.fill "#666", SvgAttr.d "M91.15,28,98.4,8.85h4.83l-9.56,25c-2.21,5.86-5.55,11.36-12.49,11.15l-1-4.31c3.39.2,7.1-2.37,8.79-6.84L78,8.86h4.89Z"
            ] []
        , Svg.path
            [ SvgAttr.fill "#666", SvgAttr.d "M107.07,9.88a21.63,21.63,0,0,1,8.33-1.49,17.78,17.78,0,0,1,5,.62l-.77,4.32a14.32,14.32,0,0,0-4.07-.57,10.65,10.65,0,0,0-3.9.57V33.89h-4.63Z"
            ] []    
        , Svg.path
            [ SvgAttr.fill "#ff284d", SvgAttr.d "M124,27.22a3.57,3.57,0,1,1-3.57,3.57A3.57,3.57,0,0,1,124,27.22"
            ] []                                
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

