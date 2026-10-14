//
//  FirstViewController.h
//  P05MenusAreas
//
//  Created by Esteban Davila on 14/10/26.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textCirculo;
@property (weak, nonatomic) IBOutlet UITextField *textArea;

- (IBAction)botonArea:(id)sender;

@end
