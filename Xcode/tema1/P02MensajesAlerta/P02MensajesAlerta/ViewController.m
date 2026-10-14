//
//  ViewController.m
//  P02MensajesAlerta
//
//  Created by Esteban Davila on 12/10/26.
//

#import "ViewController.h"

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

- (IBAction)miMetodo:(id)sender {
    // Se crea un mensaje de alerta para mostrar al usuario.
    UIAlertController *alert = [UIAlertController
        alertControllerWithTitle:@"¡Bienvenido al Mundo Mac!"
        message:@"¡En hora buena! Felicidades por desarrollar programas para iPhone, iPad y iPod"
        preferredStyle:UIAlertControllerStyleAlert];

    [alert addAction:[UIAlertAction
        actionWithTitle:@"¡Ocultar Mensaje!"
        style:UIAlertActionStyleCancel
        handler:nil]];

    [self presentViewController:alert animated:YES completion:nil];
}

@end
