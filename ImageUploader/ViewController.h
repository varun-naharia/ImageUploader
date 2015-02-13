//
//  ViewController.h
//  ImageUploader
//
//  Created by Varun Naharia on 13/02/15.
//  Copyright (c) 2015 tech3i. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UINavigationControllerDelegate, UIImagePickerControllerDelegate> {
    
IBOutlet UIImageView *image;
IBOutlet UIButton *button;
UIImagePickerController *imgPicker;
    
}

@property (nonatomic, retain) UIImagePickerController *imgPicker;



@end

