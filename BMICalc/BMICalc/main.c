//
//  main.c
//  BMICalc
//
//  Created by Franklin on 3/30/21.
//

#include <stdio.h>

// Here is the declaration of the struct
//struct Person {
//    float heightInMeters;
//    int weightInKilos;
//};


// here is the declaration of the type person
typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person p){
    return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
}



int main(int argc, const char * argv[]) {
    // insert code here...
    
    //struct Person mikey;
    Person mikey;
    mikey.heightInMeters = 1.7;
    mikey.weightInKilos = 96;
    
    //struct Person aaron;
    Person aaron;
    aaron.heightInMeters = 1.97;
    aaron.weightInKilos = 84;
    
//    printf("Mikey is %.2f meters tall\n", mikey.heightInMeters);
//    printf("mike weighs %d kiograms\n", mikey.weightInKilos);
//    printf("aaron is %.2f meters tall\n", aaron.heightInMeters);
//    printf("aaron weighs %d kiograms\n", aaron.weightInKilos);
    
    float bmi;
    bmi = bodyMassIndex(mikey);
    printf("mikey has a BMI of %.2f\n", bmi);
    
    bmi = bodyMassIndex(aaron);
    printf("aaron has a BMI of %.f\n", bmi);
    
    
    
    
    return 0;
}
