//
//  HourlyForecastCollectionViewCell.swift
//  Weather App
//
//  Created by Johann Pires on 14/12/2023.
//

import UIKit

class HourlyForecastCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "HourlyForecast"
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [hourLabel, iconImageView, temperatureLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 4
        stackView.layer.cornerRadius = 20
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layer.borderWidth = 1
        stackView.layer.borderColor = UIColor.contrastColor?.cgColor
        return stackView
        
    }()
    
    private lazy var hourLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 10, weight: .semibold)
        label.text = "15:00"
        label.textAlignment = .center
        label.textColor = UIColor.contrastColor
        return label
    }()
    
    private lazy var temperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 10, weight: .semibold)
        label.text = "25°C"
        label.textAlignment = .center
        label.textColor = UIColor.contrastColor
        return label
    }()
  
    private lazy var iconImageView: UIImageView = {
        let sunIcon = UIImageView()
        sunIcon.translatesAutoresizingMaskIntoConstraints = false
        sunIcon.image = UIImage(named: "sun")
        sunIcon.contentMode = .scaleAspectFit
        return sunIcon
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadData(time: String?, icon: UIImage?, temp: String?) {
        hourLabel.text = time
        iconImageView.image = icon
        temperatureLabel.text = temp
    }
    
    private func setupView() {
        setHierarchy()
        setConstraints()
    }
    
    
    
    private func setHierarchy() {
        contentView.addSubview(stackView)
        
    }
    
    private func setConstraints() {
        stackView.setConstraintstoParent(contentView)
        NSLayoutConstraint.activate([
            iconImageView.heightAnchor.constraint(equalToConstant: 33)
            
        ])
        
    
        
    }
}
