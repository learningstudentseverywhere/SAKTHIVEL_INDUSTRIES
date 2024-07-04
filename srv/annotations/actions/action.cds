using {cottonindustryservice as service} from '../../cotton-industries';


//To make the delete,create button Invisisble
annotate service.OrderHeader with @UI:{
    DeleteHidden : true,
    CreateHidden : true,
};