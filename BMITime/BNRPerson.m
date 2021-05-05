//
//  BNRPerson.m
//  BMITime
//
//  Created by Franklin on 3/31/21.
//

#import "BNRPerson.h"

@implementation BNRPerson

//- (float)heightInMeters{
//    return _heightInMeters;
//}
//
//- (void)setHeightInMeters:(float)h{
//    _heightInMeters = h;
//}
//
//- (int)weightInKilos{
//    return _weightInKilos;
//}
//
//- (void)setWeightInKilos:(int)w{
//    _weightInKilos = w;
//}

- (float)bodyMassindex{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
    //return _weightInKilos / (_heightInMeters * _heightInMeters);
}


@end
