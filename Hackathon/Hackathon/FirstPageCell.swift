//
//  FirstPageCell.swift
//  Hackathon
//
//  Created by Campbell Affleck on 8/28/19.
//

import UIKit

class FirstPageCell: UICollectionViewCell {
    
    //MARK: Variables
    var pageNum = 0
    let pieChartView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "Pie Chart"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = ContentMode.scaleAspectFit
        return imageView
    }()
    let titleTextView: UITextView = {
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "Budget Breakdown", attributes: [NSAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 18), NSAttributedString.Key.foregroundColor:UIColor.white])
        textView.attributedText = attributedText
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        if pageNum == 0 {
            setUpPieChartLayout()
            setUpTitleLayout()
        }
    }
    
    private func setUpPieChartLayout() {
        let topImageContainerView = UIView()
        addSubview(topImageContainerView)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        topImageContainerView.topAnchor.constraint(equalTo: topAnchor, constant: 60).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        topImageContainerView.addSubview(pieChartView)
        
        pieChartView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        pieChartView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        pieChartView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.5).isActive = true
        
        addSubview(titleTextView)
        titleTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor, constant: 10).isActive = true
        titleTextView.leftAnchor.constraint(equalTo: leftAnchor, constant: 24).isActive = true
        titleTextView.rightAnchor.constraint(equalTo: rightAnchor, constant: -24).isActive = true
        
        topImageContainerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
    }
    
    private func setUpTitleLayout() {
        let topImageContainerView = UIView()
        addSubview(topImageContainerView)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        topImageContainerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        topImageContainerView.addSubview(titleTextView)
    
        topImageContainerView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        titleTextView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        titleTextView.leftAnchor.constraint(equalTo: leftAnchor, constant: 24).isActive = true
        titleTextView.rightAnchor.constraint(equalTo: rightAnchor, constant: -24).isActive = true
        topImageContainerView.addSubview(titleTextView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
