module Main exposing (main)

import Html exposing (..)
import Html.Events exposing (onClick)

main =
    Html.beginnerProgram
        { model = home
        , update = update
        , view = view
        }

-- Model

type alias Model =
    { title : String
    , content: String
    }

home =
    { title = "Elm Explorer Blog"
    , content = "Here's what I learned while exploring Elm..."
    }

-- Add What I made with Elm Record
whatIMadeWithElmPost =
    { title = "What I Made With Elm"
    , content ="Here's the blog post I made in Elm!"
    }

--Update

type Msg
    = ShowHomePage
    | ShowWhatIMadeWithElmPost


update msg model =
    case msg of
        ShowHomePage ->
            home
        ShowWhatIMadeWithElmPost ->
            whatIMadeWithElmPost

--View

view model =
    body [] 
        [ h1 [] [ text model.title]
        , text model.content
        , div []
            [ button [ onClick ShowHomePage ] [ text "Home" ]
            , button [ onClick ShowWhatIMadeWithElmPost ] [ text "What I Made With Elm" ]
            ]
        ]