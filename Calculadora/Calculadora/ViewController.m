//
//  ViewController.m
//  Calculadora
//
//  Created by IOS 5 on 26/11/12.
//  Copyright (c) 2012 Tecnobits. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    char op;
    int currentNumber;
    BOOL fristOperand;
    BOOL isNumerator;
    Calculator *myCalculator;
    NSMutableString *displayString;
}
@synthesize display;

- (void)viewDidLoad
{
    //[super viewDidLoad];
    fristOperand=YES;
    isNumerator=YES;
    displayString=[NSMutableString stringWithCapacity:40];
    myCalculator=[[Calculator alloc]init];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)processDigit:(int) digit{
    currentNumber=currentNumber*10+digit;
    [displayString appendString:
     [NSString stringWithFormat:@"%i",digit]];
    display.text=displayString;
}
-(void)processOP:(char) theOp{
    NSString *opStr;
    op=theOp;
    switch (op) {
        case '+':
            opStr=@"+";
            break;
         
        case '-':
            opStr=@"-";
            break;
            
        case '*':
            opStr=@"x";
            break;
            
        case '/':
            opStr=@"%";
            break;
    
        default:
            break;
    }
    [self storeFraPart];
    fristOperand=NO;
    isNumerator=YES;
    [displayString appendString:opStr];
    display.text=displayString;
}

-(void)storeFraPart{
    if (fristOperand) {
        if (isNumerator) {
            myCalculator.operand1.numerator=currentNumber;
            myCalculator.operand1.denominator=1; //en caso por ejemplo 3* 4/5=
        }
        else
            myCalculator.operand1.denominator=currentNumber;
    }
    else if (isNumerator){
        myCalculator.operand2.numerator=currentNumber;
        myCalculator.operand2.denominator=1; //en casopor ejemplo 3/2 * 4=
    }
    else{
        myCalculator.operand2.denominator=currentNumber;
        fristOperand=YES;
    }
    currentNumber=0;
}

//Teclas numericas
-(IBAction)clickDigit:(UIButton *)sender{
    int digit=sender.tag;
    [self processDigit:digit];
}

//Teclas de operaciones aritmeticas
-(IBAction)clickPlus{
    [self processOP:'+'];
}
-(IBAction)clickMinus{
    [self processOP:'-'];
}
-(IBAction)clickMultiply{
    [self processOP:'*'];
}
-(IBAction)clickDivide{
    [self processOP:'/'];
}

//Otras teclas
-(IBAction)clickOver{
    [self storeFraPart];
    isNumerator=NO;
    
    [displayString appendString:@"/"];
    display.text=displayString;
}
-(IBAction)clickEquals{
    if (fristOperand==NO) {
        [self storeFraPart];
        [myCalculator performOperation:op];
        
        [displayString appendString:@"="];
        [displayString appendString:[myCalculator.accumulator convertToString]];
        display.text=displayString;
        
        currentNumber=0;
        isNumerator=YES;
        fristOperand=YES;
        [displayString setString:@""];
    }
}
-(IBAction)clickClear{
    isNumerator=YES;
    fristOperand=YES;
    currentNumber=0;
    [myCalculator clear];
    
    [displayString setString:@""];
    display.text=displayString;
}
-(IBAction)clickOmgbbq{
    isNumerator=YES;
    fristOperand=YES;
    currentNumber=0;
    [myCalculator clear];
    
    [displayString setString:@"OMGBBQ!!!"];
    display.text=displayString;
}
@end
