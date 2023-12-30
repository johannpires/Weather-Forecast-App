//
//  DailyForecastTableViewCell.swift
//  Weather App
//
//  Created by Johann Pires on 26/12/2023.
//

import UIKit

class DailyForecastTableViewCell: UITableViewCell {
    
    static let identifier: String = "DailyForecast"
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [weekDayLabel, iconImageView, minTemperatureLabel, maxTemperatureLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 15
 //       stackView.layer.cornerRadius = 20
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
        stackView.isLayoutMarginsRelativeArrangement = true
//        stackView.layer.borderWidth = 1
//        stackView.layer.separatorColor = UIColor.contrastColor?.cgColor
        return stackView
    }()
    
    private lazy var weekDayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.text = "TER"
        label.textColor = UIColor.contrastColor
        return label
    }()
    
    private lazy var minTemperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.text = "Min 25°C"
        label.textColor = UIColor.contrastColor
        return label
    }()
        
    private lazy var maxTemperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.text = "Max 25°C"
        label.textColor = UIColor.contrastColor
        return label
    }()
    
    private lazy var iconImageView: UIImageView = {
        let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.image = UIImage(named: "weather")
        icon.contentMode = .scaleAspectFit
        return icon
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadData(weekDay: String?, min: String?, max: String?, icon: UIImage?) {
        weekDayLabel.text = weekDay
        minTemperatureLabel.text = "min \(min ?? "")"
        maxTemperatureLabel.text = "max \(max ?? "")"
        iconImageView.image = icon
    }
    
    private func setupView() {
        backgroundColor = .clear
        selectionStyle = .none
        setHierarchy()
        setConstraints()
    }
    
    
    private func setHierarchy() {
        contentView.addSubview(stackView)
        NSLayoutConstraint.activate([
            weekDayLabel.widthAnchor.constraint(lessThanOrEqualToConstant: 50),
        ])
        
    }
    
    private func setConstraints() {
        stackView.setConstraintstoParent(contentView)
    }
            
}

