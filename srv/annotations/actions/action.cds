using {cottonindustryservice as service} from '../../cotton-industries';


//To hide the delete,create buttons,set to true
annotate service.OrderHeader with @UI:{
    DeleteHidden : false,
    CreateHidden : false,
};


