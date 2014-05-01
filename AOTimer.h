//    AOTimer
//
//    Created by Artur Olszak
//    www.polbyte.com

#import <Foundation/Foundation.h>

@interface AOTimer : NSObject

@property (assign, nonatomic) NSTimeInterval currentTime;
@property (assign, nonatomic) BOOL isValid;

+ (AOTimer*)scheduledTimerWithTimeInterval:(NSTimeInterval)interval andCallback:(void (^)(AOTimer *timer, NSTimeInterval time))callback;
- (void)invalidate;

@end
