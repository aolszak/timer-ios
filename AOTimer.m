//    AOTimer
//
//    Created by Artur Olszak
//    www.polbyte.com

#import "AOTimer.h"

@interface AOTimer ()

@property (nonatomic, strong) NSTimer *timer;
@property (copy) void(^callback)(AOTimer *timer, NSTimeInterval time);
@property (nonatomic, assign) __block NSInteger counter;
@property (nonatomic, assign) __block CGFloat interval;

@end

@implementation AOTimer

+ (AOTimer*)scheduledTimerWithTimeInterval:(NSTimeInterval)interval andCallback:(void (^)(AOTimer *timer, NSTimeInterval time))callback {
    AOTimer *t = [[AOTimer alloc] init];
    t.callback = callback;
    t.counter = 0;
    t.interval = interval;
    t.timer = [NSTimer scheduledTimerWithTimeInterval:interval target:t selector:@selector(actionTimer:) userInfo:t repeats:YES];
    t.callback(t, t.counter*t.interval);
    return t;
}

- (void)actionTimer:(NSTimer*)timer {
    _counter++;
    _callback(self, _counter*_interval);
}

- (void)invalidate {
    [_timer invalidate];
}

- (CGFloat)getCurrentTime {
    return _counter*_interval;
}

- (BOOL)isValid {
    return _timer.isValid;
}

@end
