//
//  ViewController.h
//  P03UsoTextField
//
//  Created by Esteban Davila on 14/10/26.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *text_n1;
@property (weak, nonatomic) IBOutlet UITextField *text_n2;
@property (weak, nonatomic) IBOutlet UILabel *label_resultado;

- (IBAction)metodo_sumar:(id)sender;
- (IBAction)metodoCerrar:(id)sender;

@end
