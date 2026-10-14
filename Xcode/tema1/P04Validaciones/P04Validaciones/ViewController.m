//
//  ViewController.m
//  P04Validaciones
//
//  Created by Esteban Davila on 14/10/26.
//

#import "ViewController.h"
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

- (IBAction)validarContrasena:(id)sender {

    // Se establece la contraseña de acceso.
    NSString *clave = [NSString stringWithFormat:@"admin"];

    // Se valida la contraseña mediante una estructura if - else.
    if ([_textContrasena.text isEqualToString:clave]) {

        UIAlertController *alert = [UIAlertController
            alertControllerWithTitle:@"Validación de contraseña"
            message:@"La contraseña es correcta"
            preferredStyle:UIAlertControllerStyleAlert];

        [alert addAction:[UIAlertAction
            actionWithTitle:@"Acceso autorizado"
            style:UIAlertActionStyleDefault
            handler:nil]];

        [self presentViewController:alert
                          animated:YES
                        completion:nil];

    } else {

        UIAlertController *alert = [UIAlertController
            alertControllerWithTitle:@"Validación de contraseña"
            message:@"La contraseña es Incorrecta!!"
            preferredStyle:UIAlertControllerStyleAlert];

        [alert addAction:[UIAlertAction
            actionWithTitle:@"Favor de verificar sus datos"
            style:UIAlertActionStyleDefault
            handler:nil]];

        [self presentViewController:alert
                          animated:YES
                        completion:nil];
    }
}

- (IBAction)cancelaProceso:(id)sender {
    exit(0);
}

@end
