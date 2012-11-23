//
//  main.m
//  ForPidiendoNumero
//
//  Created by Neko Multimedia 2 on 22/11/12.
//  Copyright (c) 2012 Tecnobits. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        int n, numeroTriangular, numero;
        NSLog(@"Numero que quieres saber");
        scanf("%i", &numero);
        numeroTriangular=0;
        NSLog(@"TABLA DE NUMERO TRIANGULARES");
        NSLog(@" n      Suma de 1 a N");
        NSLog(@"---    ---------------");
        for (n=1; n<=numero; n++) {
            numeroTriangular+=n;
            NSLog(@"%i         %i",n, numeroTriangular);
        }
    }
    return 0;
}

