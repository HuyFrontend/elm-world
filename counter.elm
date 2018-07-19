module Main exposing (..)

import Html exposing (beginnerProgram, button, div, text)
import Html.Events exposing (onClick)


main =
    beginnerProgram
        { model = 10
        , view = view
        , update = update
        }


hello : String
hello =
    "Hi there."


view model =
    div []
        [ button [ onClick Decrement ] [ text "-" ]
        , div [] [ text (toString model) ]
        , button [ onClick Increment ] [ text "+" ]
        ]


type Msg
    = Increment
    | Decrement


update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1
