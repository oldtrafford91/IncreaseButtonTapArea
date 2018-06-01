import UIKit

extension CGFloat {
  static func random() -> CGFloat {
    return CGFloat(arc4random()) / CGFloat(UInt32.max)
  }
}

extension UIColor {
  static func random() -> UIColor {
    return UIColor(red:   .random(),
                   green: .random(),
                   blue:  .random(),
                   alpha: 1.0)
  }
}

class ViewController: UIViewController {
  @IBOutlet weak var button: Button!
  override func viewDidLoad() {
    super.viewDidLoad()
    button.layer.borderColor = UIColor.random().cgColor
    button.layer.borderWidth = 1
  }
  @IBAction func changeButtonBorderColor(_ sender: UIButton) {
    sender.layer.borderColor = UIColor.random().cgColor
    sender.titleLabel?.textColor = UIColor.random()
    sender.backgroundColor = UIColor.random()
  }
}

