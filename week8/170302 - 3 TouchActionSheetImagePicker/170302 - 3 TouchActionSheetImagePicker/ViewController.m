//
//  ViewController.m
//  170302 - 3 TouchActionSheetImagePicker
//
//  Created by Park Jae Han on 2017. 3. 2..
//  Copyright © 2017년 Park Jae Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UIGestureRecognizerDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
}

- (UIImagePickerController *)pickImage {
    
    UIImagePickerController *camController = [[UIImagePickerController alloc] init];
    camController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    camController.mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    camController.allowsEditing = NO;
    camController.delegate = self;
    [self presentViewController:camController animated:YES completion:nil];

    return camController;
}

- (IBAction)tapped:(UITapGestureRecognizer *)sender {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"image" message:@"picker" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *okBtn = [UIAlertAction actionWithTitle:@"select photo" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        [self pickImage];
        
    }];
    
    UIAlertAction *cancelBtn = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:nil];
    
    [alertController addAction:okBtn];
    [alertController addAction:cancelBtn];
    [self presentViewController:alertController animated:YES completion:nil];
}



- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    
    NSLog(@"info %@", info);
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    self.imgView.image = image;
    
    [picker dismissViewControllerAnimated:YES completion:nil];
}


- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [picker dismissViewControllerAnimated:YES completion:nil];
}












- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
