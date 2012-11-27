//
//  ViewController.m
//  CarSample
//
//  Created by IOS 5 on 26/11/12.
//  Copyright (c) 2012 Tecnobits. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController
@synthesize myCar;
@synthesize sampleButton;
@synthesize imageView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    if (self.myCar==nil)
        myCar=[[CarClass alloc]init];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillAppear:(BOOL)animated{
    self.imageView.backgroundColor=[UIColor blackColor];
    self.imageView.clipsToBounds=YES;
    [super viewWillAppear:animated];
}
-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
}
#pragma mark - Car Method
-(IBAction)actionCar:(id)sender{
    NSLog(@"sender:%@",sender);
    [UIView beginAnimations:@"eventAnimation" context:NULL];
    [UIView setAnimationDuration:2];
    UIButton *btn=(UIButton *) sender;
    if (btn.tag==0) {
        //Conducir
        [UIView setAnimationTransition:UIViewAutoresizingFlexibleBottomMargin forView:self.imageView cache:NO];
        self.imageView.contentMode =UIViewContentModeCenter;
        self.imageView.image = [self.myCar driveCar];
    }
    else if (btn.tag==1){
        //Lavar
        self.imageView.contentMode=UIViewContentModeScaleAspectFit;
        [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.imageView cache:NO];
        self.imageView.image=[self.myCar washCar];
    }
    else if (btn.tag==2){
        //Servicio
        self.imageView.contentMode=UIViewContentModeScaleAspectFit;
        [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:self.imageView cache:NO];
        self.imageView.image=[self.myCar serviceCar];
    }
    else{
        //Fuel
        self.imageView.contentMode=UIViewContentModeScaleAspectFit;
        [UIView setAnimationTransition:UIViewAnimationOptionTransitionFlipFromTop forView:self.imageView cache:NO];
        self.imageView.image=[self.myCar fuelCar];
    }
    [UIView commitAnimations];
}
@end
