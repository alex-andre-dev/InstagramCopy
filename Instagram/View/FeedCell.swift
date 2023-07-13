//
//  FeedCell.swift
//  Instagram
//
//  Created by Alexandre  Machado on 12/07/23.
//


import UIKit

class FeedCell: UICollectionViewCell, ViewProtocol{
    
    //MARK: - Properties
    private let profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.isUserInteractionEnabled = true
        iv.image = UIImage(named: "venom-7")
        return iv
    }()
    
    private lazy var usernameButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitleColor(.black, for: .normal)
        button.setTitle("venom", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 13)
        button.addTarget(self, action: #selector(didTapUsername), for: .touchUpInside)
        return button
    }()
    
    private let postImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.isUserInteractionEnabled = true
        iv.image = UIImage(named: "venom-7")
        return iv
    }()
    
    private lazy var likeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "like_unselected"), for: .normal)
        button.tintColor = .black
        return button
    }()
    
    private lazy var shareButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "send2"), for: .normal)
        button.tintColor = .black
        return button
    }()
    
    private lazy var commentButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "comment"), for: .normal)
        button.tintColor = .black
        return button
    }()
    
    private let likeslabel: UILabel = {
        let label = UILabel()
        label.text = "1 like"
        label.font = .boldSystemFont(ofSize: 12)
        return label
    }()
    
    private let captionlabel: UILabel = {
        let label = UILabel()
        label.text = "some test caption..."
        label.font = .boldSystemFont(ofSize: 12)
        return label
    }()
    
    private let postTimelabel: UILabel = {
        let label = UILabel()
        label.text = "2 days ago"
        label.font = .systemFont(ofSize: 12)
        label.textColor = .lightGray
        return label
    }()
    
    private var stackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .horizontal
        sv.distribution = .fillEqually
        return sv
    }()
    
    //MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    func setupUI() {
        backgroundColor = .white
        profileImageView.layer.cornerRadius = 20
    }
    
    func setupHierarchy() {
        stackView.addArrangedSubviews([likeButton, commentButton, shareButton])
        addSubview(profileImageView)
        addSubview(usernameButton)
        addSubview(postImageView)
        addSubview(stackView)
        addSubview(likeslabel)
        addSubview(captionlabel)
        addSubview(postTimelabel)
    }
    
    func setupConstraints() {
        profileImageView.anchor(top: topAnchor, left: leftAnchor, paddingTop: 12, paddingLeft: 12)
        profileImageView.setDimensions(height: 40, width: 40)
        
        usernameButton.centerY(inView: profileImageView,leftAnchor: profileImageView.rightAnchor, paddingLeft: 8)
        
        postImageView.anchor(top: profileImageView.bottomAnchor, left: leftAnchor, right: rightAnchor, paddingTop: 8)
        postImageView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 1).isActive = true
        
        stackView.anchor(top: postImageView.bottomAnchor, width: 120, height: 50)
        
        likeslabel.anchor(top: stackView.bottomAnchor, left: leftAnchor, paddingTop: -4, paddingLeft: 8)
        
        captionlabel.anchor(top: likeslabel.bottomAnchor, left: leftAnchor, paddingTop: 8, paddingLeft: 8)
        
        postTimelabel.anchor(top: captionlabel.bottomAnchor, left: leftAnchor, paddingTop: 8, paddingLeft: 8)

        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Actions
    
    @objc func didTapUsername(){
        
    }
    //MARK: - Helpers


    
}
