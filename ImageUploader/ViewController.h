//
//  ViewController.h
//  ImageUploader
//
//  Created by Varun Naharia on 13/02/15.
//  Copyright (c) 2015 tech3i. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
    UIImagePickerController *imagePicker;
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)btnClicked:(id)sender;

@end

