sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/sakthi/presentationvariantapp/test/integration/FirstJourney',
		'com/sakthi/presentationvariantapp/test/integration/pages/OrderHeaderList',
		'com/sakthi/presentationvariantapp/test/integration/pages/OrderHeaderObjectPage',
		'com/sakthi/presentationvariantapp/test/integration/pages/OrderItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, OrderHeaderList, OrderHeaderObjectPage, OrderItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/sakthi/presentationvariantapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheOrderHeaderList: OrderHeaderList,
					onTheOrderHeaderObjectPage: OrderHeaderObjectPage,
					onTheOrderItemsObjectPage: OrderItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);