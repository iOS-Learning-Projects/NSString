//
//  main.m
//  Desafio NSString
//
//  Created by Eduardo Vital Alencar Cunha on 17/03/17.
//  Copyright © 2017 Vital. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char userInput[50];
        printf("Insira a primeira palavra: ");
        fgets(userInput, sizeof(userInput), stdin);
        NSString * word = [NSString stringWithUTF8String:userInput];
        unsigned long lengthWord = word.length - 1;

        printf("Insira a segunda palavra: ");
        fgets(userInput, sizeof(userInput), stdin);
        NSString * word2 = [NSString stringWithUTF8String:userInput];
        unsigned long lengthWord2 = word2.length - 1;

        if ([word isEqualToString:word2]) {
            printf("As strings são iguais e contém %lu caracteres.\n", lengthWord);
        } else {
            printf("As strings não são iguais e cada um contem respectivamente %lu e %lu caracteres.\n", lengthWord, lengthWord2);
        }

        char nome[50] = "";
        char email[50] = "email@mail.com";

        //printf("\nDigite o seu nome e o seu email:\n");
        //scanf("%40[0-9a-zA-Z ] %40[0-9a-zA-Z ]", nome, email);

        NSString * NSNome = [NSString stringWithUTF8String:nome];
        NSString * NSEmail = [NSString stringWithUTF8String:email];

        if (NSNome.length == 0) {
            printf("O campo nome deve ser preenchido\n");
        }
        if (NSEmail.length == 0) {
            printf("O campo email deve ser preenchido\n");
        }
    }
    return 0;
}
