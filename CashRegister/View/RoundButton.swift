
import UIKit

class RoundButton: UIButton {

    
    override
    init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
//        layer.cornerRadius = layer.frame.height/2
        layer.cornerRadius = 20;
    }
    
}
