//
//  BNREmployee.m
//  BMITime
//
//  Created by Franklin Smith on 5/4/21.
//

#import "BNREmployee.h"

@implementation BNREmployee

- (double)yearsOfEmployment{
    // Do i have a non-nil hireDate?
    if (self.hireDate) {
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0;
    } else {
        return 0;
    }
}

- (float)bodyMassIndex{
    //return 19.0;
    float normalBMI = [super bodyMassindex];
    return normalBMI * 0.9;
}

- (NSString *)description{
    return [NSString stringWithFormat:@"<Employee %d>", self.employeeID];
}

@end
