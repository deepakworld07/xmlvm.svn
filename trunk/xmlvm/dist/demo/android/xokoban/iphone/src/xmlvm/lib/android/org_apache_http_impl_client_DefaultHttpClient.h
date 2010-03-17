#import "xmlvm.h"
#import "java_lang_Object.h"
#import "org_apache_http_client_HttpClient.h"

// For circular include:
@class org_apache_http_impl_client_DefaultHttpClient;
@class org_apache_http_client_HttpClient;
@class org_apache_http_client_methods_HttpUriRequest;
@class android_internal_Assert;
@class java_lang_Object;
@class org_apache_http_conn_ClientConnectionManager;
@class org_apache_http_HttpResponse;
@class org_apache_http_params_HttpParams;

// Automatically generated by xmlvm2obj. Do not edit!


	
@interface org_apache_http_impl_client_DefaultHttpClient : java_lang_Object <org_apache_http_client_HttpClient>
{

}
+ (void) initialize;
- (id) init;
- (void) __init_org_apache_http_impl_client_DefaultHttpClient___org_apache_http_conn_ClientConnectionManager_org_apache_http_params_HttpParams :(org_apache_http_conn_ClientConnectionManager*)n1 :(org_apache_http_params_HttpParams*)n2;
- (org_apache_http_params_HttpParams*) getParams__;
- (org_apache_http_HttpResponse*) execute___org_apache_http_client_methods_HttpUriRequest :(org_apache_http_client_methods_HttpUriRequest*)n1;
- (org_apache_http_conn_ClientConnectionManager*) getConnectionManager__;

@end

