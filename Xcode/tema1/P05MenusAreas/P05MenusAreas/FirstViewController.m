//
//  FirstViewController.m
//  P05MenusAreas
//
//  Created by Esteban Davila on 14/10/26.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)botonArea:(id)sender {

    // Se obtiene el valor del radio.
    int radio = [_textCirculo.text intValue];

    // Se realiza el cálculo.
    float area = 3.1416 * radio * radio;

    // Se muestra el resultado en la caja de texto.
    _textArea.text = [[NSNumber numberWithFloat:area] stringValue];
}

@end
