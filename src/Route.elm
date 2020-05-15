module Route exposing (Route(..), fromUrl, href, replaceUrl)

import Browser.Navigation as Nav
import Html exposing (Attribute)
import Html.Attributes as Attr
import Url exposing (Url)
import Url.Parser as Parser exposing (Parser, oneOf, s)


type Route
    = Home
    | Articles
    | Libraries


parser : Parser (Route -> a) a
parser =
    oneOf
        [ Parser.map Home Parser.top
        , Parser.map Libraries (s "libraries")
        , Parser.map Articles (s "articles")
        ]


href : Route -> Attribute msg
href targetRoute =
    Attr.href (routeToString targetRoute)


replaceUrl : Nav.Key -> Route -> Cmd msg
replaceUrl key route =
    Nav.replaceUrl key (routeToString route)


fromUrl : Url -> Maybe Route
fromUrl url =
    { url | path = Maybe.withDefault "" url.fragment, fragment = Nothing }
        |> Parser.parse parser


routeToString : Route -> String
routeToString page =
    let
        pieces =
            case page of
                Home ->
                    [ "home" ]

                Articles ->
                    [ "articles" ]

                Libraries ->
                    [ "libraries" ]
    in
    "/" ++ String.join "/" pieces
