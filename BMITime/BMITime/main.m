//
//  main.m
//  BMITime
//
//  Created by Franklin on 3/31/21.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        // create an instance of BNRPerson
        BNRPerson *mikey = [[BNRPerson alloc] init];
        
        // give the instance variables interesting values using setters
        [mikey setWeightInKilos:96];
        [mikey setHeightInMeters:1.8];
        
        // log the instance variables using the getters
        float height = [mikey heightInMeters];
        int weight = [mikey weightInKilos];
        NSLog(@"Mike is %.2f tall and %d weight in kilos", height, weight);
        
        // log some values using custom methods
        float bmw = [mikey bodyMassindex];
        NSLog(@"Mikey has BMI of %.2f", bmw);
        
        
    }
    return 0;
}
