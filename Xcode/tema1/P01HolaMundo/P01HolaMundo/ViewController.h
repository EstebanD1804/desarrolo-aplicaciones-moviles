// ViewController.h
// P01HolaMundo
//  Created by Esteban Davila on 09/10/26.


#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//Declaración de la variable label
@property (weak, nonatomic) IBOutlet UILabel *lab_mensaje;

//Declaración del metodo Hola Mundo
- (IBAction)MetodoHolaMundo:(id)sender;

@end
