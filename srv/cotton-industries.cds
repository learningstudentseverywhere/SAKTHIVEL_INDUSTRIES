using {cottonindustries as ctind} from '../db/data-model';


service cottonindustryservice{
    entity Employees as projection on ctind.Employees;
    entity OrderHeader as projection on ctind.OrderHeader actions {

       @Common.IsActionCritical:true
       action ApplyDiscount() returns OrderHeader;

       action ApplyCoupon(coupon:inText:CouponCode @mandatory) returns OrderHeader;
    };
    entity OrderItems as projection on ctind.OrderItems;

    type inText : {
        CouponCode: String @Common.Label:'Apply Coupon code';
         };

}