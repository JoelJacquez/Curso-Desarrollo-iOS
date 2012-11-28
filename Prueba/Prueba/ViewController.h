//
//  ViewController.h
//  Prueba
//
//  Created by IOS 5 on 27/11/12.
//  Copyright (c) 2012 Tecnobits. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    UILabel *label;
    UITextField *texField;
}
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UITextField *textField;

-(IBAction)deleteText:(id)sender;
-(IBAction)sendText:(id)sender;

@end
