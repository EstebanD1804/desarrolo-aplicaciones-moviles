//
//  SecondViewController.m
//  P05MenusAreas
//
//  Created by Esteban Davila on 14/10/26.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)botonArea:(id)sender {

    // Se obtiene el valor del lado del cuadrado.
    int lado = [_textCuadrado.text intValue];

    // Se realiza el cálculo.
    int area = lado * lado;

    // Se muestra el resultado en la caja de texto.
    _textArea.text = [[NSNumber numberWithInt:area] stringValue];
}

@end
