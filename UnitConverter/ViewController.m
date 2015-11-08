//
//  ViewController.m
//  UnitConverter
//
//  Created by Robin Fabre on 08/11/2015.
//  Copyright © 2015 Robin Fabre. All rights reserved.
//

#import "ViewController.h"

//the three functions to convert

//convert metre to inch
double convertUnitOneToUnitTwo(double unitOneValue){
    double unitTwoValue;
    
    unitTwoValue = (unitOneValue*100)/2.54;
    return unitTwoValue;
}
//convert metre to Foot

double convertUnitOneToUnitThree(double unitOneValue){
    double unitThreeValue;
    
    unitThreeValue = unitOneValue*3.2809;
    return unitThreeValue;
}
//convert metre to Yard

double convertUnitOneToUnitFour(double unitOneValue){
    double unitFourValue;
    
    unitFourValue = unitOneValue/0.9144;
    return unitFourValue;
}


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *inputfield;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControler;


@property (weak, nonatomic) IBOutlet UILabel *outputField;


@end

@implementation ViewController

- (IBAction)updateButton:(id)sender {

    NSMutableString *buf = [NSMutableString new];
    
    double userInput = [self.inputfield.text doubleValue];
    
//the three conditions
//if inch selected
    
    if(self.segmentControler.selectedSegmentIndex == 0){
        
        double unitTwoValue = convertUnitOneToUnitTwo(userInput);
        
        [buf appendString: [@(unitTwoValue) stringValue]];

    }
//if foot selected

    else if(self.segmentControler.selectedSegmentIndex == 1){
        double unitThreeValue = convertUnitOneToUnitThree(userInput);
        
        [buf appendString: [@(unitThreeValue) stringValue]];
    }
//if yard selected

    else {
        double unitFourValue = convertUnitOneToUnitFour(userInput);
        
        [buf appendString: [@(unitFourValue) stringValue]];

    }
    
    
    self.outputField.text = buf;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
