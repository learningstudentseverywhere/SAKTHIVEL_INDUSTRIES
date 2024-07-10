namespace cottonindustries;


entity Employees{
    key employee_id : String(10);
        employee_name : String;
}


entity OrderHeader { 
    key order_id : String(10);
        order_description : String;
        order_total : Integer;
        order_confirmed_date : Date;
        order_issued_date:Date;
        insertDeleteRestriction:Boolean;
        discountAvailalbe:Boolean;
        to_OrderItems : Composition of many OrderItems on to_OrderItems.order_id = $self.order_id;
}

entity OrderItems{
    key order_id : String(10);
        order_description : String;
    key item_id : String(10);
        item_description : String;
        Quantity : Integer;
        Amount : Integer;
}
