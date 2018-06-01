import UIKit

class Button: UIButton {
  override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
    let biggerFrame = bounds.insetBy(dx: -60, dy: -60)
    return biggerFrame.contains(point)
  }
}
