module Page.Home exposing (view)

import Html exposing (Html, div, h1, img, main_, p, text)
import Html.Attributes exposing (alt, class, id, src, tabindex)


view : { title : String, content : Html msg }
view =
    { title = "Dusty Codes"
    , content =
        main_ [ class "grid" ]
            [ h1 [] [ text "About" ]
            , div [ class "about__description" ]
                [ p [] [ text "Put some text here about me" ] ]
            , div [ class "about__skills" ] [ p [] [ text "Skills should go here" ] ]
            ]
    }
