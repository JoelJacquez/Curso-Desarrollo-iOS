//
//  ViewController.h
//  CarSample
//
//  Created by IOS 5 on 26/11/12.
//  Copyright (c) 2012 Tecnobits. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CarClass.h"

@interface ViewController : UIViewController
@property (nonatomic, retain) CarClass *myCar;
@property (nonatomic, retain) IBOutlet UIButton *sampleButton;
@property (nonatomic, retain) IBOutlet UIImageView *imageView;

-(IBAction)actionCar:(id)sender;

@end
