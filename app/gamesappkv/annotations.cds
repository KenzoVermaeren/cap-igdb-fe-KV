using GameService as service from '../../srv/game-service';
annotate service.Student with @odata.draft.enabled;
annotate service.Student with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'First_name',
                Value : First_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Last_name',
                Value : Last_name,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'favourite games',
            ID : 'favouritegames',
            Target : 'to_favos/@UI.LineItem#favouritegames',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'First_name',
            Value : First_name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Last_name',
            Value : Last_name,
        },
    ],
    UI.HeaderInfo : {
        Initials : First_name,
        TypeName : '',
        TypeNamePlural : '',
    },
    UI.FieldGroup #favouritegames : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : to_favos.Game_ID,
                Label : 'Game_ID',

            },
            {
                $Type : 'UI.DataField',
                Value : to_favos.to_game.Description,
                Label : 'Description',
            },
            {
                $Type : 'UI.DataField',
                Value : to_favos.to_game.Name,
                Label : 'Name',
            },
        ],
    },
    UI.SelectionFields : [
        First_name,
        Last_name,
    ],
);
annotate service.FavoriteGame with @(
    UI.LineItem #favouritegames : [
        {
            $Type : 'UI.DataField',
            Value : Game_ID,
            Label : 'Game_ID',
        },
        {
            $Type : 'UI.DataField',
            Value : to_game.Name,
            Label : 'Name',
        },
        {
            $Type : 'UI.DataField',
            Value : to_game.Genre,
            Label : 'Genre',
        },
        {
            $Type : 'UI.DataField',
            Value : to_game.Platform,
            Label : 'Platform',
        },
    ]
);

