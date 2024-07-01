using {cottonindustryservice as service} from '../../cotton-industries';



annotate service.OrderHeader with @Common:{
    SideEffects #ItemChanged : {
      SourceEntities:[to_OrderItems],
      TargetProperties:['order_total']
        
    }
};