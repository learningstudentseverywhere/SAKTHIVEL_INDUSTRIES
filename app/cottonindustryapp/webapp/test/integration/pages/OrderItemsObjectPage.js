sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.cotton.cottonindustryapp',
            componentId: 'OrderItemsObjectPage',
            contextPath: '/OrderHeader/to_OrderItems'
        },
        CustomPageDefinitions
    );
});