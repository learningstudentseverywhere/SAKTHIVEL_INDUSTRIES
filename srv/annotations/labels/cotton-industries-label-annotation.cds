using {cottonindustryservice as service} from '../../cotton-industries';


annotate service.OrderHeader with {
    order_id @title : '{i18n>orderId}';
    order_description @title : '{i18n>orderDesc}';
    order_total @title : '{i18n>orderTotal}'
};

annotate service.OrderItems with{
    order_id @title : '{i18n>orderId}';
    order_description @title : '{i18n>orderDesc}';
    item_id @title : '{i18n>itemId}';
    item_description @title : '{i18n>itemDescription}';
    Quantity @title : '{i18n>Quantity}';
    Amount @title : '{i18n>Amount}';
}