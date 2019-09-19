module Page exposing (Page(..), view, viewErrors)

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
  , body = [viewHeader] page :: content :: [ viewFooter ]
  }

viewHeader : Page -> List (Html msg)
viewHeader page =
  let
    linkTo =
      navbarLink page
  in
    case
