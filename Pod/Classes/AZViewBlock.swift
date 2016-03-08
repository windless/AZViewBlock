import UIKit

public extension UIView {
    func open(block: UIView -> Void) {
        block(self)
    }
    
    func view<V: UIView>(type: V.Type, block: V -> Void) -> V {
        let subview = type.init()
        self.addSubview(subview)
        block(subview)
        return subview
    }
    
    func view<V: UIView>(subview: V, block: V -> Void) -> V {
        self.addSubview(subview)
        block(subview)
        return subview
    }
    
    func view(block: UIView -> Void) -> UIView {
        return self.view(UIView.self, block: block)
    }
    
    func label(block: UILabel -> Void) -> UILabel {
        return self.view(UILabel.self, block: block)
    }
    
    func button(type: UIButtonType = .System, block: UIButton -> Void) -> UIButton {
        let button = UIButton(type: type)
        return self.view(button, block: block)
    }
    
    func imageView(block: UIImageView -> Void) -> UIImageView {
        return self.view(UIImageView.self, block: block)
    }
    
    func textField(block: UITextField -> Void) -> UITextField {
        return self.view(UITextField.self, block: block)
    }
    
    func scrollView(block: UIScrollView -> Void) -> UIScrollView {
        return self.view(UIScrollView.self, block: block)
    }
    
    
    func tableView(style: UITableViewStyle, block: UITableView -> Void) -> UITableView {
        let tableView = UITableView(frame: CGRectZero, style: style)
        return self.view(tableView, block:block)
    }
}