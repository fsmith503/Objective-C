//
//  main.c
//  PBR
//
//  Created by Franklin on 3/17/21.
//

#include <stdio.h>
#include <math.h>


void metersToFeetAndInces(double meters, unsigned int *ftPtr, double *inPtr){
    // this function assumes meters is non-negative.
    
    // conver the number of meters into a floating-point number of feet
    double rawFeet = meters * 3.281; // e.g. 2.4536
    
    // how many compolete feet as an unsigned int?
    unsigned int feet = (unsigned int)floor(rawFeet);
    
    //store the number of feet at the supplied address
    if (ftPtr){
        printf("storing %u to the address %p\n", feet, ftPtr);
        *ftPtr = feet;
    }
   
    
    // calculate inchjes
    double fractionalFoot = rawFeet - feet;
    double inches = fractionalFoot * 12.0;
    
    
    // Store the nubmer of incehs at the supplied address
    if (inPtr){
        printf("storing %.2f to the address %p\n", inches, inPtr);
        *inPtr = inches;
    }

    
}





int main(int argc, const char * argv[]) {
    
//    double pi = 3.14;
//    double integerPart;
//    double fractionPart;
//
//    // pass the address of integerPart as an argument
//    fractionPart = modf(pi, &integerPart);
//
//    // find the value stored in integerPart
//    printf("integerpart = %.0f, fractionPart - %.2f\n", integerPart, fractionPart);
    
    double meters = 3.0;
    unsigned int feet;
    double inches;
    
    
    
    
    metersToFeetAndInces(meters, &feet, &inches);
    printf("%.1f meters is equal to %d feet and %.1f icnhes.", meters, feet, inches);
    
    return 0;
}
