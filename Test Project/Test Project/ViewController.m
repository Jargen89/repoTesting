//
//  ViewController.m
//  Test Project
//
//  Created by J.Vieira on 2015-02-03.
//  Copyright (c) 2015 J.Vieira. All rights reserved.
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
- (IBAction)openPrompt:(id)sender {
    UIButton *button = (UIButton*)sender;
    NSString *message;
    NSLog(@"Button Tag: %i", (int)[button tag]);
    switch ([button tag]) {
        case 10:
            message = @"Hello world";
            break;
        case 11:
            message = @"How you doin'?";
            break;
        case 12:
            message = @"How is it going?";
            break;
        default:
            break;
    }
    UIAlertController *helloPrompt = [UIAlertController alertControllerWithTitle:@"Hello" message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okay = [UIAlertAction actionWithTitle:@"Dismiss" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        [helloPrompt dismissViewControllerAnimated:YES completion:nil];
    }];
    [helloPrompt addAction:okay];
    [self presentViewController:helloPrompt animated:YES completion:nil];
}

@end
