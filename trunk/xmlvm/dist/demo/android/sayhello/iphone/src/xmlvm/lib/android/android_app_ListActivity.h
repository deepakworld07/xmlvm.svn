#import "xmlvm.h"
#import "android_app_Activity.h"

// For circular include:
@class android_internal_Assert;
@class java_lang_Object;
@class android_widget_ListAdapter;
@class android_app_Activity;
@class android_widget_ListView;
@class android_view_View;
@class android_os_Bundle;
@class android_app_ListActivity;

// Automatically generated by xmlvm2obj. Do not edit!


	
@interface android_app_ListActivity : android_app_Activity
{

}
+ (void) initialize;
- (id) init;
- (void) __init_android_app_ListActivity__;
- (void) onListItemClick___android_widget_ListView_android_view_View_int_long :(android_widget_ListView*)n1 :(android_view_View*)n2 :(int)n3 :(long)n4;
- (void) onRestoreInstanceState___android_os_Bundle :(android_os_Bundle*)n1;
- (void) setListAdapter___android_widget_ListAdapter :(android_widget_ListAdapter*)n1;
- (android_widget_ListView*) getListView__;

@end

