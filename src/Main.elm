module Main exposing (main)

import Html exposing (..)

main =
    viewBlogPost


viewBlogPost =
    body []
        [ div []    
            [ h1 [] [ text "Elm explorer blog"]
            , text "Here's what I learned while exploring Elm..."
            ]
        ]