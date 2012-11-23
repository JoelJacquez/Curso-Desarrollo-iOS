//
//  ViewController.m
//  HolaRQPortillo
//
//  Created by Joel Jacquez @cryptt3r on 21/11/12.
//  Copyright (c) 2012 tecnobits.net. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize label;

- (void)viewDidLoad
{
    self.label.text=@"Hola RQPortillo";
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
