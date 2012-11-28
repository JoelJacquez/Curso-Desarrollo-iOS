//
//  ViewController.h
//  Calculadora
//
//  Created by IOS 5 on 26/11/12.
//  Copyright (c) 2012 Tecnobits. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calculator.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *display;

-(void)processDigit:(int) digit;
-(void)processOP:(char) theOp;
-(void)storeFraPart;

//Teclas numericas
-(IBAction)clickDigit:(UIButton *)sender;

//Teclas de operaciones aritmeticas
-(IBAction)clickPlus;
-(IBAction)clickMinus;
-(IBAction)clickMultiply;
-(IBAction)clickDivide;

//Otras teclas
-(IBAction)clickOver;
-(IBAction)clickEquals;
-(IBAction)clickClear;
-(IBAction)clickOmgbbq;
@end
