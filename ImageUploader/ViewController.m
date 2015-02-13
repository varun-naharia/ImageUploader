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
@synthesize imgPicker;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.imgPicker = [[UIImagePickerController alloc] init];
    self.imgPicker.allowsEditing = YES;
    self.imgPicker.delegate = self;
    self.imgPicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    // UIImagePickerControllerSourceTypeCamera : to load the camera
    //UIImagePickerControllerSourceTypePhotoLibrary : to load images from library
    //UIImagePickerControllerSourceTypeSavedPhotosAlbum : loads all images saved
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)grabImage {
    [self presentViewController:self.imgPicker animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)img editingInfo:(NSDictionary *)editInfo {
    image.image = img;
    [[picker parentViewController] dismissModalViewControllerAnimated:YES];
}

@end
