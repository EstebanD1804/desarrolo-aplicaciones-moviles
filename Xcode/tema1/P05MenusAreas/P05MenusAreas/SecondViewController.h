//
//  SecondViewController.h
//  P05MenusAreas
//
//  Created by Esteban Davila on 14/10/26.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textCuadrado;
@property (weak, nonatomic) IBOutlet UITextField *textArea;

- (IBAction)botonArea:(id)sender;

@end
