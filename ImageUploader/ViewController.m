//
//  ViewController.m
//  ImageUploader
//
//  Created by Varun Naharia on 13/02/15.
//  Copyright (c) 2015 tech3i. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imageView;
- (IBAction)btnClicked:(id)sender {
    imagePicker.delegate = self;
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:imagePicker animated:YES completion:nil];
}
-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
}
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *image;
    NSURL *mediaURL;
    mediaURL = (NSURL *)[info valueForKey: UIImagePickerControllerMediaURL];
    image = (UIImage *) [info valueForKey:UIImagePickerControllerOriginalImage];
    
    imageView.image=image;
    [picker dismissViewControllerAnimated:YES completion:nil];
    
}
- (void)viewDidLoad {
    
    imagePicker = [[UIImagePickerController alloc]init];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
