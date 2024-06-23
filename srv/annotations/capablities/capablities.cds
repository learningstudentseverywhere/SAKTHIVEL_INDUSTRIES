using {cottonindustryservice as service} from '../../cotton-industries';



annotate service.OrderHeader with @odata.draft.enabled;
annotate service.OrderHeader with @Common.SemanticKey  : [order_id];