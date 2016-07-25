//
//  ViewController.m
//  UIViewController
//
//  Created by Divya sai Mekala on 7/23/16.
//  Copyright © 2016 Divya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//@property (nonatomic, weak) IBOutlet UILabel *valueLabel;
//@property (nonatomic, weak) IBOutlet UIStepper *stepper;
//- (IBAction)stepperValueChanged:(UIStepper *)sender;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel *label;

    label=[[UILabel alloc]initWithFrame:CGRectMake(50, 70, 50, 50)];//Set frame of label in your viewcontroller.
[label setText:@"label"];//Set text in label.
    [label setTextColor:[UIColor blackColor]];//Set text color in label.
    [label setTextAlignment:NSTextAlignmentCenter];//Set text alignment in label.
    [label setBaselineAdjustment:UIBaselineAdjustmentAlignBaselines];//Set line adjustment.
    [label setNumberOfLines:1];//Set number of lines in label.
    [self.view addSubview:label];//Add it to the view of your choice.
    
    
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(10, 180, 300, 40)];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.font = [UIFont systemFontOfSize:15];
    textField.placeholder = @"enter";
    textField.autocorrectionType = UITextAutocorrectionTypeNo;
    textField.keyboardType = UIKeyboardTypeDefault;
    textField.returnKeyType = UIReturnKeyDone;
    textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    [self.view addSubview:textField];


 
   UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(40,260,300,40)];
    slider.minimumValue = 0.f;
    slider.maximumValue = 1.0f;
    slider.value = [[UIScreen mainScreen] brightness];
    [self.view addSubview:slider];
    
    
    UIActivityIndicatorView *activityIndicator = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    activityIndicator.center = CGPointMake(self.view.frame.size.width / 2.0, self.view.frame.size.height / 2.0);
    [self.view addSubview: activityIndicator];
    
    [activityIndicator startAnimating];
      [activityIndicator performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:30.0];

    

    
    
    UIStepper *stepper = [[UIStepper alloc] initWithFrame:CGRectMake(140, 400, 300, 200)];
    
    [stepper setMinimumValue:0];
    [stepper setMaximumValue:99];
    [self.view addSubview:stepper];
    [stepper setWraps:YES];
    [stepper setContinuous:NO];
    [stepper setStepValue:10];

}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
