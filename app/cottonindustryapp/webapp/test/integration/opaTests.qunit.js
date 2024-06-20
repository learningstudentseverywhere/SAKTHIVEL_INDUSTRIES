sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/cotton/cottonindustryapp/test/integration/FirstJourney',
		'com/cotton/cottonindustryapp/test/integration/pages/OrderHeaderList',
		'com/cotton/cottonindustryapp/test/integration/pages/OrderHeaderObjectPage',
		'com/cotton/cottonindustryapp/test/integration/pages/OrderItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, OrderHeaderList, OrderHeaderObjectPage, OrderItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/cotton/cottonindustryapp') + '/index.html'
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