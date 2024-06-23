using {cottonindustryservice as service} from '../../cotton-industries';


annotate service.OrderHeader with {
    order_id @title : '{i18n>orderId}';
    order_description @title : '{i18n>orderDesc}';
};