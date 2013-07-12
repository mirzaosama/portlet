<%
/**
 * Copyright (c) 2000-2011 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />
<script>
Ext.onReady(function(){

	var proxy=new Ext.data.HttpProxy(    {url:'survey.html'});

		  var reader=new Ext.data.JsonReader(
			{
			},[
				{name: 'appeId', mapping: 'appeId'},
				{name: 'survId'},           
				{name: 'location'}, 
				{name: 'surveyDate'},
				{name: 'surveyTime'},
				{name: 'inputUserId'}           
			]
		)
 
		var store=new Ext.data.Store(    {
		  proxy:proxy,
		  reader:reader
	   });

	store.load();


   
    var grid = new Ext.grid.GridPanel({
        store: store,
        columns: [
            {header: "appeId", width: 60, dataIndex: 'appeId', sortable: true},
            {header: "survId", width: 60, dataIndex: 'survId', sortable: true},
            {header: "location", width: 60, dataIndex: 'location', sortable: true},
            {header: "surveyDate", width: 100, dataIndex: 'surveyDate', sortable: true},
            {header: "surveyTime", width: 100, dataIndex: 'surveyTime', sortable: true},
            {header: "inputUserId", width:80, dataIndex: 'inputUserId', sortable: true}
        ],
        renderTo:'example-grid',
        width:540,
        height:200
    });

});
</script>
<div id="example-grid"></div>
This is the <b>Hello world</b> portlet.