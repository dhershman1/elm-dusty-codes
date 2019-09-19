module Page.Libraries exposing (view)

import Html exposing (Html, a, div, h1, h2, img, main_, p, section, small, text)
import Html.Attributes exposing (alt, class, href, id, src, tabindex, target)


view : { title : String, content : Html msg }
view =
    { title = "Libraries & Plugins"
    , content =
        main_ [ class "libs" ]
            [ h1 [ class "center" ] [ text "Libraries/Plugins" ]
            , div [ class "card" ]
                [ h2 [ class "lib__name" ]
                    [ a
                        [ class "lib__link"
                        , href "https://github.com/dhershman1/kyanite"
                        , target "_blank"
                        ]
                        [ text "Kyanite" ]
                    ]
                , p [ class "lib__description" ]
                    [ small []
                        [ text "A light weight functional JavaScript library that only depends on itself. " ]
                    ]
                ]
            ]
    }
