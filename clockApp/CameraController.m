//
//  CameraController.m
//  clockApp
//
//  Created by 山崎 宗路 on 2012/12/13.
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




- (IBAction)takePicture:(id)sender {
    // カメラが利用できるか確認
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        
        UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
        // カメラかライブラリからの読み込み指定。カメラを指定
        [imagePickerController setSourceType:UIImagePickerControllerSourceTypeCamera];
        
        // トリミングなどを行うか否か
        [imagePickerController setAllowsEditing:NO];
        // Delegateをセット
        [imagePickerController setDelegate:self];
        
        // アニメーションをしてカメラUIを起動
        [self presentViewController:imagePickerController animated:YES completion:nil];
    }
}

@end