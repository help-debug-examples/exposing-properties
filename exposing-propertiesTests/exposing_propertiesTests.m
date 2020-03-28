#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface ViewController (Testing)

@property (nonatomic, copy, nonnull, readwrite) NSString *somePrivateProperty;
@property (nonatomic, copy, nonnull, readwrite) NSString *somePublicProperty;

@end

@implementation ViewController

@end

@interface exposing_propertiesTests : XCTestCase

@end

@implementation exposing_propertiesTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // Test private property
    ViewController *viewController = [[ViewController alloc] init];
    viewController.somePublicProperty = @"hello";
    viewController.somePrivateProperty = @"hello";
    XCTAssertEqual(viewController.somePrivateProperty, @"hello");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
