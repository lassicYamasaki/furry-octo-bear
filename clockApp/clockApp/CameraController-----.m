//
//  CameraController.m
//  clockApp
//
//  Created by 山崎 宗路 on 2012/12/12.
//  Copyright (c) 2012年 山崎 宗路. All rights reserved.
//

#import "CameraController.h"

@implementation CameraController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonPush:(id)sender {
    self.cameralabel.text = @"cameraON!";
}

@end
