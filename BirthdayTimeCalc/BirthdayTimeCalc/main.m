//
//  main.m
//  BirthdayTimeCalc
//
//  Created by Franklin on 3/30/21.
//

#import <Foundation/Foundation.h>
#include <math.h>

double pow(double x, double y);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSDate *now = [NSDate date];
        NSDateComponents *birthdayDate =[[NSDateComponents alloc] init];
        [birthdayDate setYear:1995];
        [birthdayDate setMonth: 6];
        [birthdayDate setDay: 23];
        [birthdayDate setHour: 19];
        [birthdayDate setMinute: 8];
        [birthdayDate setSecond: 0];
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:birthdayDate];
        double secondsSinceMyBirthday = [now timeIntervalSinceDate:dateOfBirth];
        NSLog(@"Seconds since my birthday are: %f", secondsSinceMyBirthday);
        // divide your value in seconds by 3.2x10^7.
        double years = secondsSinceMyBirthday / ((3.2)*(pow(10.0, 7.0)));
        NSLog(@"In years this is: %f", years);
    }
    return 0;
}
