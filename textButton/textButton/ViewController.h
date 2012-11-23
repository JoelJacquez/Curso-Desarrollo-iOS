//
//  ViewController.h
//  textButton
//
//  Created by Joel Jacquez @cryptt3r on 21/11/12.
//  Copyright (c) 2012 IOS 5. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UILabel *label;
    UITextField *textField;
}
@property(nonatomic, strong) IBOutlet UILabel *label;
@property(nonatomic, strong) IBOutlet UITextField *textField;
//Accion del Boton cuando sea pulsado
-(IBAction)borrarTexto:(id)sender;
-(IBAction)ponerNuestroTexto:(id)sender;
@end
