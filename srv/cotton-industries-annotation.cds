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
     },
};
