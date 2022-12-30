//
//  CollectionViewCell1.swift
//  StarbucksSnapKitPractice
//
//  Created by woonKim on 2022/12/28.
//

import UIKit
import SnapKit
import Then

class CollectionViewCell: UICollectionViewCell {
    
    static let identifier = "cell"

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.cellSetting()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(with collection: Collection) {
        imageView.image = collection.image
        title1.text = collection.title1
        title2.text = collection.title2
        
        let attrString = NSMutableAttributedString(string: title2.text!)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 4
        attrString.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, attrString.length))
        title2.attributedText = attrString
    }
    
    func cellSetting() {
        self.backgroundColor = .clear
        self.addSubview(imageView)
        self.addSubview(title1)
        self.addSubview(title2)
        
        imageView.contentMode = .scaleToFill
        imageView.snp.makeConstraints {
            $0.top.leading.trailing.equalTo(0)
            $0.bottom.equalToSuperview().inset(40)
        }

        title1.snp.makeConstraints {
            $0.top.equalTo(imageView.snp.bottom).offset(13)
            $0.leading.trailing.equalToSuperview().inset(0.5)
     
        }

        title2.snp.makeConstraints {
            $0.top.equalTo(title1.snp.bottom).offset(5.5)
            $0.leading.trailing.equalToSuperview().inset(0.5)
        }
    }
    
    let imageView = UIImageView().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
    }
    
    let title1 = UILabel().then {
        $0.font = .systemFont(ofSize: 16.5, weight: .semibold)
        $0.textColor = .black
    }
    
    let title2 = UILabel().then {
        $0.font = .systemFont(ofSize: 11.5, weight: .semibold)
        $0.textColor = .systemGray
        $0.numberOfLines = 0
    }
}

struct Collection {
    let title1: String?
    let title2: String?
    let image: UIImage?
}

let collections: [Collection] = [Collection(title1: "리저브 뉴이어 커피 & 원두 출시", title2: "리저브 뉴이어 원두의 다양한 풍미로 향긋하게 연말을 마무리하고 특별한 한 해를 맞이하세요.", image: UIImage(named: "cell1")),
                                 Collection(title1: "딜리버스 투 고 백을 미리 예약해 보세요!", title2: "소규모 행사 준비가 필요할 때 미리 예약이 가능합니다.", image: UIImage(named: "cell2")),
                                 Collection(title1: "1월 1일, 뉴이어 프로모션 MD 출시", title2: "지혜롭고 행복이 가득한 한 해를 만들어 줄 상품들을 소개합니다", image: UIImage(named: "cell3")),
                                 Collection(title1: "12월 22일, 크리스마스 베어리 쿠키 틴백 출시", title2: "크리스마스 베어리 쿠키 틴백으로 따뜻한 마음을 선물하세요.", image: UIImage(named: "cell4")),
                                 Collection(title1: "12월 20일, 티바나 세트 출시", title2: "소중한 사람에게 Tea 한 잔의 여유를 선물하세요.", image: UIImage(named: "cell5")),
                                 Collection(title1: "12월 16일, 크리스마스 베어리 초콜릿 카드 출시", title2: "크리스마스의 따뜻한 메시지를 적어 선물하세요.", image: UIImage(named: "cell6")),
                                 Collection(title1: "12월 16일, RTD 음료 전용 기프트백 출시", title2: "감사의 마음을 담아 건강을 선물하세요!", image: UIImage(named: "cell7")),
                                  Collection(title1: "2022 윈터 e-프리퀀시 이벤트 안내", title2: "11월 15일, 스타벅스 윈터 e-프리퀀시가 시작됩니다.", image: UIImage(named: "cell8"))
]
