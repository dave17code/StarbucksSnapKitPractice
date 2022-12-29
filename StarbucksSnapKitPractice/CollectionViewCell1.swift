//
//  CollectionViewCell1.swift
//  StarbucksSnapKitPractice
//
//  Created by woonKim on 2022/12/28.
//

import UIKit
import SnapKit
import Then

class CollectionViewCell1: UICollectionViewCell {
    static let identifier = "cell1"
    
    var img = UIImageView().then {_ in
    }
    
    var title1 = UILabel().then {_ in
        
    }
    
    var title2 = UILabel().then {_ in
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.cellSetting()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(with collection: Collection1) {
        img.image = collection.image
        title1.text = collection.title1
        title2.text = collection.title2
    }
    
    func cellSetting() {
        self.backgroundColor = .clear
        self.addSubview(img)
        self.addSubview(title1)
        self.addSubview(title2)
        
        img.contentMode = .scaleToFill
        img.snp.makeConstraints {
            $0.top.leading.trailing.bottom.equalTo(0)
//            $0.bottom.equalTo(-20)
        }
        
        title1.snp.makeConstraints {
            $0.top.equalTo(img.snp.bottom).offset(10)
            $0.leading.bottom.trailing.equalTo(0)
  
        }
        
        
        title1.snp.makeConstraints {
            $0.top.equalTo(title1.snp.bottom).offset(5)
            $0.leading.bottom.trailing.equalTo(0)

        }
        
    }
    
}

struct Collection1 {
    let title1: String?
    let title2: String?
    let image: UIImage?
}

let collections: [Collection1] = [Collection1(title1: "[공지] 고객사과문", title2: "고객사과문", image: UIImage(named: "cell1")),
                                 Collection1(title1: "가나다", title2: "", image: UIImage(named: "cell2.png")),
                                 Collection1(title1: "만원당 별 적립 이벤트", title2: "결제 금액 1만원당 별 1개 추가 적립!", image: UIImage(named: "cell3.png")),
                                 Collection1(title1: "가나다", title2: "", image: UIImage(named: "cell4.png")),
                                 Collection1(title1: "2022 하반기 바리스타 리크루팅", title2: "2022 하반기 바리스타 리크루팅 채용 안내", image: UIImage(named: "cell5.png")),
                                 Collection1(title1: "S.I.VILLAGE 제휴 프로모션", title2: "골드 회원에게 드리는 S.I빌리지 추가 혜택을 소개합니다.", image: UIImage(named: "cell6.png")),
                                 Collection1(title1: "가나다", title2: "", image: UIImage(named: "cell7.png")),
                                  Collection1(title1: "가나다", title2: "", image: UIImage(named: "cell8.png"))
]
