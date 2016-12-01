//The MIT License (MIT)
//
//Copyright (c) 2016 Stanly Moses <stanlyhardy@yahoo.com>
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in all
//copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//SOFTWARE.


#import "FlareView.h"

@implementation FlareView

static FlareView *sharedFlareViewCenter = nil;

+ (FlareView *)sharedCenter {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{ // make sure sharedCenter has been initialed once in a life time
        if (!sharedFlareViewCenter) {
            sharedFlareViewCenter = [[super allocWithZone:NULL] init];
        }
    });
    return sharedFlareViewCenter;
}

-(void) flarify: (UIView* ) chilView inParentView:(UIView*) rootView withColor : (UIColor *)fillColor {
    
    chilView.userInteractionEnabled = NO; // prevent user presses continuously
    flareColor = fillColor;
    chilView.transform = CGAffineTransformMakeTranslation(0, 20);
    [UIView animateWithDuration:0.4 delay:0.0 usingSpringWithDamping:0.2 initialSpringVelocity:1.0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        chilView.transform = CGAffineTransformMakeScale(0.01, 0.01);
        
    } completion:^(BOOL finished){
        UIView* vortexView = [[UIView alloc] initWithFrame:CGRectMake(chilView.frame.origin.x, chilView.frame.origin.y, chilView.frame.size.width, chilView.frame.size.height)];
        
        CAShapeLayer *vortexLayer = [CAShapeLayer layer];
        vortexView.bounds = chilView.bounds;
        //set colors
        [vortexLayer setStrokeColor:[flareColor CGColor]];
        [vortexLayer setFillColor:[[UIColor clearColor] CGColor]];
        [vortexLayer setPath:[[UIBezierPath bezierPathWithOvalInRect:vortexView.bounds] CGPath]];
        [vortexView.layer addSublayer:vortexLayer];
        [rootView addSubview:vortexView];
        
        //Animate circle
        [vortexView setTransform:CGAffineTransformMakeScale(0, 0)];
        [UIView animateWithDuration:1 animations:^{
            [vortexView setTransform:CGAffineTransformMakeScale(1.3, 1.3)];
        } completion:^(BOOL finished) {
            vortexView.hidden = YES;
            //start next animation
            [self createFlares:chilView rootView:rootView];
        }];
        
    }];
    
}

-(void) createFlares: (UIView*) chilView rootView: (UIView *) rootView{
    
    
    [chilView setTransform:CGAffineTransformMakeScale(0, 0)];
    //animate icon
    [UIView animateWithDuration:0.3/1.5 animations:^{
        chilView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.1, 1.1);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.3/2 animations:^{
            chilView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.9, 0.9);
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.3/2 animations:^{
                chilView.transform = CGAffineTransformIdentity;
            }];
        }];
    }];
    
    
    //add circles around the icon
    int numberOfFlares = 20;
    CGPoint center = chilView.center;
    float radius= 55;
    BOOL isBurlyFlare = YES;;
    
    for (int i = 0; i<numberOfFlares; i++) {
        
        //x(t) = r cos(t) + j => r = radius; t= M_PI/numberOfCircles*i*2; j = center.x
        //y(t) = r sin(t) + j => r = radius; t= M_PI/numberOfCircles*i*2; j = center.y
        
        
        float x = radius*cos(M_PI/numberOfFlares*i*2) + center.x;
        float y = radius*sin(M_PI/numberOfFlares*i*2) + center.y;
        
        float circleRadius = 10;
        if (isBurlyFlare) {
            circleRadius = 5;
            isBurlyFlare = NO;
        }else{
            isBurlyFlare = YES;
        }
        
        UIView* vortexView = [[UIView alloc] initWithFrame:CGRectMake(x, y, circleRadius, circleRadius)];
        CAShapeLayer *circleLayer = [CAShapeLayer layer];
        [circleLayer setStrokeColor:[flareColor CGColor]];
        [circleLayer setFillColor:[flareColor CGColor]];
        [circleLayer setPath:[[UIBezierPath bezierPathWithOvalInRect:vortexView.bounds] CGPath]];
        [vortexView.layer addSublayer:circleLayer];
        [rootView addSubview:vortexView];
        
        //animate circles
        [UIView animateWithDuration:0.8 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            [vortexView setTransform:CGAffineTransformMakeTranslation(radius/3*cos(M_PI/numberOfFlares*i*2), radius/3*sin(M_PI/numberOfFlares*i*2))];
            [vortexView setTransform:CGAffineTransformScale(vortexView.transform, 0.01, 0.01)];
        } completion:^(BOOL finished) {
            [vortexView setTransform:CGAffineTransformMakeScale(0, 0)];
            [UIView animateWithDuration:0.2 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
                // animate it to the identity transform (100% scale)
                chilView.transform = CGAffineTransformIdentity;
            } completion:^(BOOL finished){
                // if you want to do something once the animation finishes, put it here
                chilView.userInteractionEnabled = YES;
            }];
        }];
        
        
    }
}
@end
