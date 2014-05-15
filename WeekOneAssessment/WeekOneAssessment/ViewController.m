//
//  ViewController.m
//  WeekOneAssessment
//
//  Created by Don Bora on 5/13/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//


#import "ViewController.h"
#import "AnswerViewController.h"

@interface ViewController ()
@property(weak, nonatomic)IBOutlet UITextField *firstNumber;
@property (weak, nonatomic) IBOutlet UITextField *secondNumber;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    AnswerViewController *nextViewController = segue.destinationViewController;

    int numberOne = [self.firstNumber.text integerValue] ;
    int numberTwo = [self.secondNumber.text integerValue];
    int multiply = numberOne * numberTwo;

    nextViewController.answer.text = [NSString stringWithFormat:@"%d", multiply];


}


@end
