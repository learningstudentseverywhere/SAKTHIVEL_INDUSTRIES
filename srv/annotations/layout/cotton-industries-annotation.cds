using {cottonindustryservice as cotton} from '../../cotton-industries';


annotate cotton.OrderHeader with
@UI: {
    SelectionFields                 : [
        order_id,
        order_description,
        order_confirmed_date,
        order_issued_date
    ],
    LineItem                        : [
        {
            $Type: 'UI.DataField',
            Value: order_id

        },
        {
            $Type: 'UI.DataField',
            Value: order_description
        },
         {
            $Type:'UI.DataFieldForAction',
            Action:'cotton.ApplyDiscount',
            Label : 'Apply Discount'
        }
    ],
    HeaderInfo                      : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Order',
        TypeNamePlural: 'Orders',
        Title         : {
            $Type: 'UI.DataField',
            Value: order_id
        }
    },
    HeaderFacets                    : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'OrderBasicDetails',
        Label : 'Order Basic Details',
        Target: '@UI.FieldGroup#OrderBasicDetails'
    }],
    FieldGroup #OrderBasicDetails   : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: order_description

            },
            {
                $Type: 'UI.DataField',
                Value: order_id

            },
            {
                $Type: 'UI.DataField',
                Value: order_total
            }
        ]
    },
    Facets                          : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'OrderCompleteDetails',
            Label : 'Order Complete Details',
            Target: '@UI.FieldGroup#OrderCompleteDetails'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'OrderItemDetails',
            Label : 'Order Item Details',
            Target: 'to_OrderItems/@UI.LineItem'
        }
    ],
    FieldGroup #OrderCompleteDetails: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: order_id
            },
            {
                $Type: 'UI.DataField',
                Value: order_description
            },
            {
                $Type: 'UI.DataField',
                Value: order_total
            }

        ]
    }


};

annotate cotton.OrderItems with @UI: {LineItem: [
    {
        $Type: 'UI.DataField',
        Value: order_description
    },
    {
        $Type: 'UI.DataField',
        Value: item_id
    },
    {
        $Type: 'UI.DataField',
        Value: item_description
    },
    {
        $Type: 'UI.DataField',
        Value: Quantity
    },
    {
        $Type: 'UI.DataField',
        Value: Amount
    }
]};

