using {cottonindustryservice as cotton} from './cotton-industries';


annotate cotton.OrderHeader with 
@UI: {
    SelectionFields  : [
        order_id,
        order_description
    ],
    LineItem  : [
         {
            $Type:'UI.DataField',
             Value:order_id
         
         },
         {
            $Type:'UI.DataField',
            Value : order_description
         }
                 ],
     HeaderInfo  : {
         $Type : 'UI.HeaderInfoType',
         TypeName : 'Order',
         TypeNamePlural : 'Orders',
        Title:{
            $Type:'UI.DataField',
            Value: order_id
        }
     },
     HeaderFacets  : [
         {
            $Type:'UI.ReferenceFacet',
            ID:'OrderBasicDetails',
            Label:'Order Basic Details',
            Target : '@UI.FieldGroup#OrderBasicDetails'
         }
     ],
     FieldGroup #OrderBasicDetails : {
         $Type : 'UI.FieldGroupType',
         Data : [
            {
                $Type:'UI.DataField',
                Value : order_description

            },
             {
                $Type:'UI.DataField',
                Value : order_id

            }
         ]
     },
     Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'OrderCompleteDetails',
            Label : 'Order Complete Details',
            Target : '@UI.FieldGroup#OrderCompleteDetails'
        }
     ],
     FieldGroup #OrderCompleteDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type:'UI.DataField',
                Value : order_id
            },
             {
                $Type:'UI.DataField',
                Value : order_description
            },

        ]
     }

};
