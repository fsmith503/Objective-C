//
//  main.m
//  BMITime
//
//  Created by Franklin on 3/31/21.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
#import "BNREmployee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        // create an instance of BNREmployee
        BNREmployee *mikey = [[BNREmployee alloc] init];
        
        // give the instance variables interesting values using setters
//        [mikey setWeightInKilos:96];
//        [mikey setHeightInMeters:1.8];
        mikey.weightInKilos = 96;
        mikey.heightInMeters = 1.8;
        mikey.employeeID = 12;
        mikey.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"];
        
        // log the instance variables using the getters
//        float height = [mikey heightInMeters];
//        int weight = [mikey weightInKilos];
        float height = mikey.heightInMeters;
        int weight = mikey.weightInKilos;
        
        NSLog(@"Mikey is %.2f tall and %d weight in kilos", height, weight);
        NSDate *date = mikey.hireDate;
        NSLog(@"%@ hired on %@", mikey, date);
        //NSLog(@"Employee %lu hired on %@", mikey.employeeID, mikey.hireDate);
        
        // log some values using custom methods
        float bmw = [mikey bodyMassindex];
        double years = [mikey yearsOfEmployment];
        NSLog(@"Mikey has BMI of %.2f", bmw);
        
        
    }
    return 0;
}
