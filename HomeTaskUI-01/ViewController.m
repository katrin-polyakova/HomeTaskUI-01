//
//  ViewController.m
//  HomeTaskUI-01
//
//  Created by Kate Polyakova on 3/16/15.
//  Copyright (c) 2015 Kate Polyakova. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonRed;
@property (weak, nonatomic) IBOutlet UIButton *buttonGreen;
@property (weak, nonatomic) IBOutlet UIButton *buttonBlue;
@property (weak, nonatomic) IBOutlet UISwitch *switchAll;
@property (weak, nonatomic) IBOutlet UISlider *sliderRed;
@property (weak, nonatomic) IBOutlet UISlider *sliderGreen;
@property (weak, nonatomic) IBOutlet UISlider *sliderBlue;
@property (weak, nonatomic) IBOutlet UILabel *labelSliderRedValue;
@property (weak, nonatomic) IBOutlet UILabel *labelSliderGreenValue;
@property (weak, nonatomic) IBOutlet UILabel *labelSliderBlueValue;
@property (weak, nonatomic) IBOutlet UILabel *labelColorChange;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.buttonRed.backgroundColor = [UIColor redColor];
    [self.buttonRed.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    [self.buttonRed.layer setBorderWidth:1.2f];
    [self.buttonRed.layer setCornerRadius:8];
    
    self.buttonGreen.backgroundColor = [UIColor greenColor];
    [self.buttonGreen.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    [self.buttonGreen.layer setBorderWidth:1.2f];
    [self.buttonGreen.layer setCornerRadius:8];
    
    self.buttonBlue.backgroundColor = [UIColor blueColor];
    [self.buttonBlue.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    [self.buttonBlue.layer setBorderWidth:1.2f];
    [self.buttonBlue.layer setCornerRadius:8];
    
    self.labelSliderRedValue.text = [NSString stringWithFormat:@"%.f", self.sliderRed.value];
    self.labelSliderGreenValue.text = [NSString stringWithFormat:@"%.f", self.sliderGreen.value];
    self.labelSliderBlueValue.text = [NSString stringWithFormat:@"%.f", self.sliderBlue.value];
    
    [self.labelColorChange.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    [self.labelColorChange.layer setBorderWidth:1.5f];
    [self.labelColorChange.layer setCornerRadius:5];
    self.labelColorChange.text = nil;
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)buttonBorder {
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonRedPress:(id)sender {
    [self.view setBackgroundColor:[UIColor redColor]];
}

- (IBAction)buttonGreenPress:(id)sender {
    [self.view setBackgroundColor:[UIColor greenColor]];
}

- (IBAction)buttonBluePress:(id)sender {
    [self.view setBackgroundColor:[UIColor blueColor]];
}


- (IBAction)onSlideRed:(id)sender {
    self.labelSliderRedValue.text = [NSString stringWithFormat:@"%f", self.sliderRed.value];
    [self changeLabelColor];
}

- (IBAction)onSlideGreen:(id)sender {
    self.labelSliderGreenValue.text = [NSString stringWithFormat:@"%f", self.sliderGreen.value];
    [self changeLabelColor];
}

- (IBAction)onSlideBlue:(id)sender {
    self.labelSliderBlueValue.text = [NSString stringWithFormat:@"%f", self.sliderBlue.value];
    [self changeLabelColor];
}

-(void)changeLabelColor {
    self.labelColorChange.backgroundColor = [UIColor colorWithRed:self.sliderRed.value green:self.sliderGreen.value blue:self.sliderBlue.value alpha:1];
}

- (IBAction)onSwitchChanged:(UISwitch*)sender {
    
    BOOL switchState = [sender isOn];
    
    self.buttonRed.enabled = switchState;
    self.buttonRed.backgroundColor = switchState ? [UIColor redColor] : [UIColor lightGrayColor];
    
    self.buttonGreen.enabled = switchState;
    self.buttonGreen.backgroundColor = switchState ? [UIColor greenColor] : [UIColor lightGrayColor];
    
    self.buttonBlue.enabled = switchState;
    self.buttonBlue.backgroundColor = switchState ? [UIColor blueColor] : [UIColor lightGrayColor];
    
}




@end
