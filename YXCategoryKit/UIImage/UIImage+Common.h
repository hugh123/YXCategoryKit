//
//  UIImage+Common.h
//  Coding_iOS
//
//  Created by 王 原闯 on 14-8-4.
//  Copyright (c) 2014年 Coding. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AssetsLibrary/AssetsLibrary.h>


@interface UIImage (Common)

+(UIImage *)imageWithColor:(UIColor *)aColor;
+(UIImage *)imageWithColor:(UIColor *)aColor withFrame:(CGRect)aFrame;
-(UIImage*)scaledToSize:(CGSize)targetSize;
-(UIImage*)scaledToSize:(CGSize)targetSize highQuality:(BOOL)highQuality;
-(UIImage*)scaledToMaxSize:(CGSize )size;
+ (UIImage *)fullResolutionImageFromALAsset:(ALAsset *)asset;
+ (UIImage *)fullScreenImageALAsset:(ALAsset *)asset;

+ (UIImage *)imageWithFileType:(NSString *)fileType;

/**
 *  生成二维码
 *
 *  @param qrString        二维码中带的字符串
 *  @param scale           缩放
 *  @param color           颜色
 *  @param backgroundColor 背景色
 *
 *  @return 二维码
 */
+ (UIImage *)mlb_generateQRCodeImageWithString:(NSString *)qrString scale:(CGFloat)scale color:(UIColor *)color backgroundColor:(UIColor *)backgroundColor;

/**
 *  生成条形码
 *
 *  @param codeString      条形码中的数字
 *  @param scale           缩放
 *  @param color           颜色
 *  @param backgroundColor 背景色
 *
 *  @return 条形码
 */
+ (UIImage *)mlb_generateBarcodeImageWithString:(NSString *)codeString scale:(CGFloat)scale color:(UIColor *)color backgroundColor:(UIColor *)backgroundColor;

+ (UIImage *)captureView:(UIView *)view;

+ (UIImage *)renderImageFromView:(UIView *)view withRect:(CGRect)frame transparentInsets:(UIEdgeInsets)insets;

- (UIImage *)fixedOrientation;

- (UIImage *)rotatedImage;

@end
