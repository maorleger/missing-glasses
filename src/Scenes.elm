module Scenes exposing (scenes)

import Engine exposing (..)
import ClientTypes exposing (..)


scenes : List ( Id, List ( Id, Engine.Rule, Narration ) )
scenes =
    [ ( "startSearch", startSearch )
    , ( "goToHotelRoom", goToHotelRoom )
    , ( "goToConferenceRoom", goToConferenceRoom )
    , ( "askJeff", askJeff )
    ]




askJeff : List ( Id, Engine.Rule, Narration )
askJeff =
    []


goToConferenceRoom : List ( Id, Engine.Rule, Narration )
goToConferenceRoom =
    []
      ++ ( "go to conference room"
      , { interaction = withLocation "ConferenceRoom"
      , conditions = []
      , changes = 
        [ moveCharacterToLocation "Jeff" "Room"
        ]
        }
        , jeffMovesToRoom
        ) :: []


goToHotelRoom : List ( Id, Engine.Rule, Narration )
goToHotelRoom =
    []
        ++ ( "go to room"
           , { interaction = withLocation "Room"
             , conditions = []
             , changes =
                [ moveCharacterToLocation "Jeff" "ConferenceRoom"
                ]
             }
           , [ jeffGetsInstructions ]
           )
        :: []


startSearch : List ( Id, Engine.Rule, Narration )
startSearch =
    []
        ++ ( "start search in hotel room"
           , { interaction = withCharacter "Jeff"
             , conditions = []
             , changes =
                [ moveCharacterToLocation "Jeff" "ConferenceRoom"
                ]
             }
           , [ jeffGetsInstructions ]
           )
        :: []








jeffGetsInstructions : String
jeffGetsInstructions =
    """
    Jeff, can you go to conference room and look for my glasses?

    Jeff seems confused, as though he's deep in thought.

    I bet it's the monorepo again...
  """




jeffMovesToRoom : List String
jeffMovesToRoom = 
  [ "Jeff is going back to my room, lets see what he says"
  , "Jeff has gone back"
  , "Where the hell is he?"
  ]

