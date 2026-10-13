// ViewController.m
// P01HolaMundo
//  Created by Esteban Davila on 09/10/26.

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

- (IBAction)MetodoHolaMundo:(id)sender {
    _lab_mensaje.text=@"Hola Mundo, Bienvenidos a MAC";
}

@end
