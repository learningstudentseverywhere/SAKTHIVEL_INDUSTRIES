// const cds = require('@sap/cds');


// module.exports = cds.service.impl(async function(){
//     this.after('PUT','OrderItems_drafts',async req =>{
//         console.log("Entered After Patch")
//     });

//     this.before('PUT','OrderItems_drafts',async req =>{
//         console.log("Entered After Patch")
//     });

//     this.after('PATCH','OrderItems_drafts',async req =>{
//         console.log("Entered After Patch")
//     });

//     this.before('PATCH','OrderItems_drafts',async req =>{
//         console.log("Entered After Patch")
//     });
    
//     this.before('PUT','OrderItems_DRAFTS',async req =>{
//         console.log("Entered After Patch")
//     });

//     this.after('PUT','OrderItems.Drafts',async req =>{
//         console.log("Entered After Patch")
//     });
//     //Eventhough we are triggering a patch call, we have to give here as PUT, if we give Patch here, the handler will not trigger
//     //The node.js is considering the patch call as a PUT Call
//     this.after('PUT','Employees',async req =>{
//         console.log("Entered Employees");
//     });
// })


const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {
    
    // Before PATCH handler for drafts
    this.before('SAVE', 'OrderItems_drafts', async (req) => {
        console.log("Entered Before PATCH on Drafts");
    });

    // After PATCH handler for drafts
    this.after('SAVE', 'OrderItems_drafts', async (req) => {
        console.log("Entered After PATCH on Drafts");
    });

    // Before PATCH handler for active instances
    this.before('SAVE', 'OrderItems', async (req) => {
        console.log("Entered Before PATCH on Active Instances");
    });

    // After PATCH handler for active instances
    this.after('SAVE', 'OrderItems', async (req) => {
        console.log("Entered After PATCH on Active Instances");
    });

    // Before PUT handler for active instances
    this.before('SAVE', 'OrderItems', async (req) => {
        console.log("Entered Before PUT on Active Instances");
    });

    // After PUT handler for active instances
    this.after('SAVE', 'OrderItems', async (req) => {
        console.log("Entered After PUT on Active Instances");
    });

    this.on('ApplyDiscount',async req=>{

      //Own Method -- Not refreshing in table automatically 
    //   let HeaderData = await SELECT.from('cottonindustries_OrderHeader').where(req.query.SELECT.from.ref[0].where)
    //   HeaderData[0].ORDER_TOTAL = HeaderData[0].ORDER_TOTAL - 100;
    //   let response = await UPDATE.entity('cottonindustries_OrderHeader').data(HeaderData[0]).where({order_id:req.query.SELECT.from.ref[0].where[2].val})
    //   let final_Response = await SELECT.from('cottonindustries_OrderHeader').where({order_id:req.query.SELECT.from.ref[0].where,IsActiveEntity:true})
    //   return final_Response;
      //Own Method



    //Standard Method
    //Getting the Table name
    let Target_Entity = req.target

    //Getting the req.params, this is stored in variable to update the table finally
    const [{order_id, IsActiveEntity}] = req.params

    //Get the record from the table 
    let HeaderData = await SELECT.from(Target_Entity).where(req.query.SELECT.from.ref[0].where);

    //Apply discount
    HeaderData[0].order_total = HeaderData[0].order_total - 100;

    //Update back to the table
    await UPDATE.entity(Target_Entity).data(HeaderData[0]).where({order_id:req.query.SELECT.from.ref[0].where[2].val})

    //Returning only the changed order id
    return this.read('OrderHeader',{order_id, IsActiveEntity})

    //Standard Method

    });
});
