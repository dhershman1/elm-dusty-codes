module Loading exposing (error, icon, slowThreshold)

import Asset
import Html exposing (Attribute, Html)
import Html.Attributes exposing (alt, height, src, width)
import Process
import Task exposing (Task)


icon : Html msg
icon =
    Html.img
        [ Asset.src Asset.loading
        , width 64
        , height 64
        , alt "Loading..."
        ]
        []


error : String -> Html msg
error str =
    Html.text ("Error Loading " ++ str ++ ".")


slowThreshold : Task x ()
slowThreshold =
    Process.sleep 500