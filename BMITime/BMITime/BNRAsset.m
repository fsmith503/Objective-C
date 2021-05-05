//
//  BNRAsset.m
//  BMITime
//
//  Created by Franklin Smith on 5/4/21.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}

- (void)dealloc {
    NSLog(@"Deallocating %@", self);
}


@end
