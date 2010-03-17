#import "org_xmlvm_iphone_NSError.h"
#import "org_xmlvm_iphone_AVAudioPlayerDelegate.h"
#import "android_media_MediaPlayer.h"
#import "android_media_MediaPlayer_OnCompletionListener.h"
#import "org_xmlvm_iphone_AVAudioPlayer.h"

// Automatically generated by xmlvm2obj. Do not edit!


#import "android_media_MediaPlayer_AudioPlayerDelegate.h"


@implementation android_media_MediaPlayer_AudioPlayerDelegate;

+ (void) initialize
{
    if (strcmp(class_getName(self), "android_media_MediaPlayer_AudioPlayerDelegate") == 0) {
    }
}

- (id) init
{
    if (self = [super init]) {
        mediaPlayer_android_media_MediaPlayer = (id) [NSNull null];
        this_0_android_media_MediaPlayer = (id) [NSNull null];
    }
    return self;
}

- (void) dealloc
{
    [mediaPlayer_android_media_MediaPlayer release];
    [this_0_android_media_MediaPlayer release];
    [super dealloc];
}

- (void) __init_android_media_MediaPlayer_AudioPlayerDelegate___android_media_MediaPlayer_android_media_MediaPlayer :(android_media_MediaPlayer*)n1 :(android_media_MediaPlayer*)n2
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.o = self;
    _r1.o = n1;
    _r2.o = n2;
    [_r1.o retain];
    [((android_media_MediaPlayer_AudioPlayerDelegate*) _r0.o)->this_0_android_media_MediaPlayer release];
    ((android_media_MediaPlayer_AudioPlayerDelegate*) _r0.o)->this_0_android_media_MediaPlayer = _r1.o;
    [((java_lang_Object*) _r0.o) __init_java_lang_Object__];
    [_r2.o retain];
    [((android_media_MediaPlayer_AudioPlayerDelegate*) _r0.o)->mediaPlayer_android_media_MediaPlayer release];
    ((android_media_MediaPlayer_AudioPlayerDelegate*) _r0.o)->mediaPlayer_android_media_MediaPlayer = _r2.o;
    [_pool release];
    return;
}


- (void) audioPlayerBeginInterruption___org_xmlvm_iphone_AVAudioPlayer :(org_xmlvm_iphone_AVAudioPlayer*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.o = self;
    _r1.o = n1;
    [_pool release];
    return;
}


- (void) audioPlayerDecodeErrorDidOccur___org_xmlvm_iphone_AVAudioPlayer_org_xmlvm_iphone_NSError :(org_xmlvm_iphone_AVAudioPlayer*)n1 :(org_xmlvm_iphone_NSError*)n2
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.o = self;
    _r1.o = n1;
    _r2.o = n2;
    [_pool release];
    return;
}


- (void) audioPlayerDidFinishPlaying___org_xmlvm_iphone_AVAudioPlayer_boolean :(org_xmlvm_iphone_AVAudioPlayer*)n1 :(int)n2
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r2.o = self;
    _r3.o = n1;
    _r4.i = n2;
    _r0.o = [[((android_media_MediaPlayer_AudioPlayerDelegate*) _r2.o)->this_0_android_media_MediaPlayer retain] autorelease];
    _r0.o = [android_media_MediaPlayer access$000___android_media_MediaPlayer:_r0.o];
    [_r0.o autorelease];
    if (_r0.o == [NSNull null]) goto label19;
    _r0.o = [[((android_media_MediaPlayer_AudioPlayerDelegate*) _r2.o)->this_0_android_media_MediaPlayer retain] autorelease];
    _r0.o = [android_media_MediaPlayer access$000___android_media_MediaPlayer:_r0.o];
    [_r0.o autorelease];
    _r1.o = [[((android_media_MediaPlayer_AudioPlayerDelegate*) _r2.o)->mediaPlayer_android_media_MediaPlayer retain] autorelease];
    [((android_media_MediaPlayer_OnCompletionListener*) _r0.o) onCompletion___android_media_MediaPlayer:_r1.o];
    label19:;
    [_pool release];
    return;
}


- (void) audioPlayerEndInterruption___org_xmlvm_iphone_AVAudioPlayer :(org_xmlvm_iphone_AVAudioPlayer*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.o = self;
    _r1.o = n1;
    [_pool release];
    return;
}



@end

