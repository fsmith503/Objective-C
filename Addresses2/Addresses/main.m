//
//  main.m
//  Addresses
//
//  Created by Franklin Smith on 9/16/21.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        int i = 17;
        int *addressOfI = &i;
        printf("i stores it's value at %p\n", addressOfI);
        printf("i stores its value at %p\n", &i);
        printf("This function stores its value at %p\n", main);
        printf("The value at addressOfI holds is %d\n", *addressOfI);
        printf("An int is size %zu byes\n", sizeof(int));
        printf("A pointer is %zu bytes \n", sizeof(int *));
    }
    return 0;
}
