NSTimer + block

====================

'''[AOTimer scheduledTimerWithTimeInterval:0.1 andCallback:^(AOTimer *timer, NSTimeInterval time) {<br>
    NSLog(@"Current timer time %f", time);<br>
    [timer invalidate];<br>
}];'''
