using {cottonindustryservice as service} from './cotton-industries';


annotate service.OrderHeader with {
    order_id @title : 'Order ID';
    order_description @title : 'Order Description';
};