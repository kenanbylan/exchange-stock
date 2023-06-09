//
//  AppButton.swift
//  ExchangeStock
//
//  Created by Kenan Baylan on 13.03.2023.
//

import UIKit




@IBDesignable
class AppButton : UIButton {
    
    
    var borderWidth: CGFloat = 2.0
    var borderColor = UIColor.systemBlue.cgColor
    

      @IBInspectable var titleText: String? {
          didSet {
              self.setTitle(titleText, for: .normal)
              self.setTitleColor(UIColor.black,for: .normal)
          }
      }
    
    
    
    override init(frame: CGRect){
           super.init(frame: frame)
       }

    
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }

       override func layoutSubviews() {
           super.layoutSubviews()
           setup()
       }

       func setup() {
           self.clipsToBounds = true
           self.layer.cornerRadius = self.frame.size.width / 2.0
           self.layer.borderColor = borderColor
           self.layer.borderWidth = borderWidth
       }
    
    
    
    
}
