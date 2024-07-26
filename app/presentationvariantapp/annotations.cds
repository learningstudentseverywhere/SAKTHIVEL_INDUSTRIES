using cottonindustryservice as service from '../../srv/cotton-industries';

annotate service.OrderHeader with @(
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
                {
                    $Type:'UI.SelectOptionType',
                    PropertyName:delivery_Status_Status,
                    Ranges:[
                        {
                            $Type:'UI.SelectionRangeType',
                            Sign:#I,
                            Option:#EQ,
                            Low:'Not Delivered'
                        }
                    ]
                }
            ],
        },
        Text : 'Not Delivered',
    },
    UI.LineItem #tableView : [
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'cottonindustryservice.ApplyCoupon',
            Label : 'ApplyCoupon',
        },
        {
            $Type : 'UI.DataField',
            Value : order_id,
        },
        {
            $Type : 'UI.DataField',
            Value : order_description,
        },],
    UI.SelectionPresentationVariant #tableView1 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
                {
                    $Type:'UI.SelectOptionType',
                    PropertyName:delivery_Status_Status,
                    Ranges:[
                        {
                            $Type:'UI.SelectionRangeType',
                            Sign:#I,
                            Option:#EQ,
                            Low:'In Transit'
                        }
                    ]
                }
            ],
        },
        Text : 'In Transit',
    }
);
annotate service.OrderHeader with @(
    UI.LineItem #tableView1 : [
        {
            $Type : 'UI.DataField',
            Value : order_id,
        },{
            $Type : 'UI.DataField',
            Value : order_description,
        },{
            $Type : 'UI.DataField',
            Value : order_total,
        },],
    UI.SelectionPresentationVariant #tableView2 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView1',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
                 {
                    $Type:'UI.SelectOptionType',
                    PropertyName:delivery_Status_Status,
                    Ranges:[
                        {
                            $Type:'UI.SelectionRangeType',
                            Sign:#I,
                            Option:#EQ,
                            Low:'Delivered'
                        }
                    ]
                }
            ],
        },
        Text : 'Delivered',
    }
);
