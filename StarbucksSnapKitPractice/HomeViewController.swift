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

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

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
    
    let imageView4 = UIImageView().then {
        $0.image = UIImage(named: "banner1")
    }
    
    let imageView5 = UIImageView().then {
        $0.image = UIImage(named: "banner2")
    }
    
    let imageView6 = UIImageView().then {
        $0.image = UIImage(named: "banner3")
    }
    
    let view3 = UIView().then {
        $0.backgroundColor = .white
    }
    
    let stackView5 = UIStackView().then {
        $0.axis = .horizontal
        $0.spacing = 100
    }
    
    let label7 = UILabel().then {
        $0.font = .boldSystemFont(ofSize: 20.5)
        $0.textColor = .black
        $0.text = "What's New"
    }
    
    let label8 = UILabel().then {
        $0.font = .systemFont(ofSize: 15, weight: .regular)
        $0.textColor = .systemGreen
        $0.text = "See all"
    }
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return cv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(stackView1)
        contentView.addSubview(view1)
        view1.addSubview(stackView2)
        view1.addSubview(button1)
        view1.addSubview(stackView3)
        view1.addSubview(imageView1)
        contentView.addSubview(view2)
        view2.addSubview(stackView4)
        view2.addSubview(imageView3)
        contentView.addSubview(imageView4)
        contentView.addSubview(imageView5)
        contentView.addSubview(imageView6)
        contentView.addSubview(view3)
        view3.addSubview(stackView5)
        contentView.addSubview(collectionView)
  
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)
        collectionView.collectionViewLayout = createLayout()
        
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
        
        imageView4.snp.makeConstraints {
            $0.height.equalTo(220)
            $0.top.equalTo(view2.snp.bottom)
            $0.leading.trailing.equalToSuperview().inset(9)
        }
        
        imageView5.snp.makeConstraints {
            $0.height.equalTo(210)
            $0.top.equalTo(imageView4.snp.bottom).offset(14)
            $0.leading.trailing.equalToSuperview().inset(9.5)
        }
        
        imageView6.snp.makeConstraints {
            $0.height.equalTo(430)
            $0.top.equalTo(imageView5.snp.bottom).offset(14)
            $0.leading.trailing.equalToSuperview().inset(9.5)
        }
        
        view3.snp.makeConstraints {
            $0.height.equalTo(71.5)
            $0.top.equalTo(imageView6.snp.bottom)
            $0.leading.trailing.equalToSuperview().inset(9.5)
        }
        
        [label7, label8].map {
            stackView5.addArrangedSubview($0)
        }
        
        stackView5.snp.makeConstraints {
            $0.top.equalToSuperview().inset(33)
            $0.leading.trailing.equalToSuperview().inset(9.5)
        }
        
        collectionView.snp.makeConstraints {
            $0.height.equalTo(250)
            $0.top.equalTo(view3.snp.bottom)
            $0.leading.trailing.bottom.equalToSuperview()
         
        }
    }
    
    func createLayout() -> UICollectionViewCompositionalLayout {
        
        // item
        let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.85)))
        
        item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 6, trailing: 11.5)
        
        // Group
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .absolute(500), heightDimension: .fractionalHeight(1)), subitem: item, count: 2)
        
        // Section
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 18, bottom: 0, trailing: 7)
        
        // return
        return UICollectionViewCompositionalLayout(section: section)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collections.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as! CollectionViewCell
        cell.setup(with: collections[indexPath.row])

        return cell
    }
}

struct PreView: PreviewProvider {
    static var previews: some View {
        HomeViewController().toPreview()
    }
}

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

