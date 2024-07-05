using {cottonindustries as ctind} from '../db/data-model';


service cottonindustryservice{
    entity Employees as projection on ctind.Employees;
    entity OrderHeader as projection on ctind.OrderHeader actions {

       @Common.IsActionCritical:true
       action ApplyDiscount() returns OrderHeader;
       
       action ApplyTax() returns OrderHeader;
    };
    entity OrderItems as projection on ctind.OrderItems;
}