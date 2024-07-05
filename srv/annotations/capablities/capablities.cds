using {cottonindustryservice as service} from '../../cotton-industries';


annotate service.OrderHeader with @odata.draft.enabled;
annotate service.OrderHeader with @Common.SemanticKey: [order_id];


//If no filter-restriction is provided, the filter field is treated as a multi-valued field.
annotate service.OrderHeader with @(Capabilities: {FilterRestrictions: {FilterExpressionRestrictions: [
  {
    Property          : 'order_confirmed_date',
    AllowedExpressions: 'SingleValue'
  },
  {
    Property          : 'order_issued_date',
    AllowedExpressions: 'SingleRange'
  }
]}});


//Delete All Items, if Deletable is set to True
// annotate service.OrderHeader with @(
//   Capabilities: {
//      DeleteRestrictions: {
//              $Type    : 'Capabilities.DeleteRestrictionsType',
//               Deletable: true
// }});



// Disable the Delete action based on some conditions
annotate service.OrderHeader with @(
   Capabilities.DeleteRestrictions : {
       $Type : 'Capabilities.DeleteRestrictionsType',
      Deletable: insertDeleteRestriction
   }   
);

