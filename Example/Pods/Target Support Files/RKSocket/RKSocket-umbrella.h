#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "SRDelegateController.h"
#import "SRIOConsumer.h"
#import "SRIOConsumerPool.h"
#import "NSRunLoop+SRWebSocketPrivate.h"
#import "NSURLRequest+SRWebSocketPrivate.h"
#import "SRProxyConnect.h"
#import "SRRunLoopThread.h"
#import "SRPinningSecurityPolicy.h"
#import "SRConstants.h"
#import "SRError.h"
#import "SRHash.h"
#import "SRHTTPConnectMessage.h"
#import "SRLog.h"
#import "SRMutex.h"
#import "SRRandom.h"
#import "SRSIMDHelpers.h"
#import "SRURLUtilities.h"
#import "NSRunLoop+SRWebSocket.h"
#import "NSURLRequest+SRWebSocket.h"
#import "RKSocket.h"
#import "SRSecurityPolicy.h"
#import "SRWebSocket.h"
#import "SwiftSocket.h"

FOUNDATION_EXPORT double RKSocketVersionNumber;
FOUNDATION_EXPORT const unsigned char RKSocketVersionString[];

