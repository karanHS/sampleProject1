
//
//  TextViewController.swift
//  MVP_SAMPLE
//
//  Created by HappySanz Tech on 21/09/20.
//  Copyright © 2020 HappySanz Tech. All rights reserved.
//

import UIKit

class TextViewController: UIViewController {
    
    @IBOutlet weak var textFiled: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if let myImage = UIImage(named: "widget_icons-3"){
//            textFiled.withImage(direction: .Right, image: myImage, colorSeparator: UIColor.white, colorBorder: UIColor.black)
//        }
    }
}

extension UITextField {
//
//    enum Direction {
//        case Left
//        case Right
//    }
//
//    func withImage(direction: Direction, image: UIImage, colorSeparator: UIColor, colorBorder: UIColor){
//        let mainView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 34))
//        mainView.layer.cornerRadius = 5
//
//        let view = UIView(frame: CGRect(x: 0, y: 0, width: 50, height:34))
//        view.backgroundColor = .white
//        view.clipsToBounds = true
//        view.layer.cornerRadius = 5
//        view.layer.borderWidth = CGFloat(0.5)
//        view.layer.borderColor = colorBorder.cgColor
//        mainView.addSubview(view)
//
//        let imageView = UIImageView(image: image)
//        imageView.contentMode = .scaleAspectFit
//        imageView.frame = CGRect(x: 20.0, y: 5.0, width: 24.0, height: 24.0)
//        view.addSubview(imageView)
//
//        let seperatorView = UIView()
//        seperatorView.backgroundColor = colorSeparator
//        mainView.addSubview(seperatorView)
//
//        if(Direction.Left == direction){ // image left
//            seperatorView.frame = CGRect(x: 34, y: 0, width: 5, height: 34)
//            self.leftViewMode = .always
//            self.leftView = mainView
//        } else { // image right
//            seperatorView.frame = CGRect(x: 0, y: 0, width: 5, height: 34)
//            self.rightViewMode = .always
//            self.rightView = mainView
//        }
//
//        self.layer.borderColor = colorBorder.cgColor
//        self.layer.borderWidth = CGFloat(0.5)
//        self.layer.cornerRadius = 5
//    }
//
}
