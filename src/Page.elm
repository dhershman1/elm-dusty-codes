module Page exposing (Page(..), view)

import Browser exposing (Document)
import Html exposing (Html, a, button, div, footer, i, img, li, nav, p, span, text, ul)
import Html.Attributes exposing (class, classList, href, style)
import Html.Events exposing (onClick)
import Route exposing (Route)


type Page
    = Other
    | Home
    | Libraries
    | Articles


view : Page -> { title : String, content : Html msg } -> Document msg
view page { title, content } =
    { title = title ++ " - Dusty Codes"
    , body = [ div [ class "grid" ] (viewHeader page :: content :: [ viewFooter ]) ]
    }


viewHeader : Page -> Html msg
viewHeader page =
    nav [ class "navbar" ]
        [ div [ class "navbar__container" ]
            [ a [ class "navbar__brand", Route.href Route.Home ]
                [ text "Dusty Codes" ]
            , ul [ class "navbar__nav" ] <|
                navbarLink page Route.Home [ text "Home" ]
                    :: viewMenu page
            ]
        ]


viewMenu : Page -> List (Html msg)
viewMenu page =
    let
        linkTo =
            navbarLink page
    in
    [ linkTo Route.Libraries [ text "Libraries/Plugins" ]
    , linkTo Route.Articles [ text "Articles" ]
    ]


viewFooter : Html msg
viewFooter =
    footer []
        [ div [ class "footer" ]
            [ text "Copyright 2019 Dustin Hershman" ]
        ]


navbarLink : Page -> Route -> List (Html msg) -> Html msg
navbarLink page route linkContent =
    li [ classList [ ( "navbar__item", True ), ( "navbar__item--active", isActive page route ) ] ]
        [ a [ class "navbar__link", Route.href route ] linkContent ]


isActive : Page -> Route -> Bool
isActive page route =
    case ( page, route ) of
        ( Home, Route.Home ) ->
            True

        ( Libraries, Route.Libraries ) ->
            True

        ( Articles, Route.Articles ) ->
            True

        _ ->
            False
