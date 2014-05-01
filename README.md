NSTimer + block

====================

[AOTimer scheduledTimerWithTimeInterval:0.1 andCallback:^(AOTimer *timer, NSTimeInterval time) {
    NSLog(@"Current timer time %f", time);
    [timer invalidate];
}];
