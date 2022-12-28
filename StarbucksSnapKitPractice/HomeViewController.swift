//
//  ViewController.swift
//  StarbucksSnapKitPractice
//
//  Created by woonKim on 2022/12/19.
//

import UIKit
import SnapKit
import SwiftUI
import Then

class HomeViewController: UIViewController {

    let scrollView = UIScrollView().then {
        $0.showsVerticalScrollIndicator = false
    }
    
    let contentView = UIView()
    
    let stackView1 = UIStackView().then {
        $0.axis = .vertical
        $0.alignment = .leading
        $0.distribution = .equalSpacing
        $0.spacing = 6.5
    }
    
    let view1 = UIView().then {
        $0.backgroundColor = .white
        $0.layer.shadowOffset = CGSize(width: 1, height: 5)
        $0.layer.shadowRadius = 6
        $0.layer.shadowOpacity = 0.3
        $0.layer.shadowColor = UIColor.gray.cgColor
    }
    
    let stackView2 = UIStackView().then {
        $0.axis = .vertical
        $0.spacing = 5
    }
    
    let stackView3 = UIStackView().then {
        $0.axis = .horizontal
        $0.spacing = 13
    }
    
    let label1 = UILabel().then {
        $0.font = .boldSystemFont(ofSize: 24.5)
        $0.textColor = .black
        $0.text = "안녕하세요."
    }
    
    let label2 = UILabel().then {
        $0.font = .boldSystemFont(ofSize: 24.5)
        $0.textColor = .black
        $0.text = "스타벅스입니다."
    }
    
    let label3 = UILabel().then {
        $0.font = .systemFont(ofSize: 16)
        $0.textColor = .black
        $0.text = "스타벅스 리워드"
    }
    
    let label4 = UILabel().then {
        $0.font = .systemFont(ofSize: 16)
        $0.textColor = .black
        $0.text = "회원 신규가입 첫 구매 시,"
    }
    
    let label5 = UILabel().then {
        $0.font = .systemFont(ofSize: 16)
        $0.textColor = .black
        $0.text = "무료음료 혜택을 드려요!"
    }
    
    let button1 = UIButton().then {
        $0.backgroundColor = .systemGreen
        $0.layer.cornerRadius = 19
        $0.setTitle("회원 가입", for: .normal)
        $0.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15.6)
    }
    
    let button2 = UIButton().then {
        $0.layer.borderWidth = 1
        $0.layer.borderColor = UIColor.systemGreen.cgColor
        $0.layer.cornerRadius = 19
        $0.setTitle("로그인", for: .normal)
        $0.setTitleColor(.systemGreen, for: .normal)
        $0.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15.6)
    }
    
    let imageView1 = UIImageView().then {
        $0.image = UIImage(named: "cup")
        $0.contentMode = .scaleAspectFit
    }
    
    let stackView4 = UIStackView().then {
        $0.axis = .horizontal
        $0.spacing = 7.7
    }
    
    let imageView2 = UIImageView().then {
        $0.image = UIImage(named: "letter")
    }
    
    let label6 = UILabel().then {
        $0.font = .systemFont(ofSize: 15.5)
        $0.textColor = .black
        $0.text = "What's New"
    }
    
    let imageView3 = UIImageView().then {
        $0.image = UIImage(named: "bell")
    }
    
    
    
    let view2 = UIView().then {
        $0.backgroundColor = .clear
    }
    
    let view3 = UIView().then {
        $0.backgroundColor = .cyan
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(view1)
        contentView.addSubview(view2)
        contentView.addSubview(view3)
        view1.addSubview(stackView2)
        view1.addSubview(button1)
        view1.addSubview(stackView3)
        view1.addSubview(imageView1)
        view2.addSubview(stackView4)
        view2.addSubview(imageView3)
        
        _ = [stackView1, view1].map { contentView.addSubview($0) }
        
        scrollView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide)
            $0.leading.bottom.trailing.equalToSuperview()
        }
        
        contentView.snp.makeConstraints {
            $0.width.equalToSuperview()
            $0.centerX.top.bottom.equalToSuperview()
        }
        
        [label1, label2].map {
            stackView1.addArrangedSubview($0)
        }
        
        stackView1.snp.makeConstraints {
            $0.top.equalToSuperview().inset(45)
            $0.leading.equalToSuperview().offset(22)
        }
        
        view1.snp.makeConstraints {
            $0.height.equalTo(208)
            $0.top.equalTo(stackView1.snp.bottom).offset(27)
            $0.leading.trailing.equalToSuperview().inset(10)
        }
        
        stackView2.snp.makeConstraints {
            $0.top.equalToSuperview().inset(36)
            $0.leading.equalToSuperview().inset(27.5)
        }
        
        [label3, label4, label5].map {
            stackView2.addArrangedSubview($0)
        }
        
        button1.snp.makeConstraints {
            $0.width.equalTo(103)
            $0.height.equalTo(38)
        }
        
        button2.snp.makeConstraints {
            $0.width.equalTo(90)
            $0.height.equalTo(38)
        }
        
        [button1, button2].map {
            stackView3.addArrangedSubview($0)
        }
        
        stackView3.snp.makeConstraints {
            $0.top.equalTo(stackView2.snp.bottom).offset(26.5)
            $0.leading.equalToSuperview().inset(25.5)
        }
        
        imageView1.snp.makeConstraints {
            $0.top.equalToSuperview().inset(5)
            $0.leading.equalTo(stackView3.snp.trailing).offset(2)
            $0.bottom.equalToSuperview().inset(9)
            $0.trailing.equalToSuperview().inset(10)
        }
        
        view2.snp.makeConstraints {
            $0.height.equalTo(61)
            $0.top.equalTo(view1.snp.bottom)
            $0.leading.trailing.equalToSuperview()
        }
        
        [imageView2, label6].map {
            stackView4.addArrangedSubview($0)
        }
        
        stackView4.snp.makeConstraints {
            $0.top.equalTo(view1.snp.bottom).offset(19)
            $0.leading.equalToSuperview().inset(22)
        }
        
        imageView2.snp.makeConstraints {
            $0.width.equalTo(29)
            $0.height.equalTo(20)
        }
        
        imageView3.snp.makeConstraints {
            $0.width.equalTo(19)
            $0.height.equalTo(22)
            $0.top.equalTo(view1.snp.bottom).offset(19)
            $0.trailing.equalToSuperview().inset(20)
        }
        
        view3.snp.makeConstraints {
            $0.height.equalTo(1100)
            $0.top.equalTo(view2.snp.bottom)
            $0.leading.trailing.bottom.equalToSuperview()
        }

    }
}

struct PreView: PreviewProvider {
    static var previews: some View {
        HomeViewController().toPreview()
    }
}

#if DEBUG
extension UIViewController {
    private struct Preview: UIViewControllerRepresentable {
            let viewController: UIViewController

            func makeUIViewController(context: Context) -> UIViewController {
                return viewController
            }

            func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
            }
        }

        func toPreview() -> some View {
            Preview(viewController: self)
        }
}
#endif

