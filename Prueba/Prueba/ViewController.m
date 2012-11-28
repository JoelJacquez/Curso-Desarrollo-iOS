//
//  ViewController.m
//  Prueba
//
//  Created by IOS 5 on 27/11/12.
//  Copyright (c) 2012 Tecnobits. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize label;
@synthesize textField;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)deleteText:(id)sender{
    self.label.text=@"Tu texto va aquí";
}
-(IBAction)sendText:(id)sender{
    self.label.text=self.textField.text;
    self.textField.text=@"";
}

@end
