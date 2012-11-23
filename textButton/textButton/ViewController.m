//
//  ViewController.m
//  textButton
//
//  Created by Joel Jacquez @cryptt3r on 21/11/12.
//  Copyright (c) 2012 IOS 5. All rights reserved.
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
#pragma mark
-(IBAction)borrarTexto:(id)sender{
    self.label.text=@"¿Con que Sueñas?";
}
-(IBAction)ponerNuestroTexto:(id)sender{
    self.label.text=self.textField.text;
    [self.textField resignFirstResponder];
    self.textField.text=@"";
}
@end
