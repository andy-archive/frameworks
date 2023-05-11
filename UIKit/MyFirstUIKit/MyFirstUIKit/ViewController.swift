//
//  ViewController.swift
//  MyFirstUIKit
//
//  Created by Taekwon Lee on 2023/05/11.
//

import UIKit

class ViewController: UIViewController { // ViewController 클래스

    // control + drag
    @IBOutlet weak var mainLabel: UILabel! // 변수 선언
    
    override func viewDidLoad() { // 함수 실행
        super.viewDidLoad()
    }

    // Type: UIButton
    // Event: Touch Up Inside
    @IBAction func pressedButton(_ sender: UIButton) {
        // 버튼 클릭 시 UILabel!.text를 변경
        mainLabel.text = "Welcome!"
        
        // 버튼 클릭 시 UILabel!.backgroundColor를 변경
//        mainLabel.backgroundColor = UIColor.gray
        
        // colorLiteral 대신 #colorLiteral(
        mainLabel.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        // #imageLiteral(
        
        mainLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        // option key + trackpad click -> 해당 속성에 대한 정의 조회
        mainLabel.textAlignment = NSTextAlignment.right
    }
    
}

