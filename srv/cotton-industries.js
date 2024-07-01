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
});
