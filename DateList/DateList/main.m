//
//  main.m
//  DateList
//
//  Created by Franklin on 3/31/21.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        // Create three NSDate objects
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        //create an array containing all three
        //NSArray *dateList = @[now, tomorrow, yesterday];
        
        // Create an empty mutable arary
        NSMutableArray *dateList = [NSMutableArray array];
        
        //add two dates to the array
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        [dateList insertObject:yesterday atIndex:0];
        
        // Print a couple of dates
        NSLog(@"The first date is %@", dateList[0]);
        NSLog(@"The third date is %@", dateList[2]);
        
        // how many dates are there in the array ?
        NSLog(@"There are %lu dates", [dateList count]);
        
        
        
        NSUInteger listLength = dateList.count;
        NSLog(@"list legnth is %lu", (unsigned long)listLength);
        for(int i = 0; i < listLength; i++){
            NSLog(@"%@", dateList[i]);
        }
        
        // Remove yesterday
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", dateList[0]);
        
    }
    return 0;
}
