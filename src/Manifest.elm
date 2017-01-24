module Manifest exposing (items, locations, characters)

import ClientTypes exposing (..)


items : List ( Id, Attributes )
items =
    [ ( "Glasses", { cssSelector = "", name = "Glasses", description = "The thing I've been looking for!" } )
    ]


characters : List ( Id, Attributes )
characters =
    [ ( "Jeff", { cssSelector = "Jeff", name = "Jeff", description = "Not the sharpest tool in the shed, but a good mate, always ready to refactor." } ) ]


locations : List ( Id, Attributes )
locations =
    [ ( "ConferenceRoom", { cssSelector = "conf-room", name = "Conference Room", description = "Could they be here?" } )
    , ( "Room", { cssSelector = "room", name = "Hotel Room", description = "My hotel room. I wonder if I'll ever find my glasses..." } )
    ]
