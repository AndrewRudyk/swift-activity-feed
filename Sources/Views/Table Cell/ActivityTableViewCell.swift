//
//  ActivityTableViewCell.swift
//  GetStreamActivityFeed
//
//  Created by Alexey Bukhtin on 18/01/2019.
//  Copyright © 2019 Stream.io Inc. All rights reserved.
//

import UIKit
import Reusable
import GetStream

open class ActivityTableViewCell: UITableViewCell, NibReusable {

    @IBOutlet public weak var avatarButton: UIButton!
    @IBOutlet public weak var nameLabel: UILabel!
    @IBOutlet private weak var replyInfoStackView: UIStackView!
    @IBOutlet private weak var replyInfoLabel: UILabel!
    @IBOutlet public weak var dateLabel: UILabel!
    @IBOutlet public weak var messageLabel: UILabel!
    @IBOutlet public weak var actionButtonsStackView: UIStackView!
    @IBOutlet public weak var replyButton: UIButton!
    @IBOutlet public weak var repostButton: UIButton!
    @IBOutlet public weak var likeButton: UIButton!
    
    public var reply: String? {
        get {
            return replyInfoLabel.text
        }
        set {
            if let reply = newValue {
                replyInfoStackView.isHidden = false
                replyInfoLabel.text = reply
            } else {
                replyInfoStackView.isHidden = true
            }
        }
    }
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        reset()
    }
    
    open override func prepareForReuse() {
        reset()
        super.prepareForReuse()
    }
    
    open func reset() {
        updateAvatar(with: nil)
        nameLabel.text = nil
        replyInfoStackView.isHidden = true
        replyInfoLabel.text = nil
        dateLabel.text = nil
        messageLabel.text = nil
        actionButtonsStackView.isHidden = true
        repostButton.setTitle(nil, for: .normal)
        likeButton.setTitle(nil, for: .normal)
        avatarButton.removeTap()
        replyButton.removeTap()
        repostButton.removeTap()
        likeButton.removeTap()
    }
    
    func updateAvatar(with image: UIImage?) {
        if let image = image {
            avatarButton.setImage(image, for: .normal)
            avatarButton.contentHorizontalAlignment = .fill
            avatarButton.contentVerticalAlignment = .fill
        } else {
            avatarButton.setImage(.profileIcon, for: .normal)
            avatarButton.contentHorizontalAlignment = .center
            avatarButton.contentVerticalAlignment = .center
        }
    }
}
