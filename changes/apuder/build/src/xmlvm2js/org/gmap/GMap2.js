checkClass("java.awt.Container");
checkClass("org.gmap.GMapCustomEvent");
checkClass("org.gmap.GMapEvent");

// Internal Events are stored in an queue of GMap2. This is necessary, as it is
// possible to call methods like addOverlay on the Map, while the map is not
// yet added to the DOM (because it is not yet set visible). It doesn't seem to
// be possible to create the GMap before it is set to its final destination
// easily.
qx.Class.define("Xml11_InternalEvent", {
	extend: qx.core.Object,
	construct: function(_eventType, _obj) {
		this.eventType = _eventType;
		this.obj = _obj;
	},
	statics:
	{
		EVENT_ADD_OVERLAY: 1,
		EVENT_CLEAR_OVERLAYS: 2,
		EVENT_PAN_TO: 3
	},
	members:
	{
		eventType: 0,
		obj: 0
	}
});

qx.Class.define("org_gmap_GMap2", {
	extend: java_awt_Container,
	construct: function() {
		this.initialized = false;
		this.uniqueId = (new Date()).getTime();
		this.qxCanvasLayout = new qx.ui.layout.CanvasLayout();
		// Include some kind of number generator for id
		this.qxEmbed = new qx.ui.embed.HtmlEmbed("<div id=\"" + this.uniqueId + "\" style=\"width:100%; height:100%\"></div>");
		this.qxEmbed.setDimension("100%", "100%");
		this.qxEmbed.addEventListener("appear", this.appearedEvent, this);
		this.qxCanvasLayout.add(this.qxEmbed);
		this.actionListeners = new Array();
		this.gmapListeners = new Array();
		org_gmap_GMap2.instances[this.uniqueId] = this;
		this.internalEvents = new Array();
	},
	statics:
	{
	  instances:  new Array()
	},
	members:
	{
		uniqueId: 0,
		qxCanvasLayout: 0,
		qxEmbed: 0,
		map: 0,
		initZoom: 0,
		initLatLng: 0,
		actionListeners: 0,
		gmapListeners: 0,
		internalEvents: 0,
		initialized: 0,
		__init_: function() {
			
		},
		getQx: function() {
			return this.qxCanvasLayout;
		},
		_setBounds___int_int_int_int : function(x, y, width, height) {
			this.qxCanvasLayout.setDimension(width, height);
			this.qxCanvasLayout.setLocation(x, y);
		},
		__init____org_gmap_GLatLng_int: function(latLng, zoom) {
			this.initLatLng = latLng;
			this.initZoom = zoom;
		},
		appearedEvent: function(e) {
			if(!this.initialized) {
				this.initialized = true;
				this.initGMap();
				// Check event queue for actions taken prio to initialization
				for(var i = 0; i < this.internalEvents.length; ++i) {
					var event = this.internalEvents[i];
					switch(event.eventType) {
						case Xml11_InternalEvent.EVENT_ADD_OVERLAY:
				    		this.map.addOverlay(event.obj);
				    		break;
				    	case Xml11_InternalEvent.EVENT_CLEAR_OVERLAYS:
				    		this.map.clearOverlays();
				    		break;
				    	case Xml11_InternalEvent.EVENT_PAN_TO:
				    		this.map.panTo(event.obj);
				    		break;
					}
				}
			}
		},
		initGMap: function()
		{
			if (GBrowserIsCompatible()) {
				this.map = new GMap2(document.getElementById(this.uniqueId));
				this.map.addControl(new GLargeMapControl());
				this.map.addControl(new GMapTypeControl());
				this.map.setCenter(new GLatLng(this.initLatLng._lat(), this.initLatLng._lng()), this.initZoom);
				this.map.enableScrollWheelZoom();
				gmapListeners = this.gmapListeners;
				GEvent.addListener(this.map, 'click', function(overlay, point) {
					if (point) {
						var event = new org_gmap_GMapClickEvent();
						var point2 = new org_gmap_GLatLng();
						point2.__init____double_double(point.lat(), point.lng());
						event.__init____java_lang_Object_org_gmap_GLatLng(this, point2);
						for(var i = 0; i < gmapListeners.length; ++i) {
							// actionListeners[i]._actionPerformed___java_awt_event_ActionEvent(event);
						    gmapListeners[i]._mapClicked___org_gmap_GMapClickEvent(event);
						}
					}
				});
			}
		},
		_addOverlay___org_gmap_GMarker_boolean: function(marker, openBubble)
		{
			var x = marker.getLongitude();
			var y = marker.getLatitude();
			var html = marker.getHTML();
			if(html != 0) {
		      html = html.replace("_gmap2_raiseCustomEvent(", 
		                          "_gmap2_raiseCustomEvent(" +
		                          this.uniqueId + ",");
		    }
			var marker = new GMarker(new GPoint(x, y));
			
			if (openBubble) {
			  GEvent.addListener(marker, "click", function() {
				marker.openInfoWindowHtml(html);
			  });
			}
			
			if(this.map != 0) {
				this.map.addOverlay(marker);
			} else {
				this.internalEvents.push(new Xml11_InternalEvent(
				    Xml11_InternalEvent.EVENT_ADD_OVERLAY, marker));
			}
		},
		_clearOverlays: function()
		{
			if(this.map != 0) {
				this.map.clearOverlays();
			} else {
				this.internalEvents.push(new Xml11_InternalEvent(
				    Xml11_InternalEvent.EVENT_CLEAR_OVERLAYS, 0));
			}
		},
		_addActionListener___java_awt_event_ActionListener: function(listener) {
			this.actionListeners.push(listener);
		},
		_panTo___org_gmap_GLatLng: function(point) {
			var point2 = new GLatLng(point._lat(), point._lng()); 
			if(this.map != 0) {
				this.map.panTo(point2);
			} else {
				this.internalEvents.push(new Xml11_InternalEvent(
				    Xml11_InternalEvent.EVENT_PAN_TO, point2));
			}
		},
		_setGMapEventListener___org_gmap_GMapEventListener: function(listener) {
		  // TODO: Right now we only have a 'set' method but we do a push. Change to add or
		  // remove all other listeners before pushing this one to confirm with the
		  // semantics of a 'set' method.
		  this.gmapListeners.push(listener);
		}
	}
});

function _gmap2_raiseCustomEvent(mapId, eventCode) {
  var listeners = org_gmap_GMap2.instances[mapId].gmapListeners;
  for(var i = 0; i < listeners.length; ++i) {
  	var customEvent = new org_gmap_GMapCustomEvent();
  	customEvent.__init____java_lang_Object_java_lang_String(0, new java_lang_String(eventCode));
	listeners[i]._customEventPerformed___org_gmap_GMapCustomEvent(customEvent);
  }
}