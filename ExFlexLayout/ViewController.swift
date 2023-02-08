//
//  ViewController.swift
//  ExFlexLayout
//
//  Created by 김종권 on 2023/02/08.
//

import UIKit
import FlexLayout
import PinLayout

class ViewController: UIViewController {
    let flexView = UIView()
    private let label1: UILabel = {
        let label = UILabel()
        label.text = "label1"
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.numberOfLines = 1
        return label
    }()
    private let label2: UILabel = {
        let label = UILabel()
        label.text = "label2"
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.numberOfLines = 1
        return label
    }()
    private let label3: UILabel = {
        let label = UILabel()
        label.text = "label3"
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.numberOfLines = 1
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(flexView)
        
        // 1. addItem: addSubview
        flexView.flex.define {
            $0.addItem(label1)
            $0.addItem(label2)
            $0.addItem(label3)
        }
        
        // direction
//        flexView.flex.direction(.row).define {
//            $0.addItem(label1)
//            $0.addItem(label2)
//            $0.addItem(label3)
//        }
        
        // padding
//        flexView.backgroundColor = .lightGray
//        flexView.flex.padding(20).define {
//            $0.addItem(label1)
//            $0.addItem(label2)
//            $0.addItem(label3)
//        }
//        flexView.flex.paddingLeft(10).define {
//            $0.addItem(label1).padding(30, 10)
//            $0.addItem(label2).paddingStart(50)
//            $0.addItem(label3)
//        }
        
        // width
//        flexView.flex.define {
//            $0.addItem(label1).width(40)
//            $0.addItem(label2)
//            $0.addItem(label3)
//        }
        
        // aspectRatio(of:)
//        flexView.flex.define {
//            $0.addItem(label1).width(100).aspectRatio(of: someImageView)
//            $0.addItem(label2)
//            $0.addItem(label3)
//        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // 2. pin으로 레이아웃 잡기
        flexView.pin.all(view.pin.safeArea)
        
        // 3. flexView의 children 레이아웃 잡기
        flexView.flex.layout()
    }
}
