using {cottonindustries as ctind} from '../db/data-model';


service cottonindustryservice{
    entity Employees as projection on ctind.Employees;
}