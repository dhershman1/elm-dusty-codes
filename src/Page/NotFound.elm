module Page.NotFound exposing (view)

import Html exposing (Html, b, div, h1, img, main_, p, text)
import Html.Attributes exposing (alt, class, id, src, tabindex)
import Route
import Url exposing (Url)


view : Url -> { title : String, content : Html msg }
view url =
    { title = "404 Not Found"
    , content =
        main_ [ class "grid" ]
            [ h1 [] [ text "404 Not Found" ]
            , b [] [ text (Maybe.withDefault "empty" url.fragment) ]
            , div [ class "err__description" ]
                [ p [] [ text "Looks like that wasn't found friend!" ] ]
            ]
    }
