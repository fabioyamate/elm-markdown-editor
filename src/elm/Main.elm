module Main exposing (Model, Msg(..), init, main, subscriptions, update, view)

import Browser exposing (Document)
import Browser.Events
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick, onInput)
import Json.Decode as Decode exposing (Value)


main : Program Value Model Msg
main =
    Browser.document
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }



-- MODEL


type alias Model =
    {}


init : Value -> ( Model, Cmd Msg )
init _ =
    ( {}, Cmd.none )



-- LOGIC
-- UPDATE


type Msg
    = Noop


update : Msg -> Model -> ( Model, Cmd Msg )
update _ model =
    ( model, Cmd.none )


view : Model -> Document Msg
view _ =
    { title = "Hello World"
    , body =
        [ div [ class "cover-container d-flex w-100 h-100 p-3 mx-auto flex-column text-center" ]
            [ div [ class "inner cover" ]
                [ h1 [ class "cover-heading" ] [ text "Hello World" ]
                , p [ class "lead" ] [ text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue nunc nec urna mattis, eget egestas libero elementum. Duis pretium ipsum sed nisl luctus, ut imperdiet arcu commodo. Proin volutpat libero eu neque faucibus, non fermentum ex varius. Duis laoreet metus vitae quam rhoncus, id rhoncus enim semper. Vivamus porta egestas elit ut porttitor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis sollicitudin venenatis ullamcorper. Nulla tempor volutpat nulla a fringilla. Etiam lacinia consequat sapien sit amet tempus. Donec blandit mattis nisi, in facilisis metus tempor ac. " ]
                , p [ class "lead" ] [ a [ class "btn btn-lg-btn-secondary" ] [ text "Learn more" ] ]
                ]
            ]
        ]
    }



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none
