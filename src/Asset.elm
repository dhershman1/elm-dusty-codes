module Asset exposing (Image, error, loading, src)

import Html exposing (Attribute, Html)
import Html.Attributes as Attr


type Image
    = Image String


error : Image
error =
    image "error.jpg"


loading : Image
loading =
    image "ring-loader.svg"


image : String -> Image
image filename =
    Image ("/assets/images/" ++ filename)


src : Image -> Attribute msg
src (Image url) =
    Attr.src url
