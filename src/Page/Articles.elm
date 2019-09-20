module Page.Articles exposing (view)

import Html exposing (Html, a, article, div, h1, h2, img, main_, p, section, small, span, text)
import Html.Attributes exposing (alt, class, href, id, src, tabindex, target)


view : { title : String, content : Html msg }
view =
    { title = "Articles"
    , content =
        main_ [ class "articles" ]
            [ h1 [ class "articles__head center" ] [ text "Articles" ]
            , div [ class "articles__list" ]
                [ article [ class "article card" ]
                    [ h2 [ class "article__title" ] [ text "Building your first gRPC Service" ]
                    , p [ class "article__date" ] [ text "September 20, 2019" ]
                    , section [ class "article__tags" ]
                        [ span [ class "article__tag" ] [ text "JavaScript" ]
                        , span [ class "article__tag" ] [ text "gRPC" ]
                        , span [ class "article__tag" ] [ text "api" ]
                        ]
                    , section [ class "article__body" ] [ text "gRPC can help minimize the barrier of cross system communication by providing language-agnostic API definitions, backwards and forwards compatible versioning with protocol buffers, and pluggable load balancing and tracing. You will see how to quickly get up and running with the gRPC framework using Node.js from creating a protocol definition, creating meaningful health checks, and securing the endpoint. Additionally, this session will go over best practices and how to take full advantage of what gRPC has to offer." ]
                    ]
                ]
            , div [ class "articles__tags card" ]
                [ span [ class "article__tag" ] [ text "JavaScript" ]
                , span [ class "article__tag" ] [ text "gRPC" ]
                , span [ class "article__tag" ] [ text "api" ]
                ]
            ]
    }
