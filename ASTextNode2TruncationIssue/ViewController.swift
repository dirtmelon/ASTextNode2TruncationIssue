//
//  ViewController.swift
//  ASTextNode2TruncationIssue
//
//  Created by postman on 2019/2/22.
//  Copyright © 2019 dirtmelon. All rights reserved.
//

import UIKit
import AsyncDisplayKit

class ViewController: UIViewController {

  private lazy var textNode: ASTextNode2 = {
    let textNode = ASTextNode2()
    textNode.attributedText =
      NSAttributedString(string: "ASTextNode is Texture’s main text node and can be used any time you would normally " +
        "use a UILabel. It includes full rich text support and is a subclass of ASControlNode meaning it can be used" +
        "any time you would normally create a UIButton with just its titleLabel set.",
                         attributes: [NSAttributedString.Key.foregroundColor: UIColor.black,
                                      NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14)])
    textNode.maximumNumberOfLines = 3
    textNode.delegate = self
    textNode.truncationAttributedText =
      NSAttributedString(string: "...",
                         attributes: [NSAttributedString.Key.foregroundColor: UIColor.black,
                                      NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14)])
    textNode.additionalTruncationMessage =
      NSAttributedString(string: "more",
                         attributes: [NSAttributedString.Key.foregroundColor: UIColor.blue,
                                      NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14)])
    textNode.isUserInteractionEnabled = true
    textNode.passthroughNonlinkTouches = true
    return textNode
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubnode(textNode)
    textNode.frame = CGRect(x: 20.0,
                            y: 80.0,
                            width: view.frame.width - 40.0,
                            height: view.frame.height - 80.0)
  }


}

extension ViewController: ASTextNodeDelegate {

  func textNodeTappedTruncationToken(_ textNode: ASTextNode!) {
    print("Tapped Truncation")
  }
}
