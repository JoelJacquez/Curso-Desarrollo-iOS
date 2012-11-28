//
//  ViewController.m
//  Redes Sociales
//
//  Created by IOS 5 on 27/11/12.
//  Copyright (c) 2012 Tecnobits. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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
-(IBAction)oneSocialClick:(id)sender{
    NSString *serviceType;
    
    switch ([sender tag]) {
        case 0:
            serviceType = SLServiceTypeTwitter;
            break;
        case 1:
            serviceType=SLServiceTypeFacebook;
            break;
            
        default:
            break;
    }
    if ([SLComposeViewController isAvailableForServiceType:serviceType]) {
        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:serviceType];
        
        SLComposeViewControllerCompletionHandler myBlock = ^(SLComposeViewControllerResult result){
            if (result == SLComposeViewControllerResultCancelled) {
                NSLog(@"Se Cancelo");
            }
            else{
                NSLog(@"Fue exitoso");
            }
            [controller dismissViewControllerAnimated:YES completion:Nil];
        };
        controller.completionHandler=myBlock;
        [controller setInitialText:@"Escribe algo"];
        [controller addURL:[NSURL URLWithString:@""]];
        [controller addImage:[UIImage imageNamed:@""]];
        
        [self presentViewController:controller animated:YES completion:Nil];
        
    }
    else{
        NSLog(@"No esta disponible");
    }
}
-(IBAction)twoSocialClick:(id)sender{
    NSString *textoToShare = @"Escribe algo";
    UIImage *imageToShare = [UIImage imageNamed:@""];
    NSURL *url=[NSURL URLWithString:@""];
    
    NSArray *activityItems = [[NSArray alloc] initWithObjects:textoToShare, imageToShare, url, nil];
    
    UIActivity *activity = [[UIActivity alloc]init];
    
    NSArray *applicationActivities = [[NSArray alloc] initWithObjects:activity, nil];
    UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:applicationActivities];
    
    [self presentViewController:activityVC animated:YES completion:Nil];
}

@end
