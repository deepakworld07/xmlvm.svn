checkClass("java.util.List");
qx.Class.define("java_util_ArrayList", {
  extend: java_util_List,
  construct: function() {
  	this.jsArray = new Array();
  },
  members:
  {
	jsArray: 0,
	setJsArray: function(jsArray) {
		this.jsArray = jsArray;
	},
	_size: function() {
		return this.jsArray.length;
	},
	_get___int: function(i) {
		return this.jsArray[i];
	},
	_add___java_lang_Object: function(obj) {
		this.jsArray.push(obj);
	}
  }
});