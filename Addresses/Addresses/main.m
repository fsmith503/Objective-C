//
//  main.m
//  Addresses
//
//  Created by Franklin on 3/17/21.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    int i = 17;
    int *addressOfI = &i;
    printf("i stores its values at %p\n");
    printf("i stores its value at %p\n", &i);
    
    *addressOfI = 89;
    printf("Now i is %d\n", i);
    
    printf("An int is %zu bytes\n", sizeof(int));
    printf("A pointer is %zu byes\n", sizeof(addressOfI));
    
    
    printf("this function starts at %p\n", main);
    printf("the int stored at addressOfI is %d\n", *addressOfI);
    return 0;
}
