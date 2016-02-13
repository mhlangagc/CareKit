//
//  OCKEvaluationPlanViewController.m
//  CareKit
//
//  Created by Umer Khan on 2/2/16.
//  Copyright © 2016 carekit.org. All rights reserved.
//


#import "OCKEvaluationPlanViewController.h"
#import "OCKEvaluationTableViewController.h"


@implementation OCKEvaluationPlanViewController {
    OCKEvaluationTableViewController *_tableViewController;
}

+ (instancetype)evaluationPlanViewControllerWithCarePlanStore:(OCKCarePlanStore *)store
                                                     delegate:(id<OCKEvaluationTableViewDelegate>)delegate {
    return [[OCKEvaluationPlanViewController alloc] initWithCarePlanStore:store
                                                                 delegate:delegate];
}

- (instancetype)initWithCarePlanStore:(OCKCarePlanStore *)store
                             delegate:(id<OCKEvaluationTableViewDelegate>)delegate {
    _tableViewController = [[OCKEvaluationTableViewController alloc] initWithCarePlanStore:store
                                                                                  delegate:delegate];
    self = [super initWithRootViewController:_tableViewController];
    if (self) {
        _store = store;
    }
    return self;
}

- (void)setTitle:(NSString *)title {
    [super setTitle:title];
    self.topViewController.title = self.title;
}

@end
