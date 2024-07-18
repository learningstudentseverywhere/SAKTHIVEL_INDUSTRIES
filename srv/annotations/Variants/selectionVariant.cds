using {cottonindustryservice as service} from '../../cotton-industries';

annotate service.OrderHeader with @UI:{
    SelectionVariant#NotDelivered:{
             $Type:'UI.SelectionVariantType',
             ID:'NotDelivered',
             Text : 'Not Delivered',
             Parameters:[

             ],
             FilterExpression:'',
             SelectOptions:[
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
             ]
    },
    SelectionVariant#InTransit : {
        $Type : 'UI.SelectionVariantType',
        ID:'InTransit',
        Text:'In Transit',
        Parameters:[],
        FilterExpression:'',
        SelectOptions:[
            {
                $Type:'UI.SelectOptionType',
                PropertyName:delivery_Status_Status,
                Ranges : [
                    {
                        $Type:'UI.SelectionRangeType',
                        Sign:#I,
                        Option:#EQ,
                        Low:'In Transit'
                    }
                ]
            }
        ]
    },
    SelectionVariant#Delivered : {
        $Type : 'UI.SelectionVariantType',
        ID:'Delivered',
        Text : 'Delivered',
        Parameters:[],
        FilterExpression:'',
        SelectOptions:[
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
        ]
    },
};