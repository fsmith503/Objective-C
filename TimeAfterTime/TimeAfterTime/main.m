//
//  main.m
//  TimeAfterTime
//
//  Created by Franklin on 3/30/21.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        NSDate *now = [NSDate date];
        NSLog(@"This NSDate object lives at %p", now);
        NSLog(@"The date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"time since 1970 is %f seconds", seconds);
        
        NSHost *myCPU = [NSHost currentHost];
        
        NSString *localName = [myCPU localizedName];
        NSLog(@"The name of my computer is %@ :)", localName);
        
        
        
        
    }
    return 0;
}
