//
//  ViewController.h
//  P04Validaciones
//
//  Created by Esteban Davila on 14/10/26.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)validarContrasena:(id)sender;
- (IBAction)cancelaProceso:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *textUsuario;
@property (weak, nonatomic) IBOutlet UITextField *textContrasena;

@end
