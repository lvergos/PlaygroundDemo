import UIKit
import XCPlayground
import SnapKit

// using classes in storyboard

let storyBoard = UIStoryboard(name: "Main", bundle:nil)
let viewController = storyBoard.instantiateViewControllerWithIdentifier("Class1")

XCPlaygroundPage.currentPage.liveView = viewController
