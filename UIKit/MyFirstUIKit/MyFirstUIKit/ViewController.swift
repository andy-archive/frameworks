//
//  ViewController.swift
//  MyFirstUIKit
//
//  Created by Taekwon Lee on 2023/05/11.
//

import UIKit

class ViewController: UIViewController { // ViewController 클래스

    // control + drag로 생성
    // Attribute: Interface Builder의 Outlet(배출할 수단)
    @IBOutlet weak var mainLabel: UILabel! // 변수 선언
    
    @IBOutlet weak var mainButton: UIButton!
    
    // 앱 실행 시 초기 화면을 나타내는 함수
    override func viewDidLoad() { // 함수 실행
        super.viewDidLoad()
        
        mainLabel.text = "Heyyy" // 기존의 Interface Builder를 덮어 쓴다.
        
        mainLabel.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)

    }

    // Interface Builder의 Action(동작) : 버튼 클릭 시 속성 변경
    // Type: UIButton
    // Event: Touch Up Inside
    @IBAction func pressedButton(_ sender: UIButton) {
        // 버튼 클릭 시 UILabel!.text를 변경
        mainLabel.text = "Welcome!"
        
        // 버튼 클릭 시 UILabel!.backgroundColor를 변경
//        mainLabel.backgroundColor = UIColor.gray
        
        // colorLiteral 대신 #colorLiteral(
        mainLabel.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        mainButton.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        mainButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        
        // #imageLiteral(
        
        mainLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        // option key + trackpad click -> 해당 속성에 대한 정의 조회
        mainLabel.textAlignment = NSTextAlignment.right
    }
    
}

