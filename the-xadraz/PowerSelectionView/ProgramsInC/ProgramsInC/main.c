//
//  main.c
//  ProgramsInC
//
//  Created by Raul Braga on 06/12/22.
//

#include <stdio.h>

float absoluteValue(float);
float sqroot(float);

float absoluteValue(float x){
    
    if (x < 0)
        return -1 * x;
    else
        return x;
    
}

float sqroot(float number){
    
    const float epsilon = 0.0001;
    float guess = 1.;
    
    while (absoluteValue(guess * guess - number)  >= epsilon)
        guess = (number / guess + guess) / 2;
    
    return guess;
    
}


int main(void) {
    
    
    printf("A raiz quadrada de 2 é %lf\n", sqroot(2));
    
    
    return 0;
}
