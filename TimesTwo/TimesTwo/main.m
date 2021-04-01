//
//  main.m
//  TimesTwo
//
//  Created by Franklin on 3/31/21.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSDate *currentTime = [NSDate date];
        NSLog(@"currentTime's value is %p", currentTime);
        NSDate *startTime = currentTime;
        sleep(2);
        currentTime = [NSDate date];
        NSLog(@"current times new value is now: %p", currentTime);
        NSLog(@"The address of the original object is %p", startTime);
        currentTime = nil;
        NSLog(@"Current times value is %p", currentTime);
    }
    return 0;
}
