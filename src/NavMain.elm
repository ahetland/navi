module NavMain exposing (main)

import List exposing (map)

import Browser

import Html exposing (Html, div, h1, text, button, a, img, br)
import Html.Attributes exposing (class, classList, style, rel, 
                                type_, href, src, width, height)
import Html.Events exposing (onClick)
import Browser.Events
import Json.Decode as Decode
import Icons exposing (viewHome, viewHamburger)


-- MAIN
main =
    Browser.element
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }

-- MODEL
type alias Model =
    { pagePapa : Page
    , pageMama : Page
    , wasTogled : Bool
    }

initialModel : Model
initialModel =
    { pagePapa = pagePapa
    , pageMama = pageMama
    , wasTogled = False }

init : () -> ( Model, Cmd Msg )
init _ =
    ( initialModel, Cmd.none )


-- REFACTOR EFORT ...

type alias Page =
    { name : String
    , linksList : List { href_ : String, text_ : String }
    , open : Bool
    }

setPageOpen : Page -> Page
setPageOpen page =
    let 
        toggled = 
            if page.open == True then False else True
    in
        { page | open = toggled }

setPageOpenFalse : Page -> Page
setPageOpenFalse page = 
    { page | open = False }

pagePapa : Page
pagePapa = Page "Papa" 
                [ { href_ = "/beer", text_ = "Beer"}
                , { href_ = "/pizza", text_ = "Pizza"}
                ]
                False


pageMama : Page
pageMama = Page "Mama" 
                [ { href_ = "/flowers", text_ = "Flowers"}
                , { href_ = "/ice_cream", text_ = "Ice Cream .."}
                ]
                False

--  END REFACTOR EFORT ...

-- UPDATE

type Msg
    = TogleBank
    | TogleAlex
    | DidClick

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of

        DidClick ->
            case model.wasTogled of
                False ->
                    ( { model | 
                        pagePapa = setPageOpenFalse model.pagePapa 
                      , pageMama = setPageOpenFalse model.pageMama
                      , wasTogled = True }
                    , Cmd.none )
                True ->
                    ( {model | wasTogled = False }, Cmd.none )

        TogleBank ->
            let 
       --         _ = Debug.log "TogleBank" model
                pb = setPageOpen model.pagePapa
                pa = setPageOpenFalse model.pageMama 
            in
                ( { model | 
                    pagePapa = pb
                  , pageMama = pa
                  , wasTogled = True }
                , Cmd.none )

        TogleAlex ->
            let 
     --           _ = Debug.log "TogleAlex" model

                pb = setPageOpenFalse model.pagePapa
                pa = setPageOpen model.pageMama 
            in
                ( { model | 
                    pagePapa = pb
                  , pageMama = pa
                  , wasTogled = True }
                , Cmd.none )



-- SUBSCRIPTIONS
subscriptions : Model -> Sub Msg
subscriptions model =
--  This is needed to register click outside element in the page
--  and then hide any open menus
    Browser.Events.onClick (Decode.succeed DidClick)


-- VIEW

view : Model -> Html Msg
view model =
    div []
        [ div [] viewStyles 
        ,
        div [ class "bg-gray-600" ]
            [
            div [ class "flex container mx-auto"
                , class "bg-gray-600"
                , class "mb-1"
                , class "items-center justify-between"
                , class "py-2"
                ]
                [
                div [ class "hover:text-white cursor-pointer" ]
                    [  a [ href "/#"
                         , class "text-gray-900 hover:text-white" ]
                         [ viewHome ]
                    ]
                ,
                div [ ]
                    [
                    button (viewButtonClassList TogleBank)
                           [ text pagePapa.name ]
                           ,   -- the menu
                           div [ class "flex relative" ]
                               [ viewMenu model.pagePapa ]
                    ]
                ,
                div [ ]
                    [
                    button (viewButtonClassList TogleAlex)
                           [ text pageMama.name ]
                           ,   -- the menu
                           div [ class "flex relative" ]
                               [ viewMenu model.pageMama ]
                    ]
                ]
            ]
        ]
        

viewButtonClassList : Msg -> List (Html.Attribute Msg)
viewButtonClassList msg =
    [ type_ "button"
           , onClick msg
           , class "text-gray-900 font-medium"
           , class "border-gray-600"
           , class "mt-1"
           , class "block"
           , class "hover:text-white"
           , class "focus:outline-none" ]


createLink_11 itm =
    a [ href itm.href_, class clsString ] [ text itm.text_ ]

buildLink_10 lst =
    map createLink_11 lst


viewMenu : Page -> Html Msg
viewMenu page =
    div [ class hlpMenuClassString
          , class "left-0"
          , classList
          [ ("block", page.open)
          , ("hidden", if page.open then False else True) 
          ]
        ]
        (buildLink_10 page.linksList)


-- ###

clsString : String
clsString = "block hover:bg-gray-400"

hlpMenuClassString : String
hlpMenuClassString = "z-10 absolute w-64 mt-6 mr-4-xxx bg-gray-600 rounded-lg shadow-lg"

tailWind : String 
tailWind = "https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/1.8.4/tailwind.min.css"

viewStyles : List (Html Msg)
viewStyles =
        [ Html.node "link"
              [ rel "stylesheet"
                , href tailWind ]
              [ ]
        ]

