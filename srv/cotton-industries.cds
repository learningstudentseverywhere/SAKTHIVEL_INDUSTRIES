using {cottonindustries as ctind} from '../db/data-model';


service cottonindustryservice{
    entity Employees as projection on ctind.Employees;
    entity OrderHeader as projection on ctind.OrderHeader actions {
       
       //Syntax 1 - Direct binding of operation available  (single field used for action visibility validation)
       // @Core.OperationAvailable : {$value : in.discountAvailalbe} 

       //Syntax -2 Binding using edmJson of operation available (Mulpile fields used for action visibility validation)
       @Core.OperationAvailable : {
                                      $edmJson:{
                                        $Eq:[
                                            {$Path:'in/discountAvailalbe'},true
                                        ]
                                      }
                                   } 
       @Common.IsActionCritical:true   //For confirmation Popup
       action ApplyDiscount() returns OrderHeader;
             
       //Syntax-1 - Direct Binding of operation available
      // @Core.OperationAvailable : {$value : in.discountAvailalbe}

      //Syntax-2 - Binding using edmJson of operation available
      @Core.OperationAvailable : {
                                   $edmJson:{
                                       $Eq: [ 
                                        {$Path:'in/discountAvailalbe'},true
                                       ]
                                    }
                                 }      
       action ApplyCoupon(@(UI.ParameterDefaultValue : 'GET50OFF')coupon:inText:CouponCode @mandatory) returns OrderHeader;
    };
    entity OrderItems as projection on ctind.OrderItems;

    type inText : {
        CouponCode: String @Common.Label:'Apply Coupon code';
         };

    entity Coupons as projection on ctind.Coupons;

    entity DeliveryStatus as projection on ctind.DeliveryStatus;
}