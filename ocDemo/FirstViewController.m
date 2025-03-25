#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  self.view.backgroundColor = [UIColor whiteColor];

  // 消息中心
  UIButton *messageCenterButton = [UIButton buttonWithType:UIButtonTypeSystem];
  [messageCenterButton setTitle:@"消息中心" forState:UIControlStateNormal];
  [messageCenterButton addTarget:self action:@selector(messageCenterButtonTapped) forControlEvents:UIControlEventTouchUpInside];
  messageCenterButton.translatesAutoresizingMaskIntoConstraints = NO;

  // 我的动态
  UIButton *myDynamicButton = [UIButton buttonWithType:UIButtonTypeSystem];
  [myDynamicButton setTitle:@"我的动态" forState:UIControlStateNormal];
  [myDynamicButton addTarget:self action:@selector(myDynamicButtonTapped) forControlEvents:UIControlEventTouchUpInside];
  myDynamicButton.translatesAutoresizingMaskIntoConstraints = NO;

  // 会员互动
  UIButton *memberInteractionButton = [UIButton buttonWithType:UIButtonTypeSystem];
  [memberInteractionButton setTitle:@"会员互动" forState:UIControlStateNormal];
  [memberInteractionButton addTarget:self action:@selector(memberInteractionButtonTapped) forControlEvents:UIControlEventTouchUpInside];
  memberInteractionButton.translatesAutoresizingMaskIntoConstraints = NO;

  UIStackView *stackView = [[UIStackView alloc] initWithArrangedSubviews:@[ messageCenterButton, myDynamicButton, memberInteractionButton ]];
  stackView.axis = UILayoutConstraintAxisVertical;
  stackView.spacing = 10;
  stackView.alignment = UIStackViewAlignmentCenter;
  stackView.distribution = UIStackViewDistributionEqualSpacing;
  stackView.translatesAutoresizingMaskIntoConstraints = NO;
  [self.view addSubview:stackView];

  [NSLayoutConstraint activateConstraints:@[
    [stackView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor], [stackView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:20]
  ]];
}

// 我的动态
- (void)myDynamicButtonTapped {
//  MyDynamicViewController *viewController = [[MyDynamicViewController alloc] init];
//  [self.navigationController pushViewController:viewController animated:YES];
}

@end
