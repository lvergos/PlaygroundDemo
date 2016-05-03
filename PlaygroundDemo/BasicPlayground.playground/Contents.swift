import UIKit
import XCPlayground

var str = "Hello, playground"



var i = 2

i = i + i
let view = UIView()
view.frame = CGRectMake(0, 0, 200, 200)
view.backgroundColor = UIColor.yellowColor()

let image = UIImage(named: "melon.jpg")
let imageView = UIImageView()
imageView.image = image
imageView.frame = CGRectMake(0, 0, 300, 300)

XCPlaygroundPage.currentPage.liveView = imageView