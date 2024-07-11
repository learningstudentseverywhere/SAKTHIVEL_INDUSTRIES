using cottonindustryservice as service from '../../srv/cotton-industries';
using from '../../srv/annotations/layout/cotton-industries-annotation';

annotate service.OrderHeader with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : order_id,
        },
        {
            $Type : 'UI.DataField',
            Value : order_description,
        },
        {
            $Type:'UI.DataField',
            Value : order_total
        },
        {
            $Type:'UI.DataField',
            Value : insertDeleteRestriction
        },
         {
            $Type:'UI.DataField',
            Value : discountAvailalbe
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'service.ApplyDiscount',
            Label : 'Apply Rs.100 Discount',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'cottonindustryservice.ApplyCoupon',
            Label : 'Apply Coupon',
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@UI.DataPoint#delivery_Progress',
            Label : 'Delivery Progress',
        },
    ]
);
annotate service.OrderHeader with @(
    UI.DataPoint #delivery_Progress : {
        Value : delivery_Progress,
        Visualization : #Progress,
        TargetValue : 100,
    }
);
