//
//  ViewController.m
//  P03UsoTextField
//
//  Created by Esteban Davila on 14/10/26.
//

#import "ViewController.h"
#import "AppDelegate.h"
#include <stdlib.h>

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)metodo_sumar:(id)sender {

    // Se declaran variables numéricas y se convierte texto a entero.
    int n1 = [_text_n1.text intValue];
    int n2 = [_text_n2.text intValue];

    // Se realiza el cálculo.
    int res = n1 + n2;

    // Se muestra el resultado en la etiqueta.
    _label_resultado.text = [[NSNumber numberWithInt:res] stringValue];
}

- (IBAction)metodoCerrar:(id)sender {
    exit(0);
}

@end
