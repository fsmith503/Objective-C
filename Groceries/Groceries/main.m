//
//  main.m
//  Groceries
//
//  Created by Franklin on 3/31/21.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableArray *groceries = [NSMutableArray array];
        [groceries addObject:@"spellegrino"];
        [groceries addObject:@"clif bars"];
        [groceries addObject:@"apples"];
        NSLog(@"My grocery list is:");
        for (NSString *n in groceries){
            NSLog(@"%@", n);
        }
    }
    return 0;
}
