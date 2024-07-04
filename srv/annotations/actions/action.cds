using {cottonindustryservice as service} from '../../cotton-industries';


//To make the delete button Invisisble
annotate service.OrderHeader with @UI:{
    DeleteHidden : true,
};