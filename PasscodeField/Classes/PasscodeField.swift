//
//  PasscodeField.swift
//  Pods
//
//  Created by TomomuraRyota on 2016/05/30.
//
//

import UIKit

@IBDesignable public class PasscodeField: UIView {
    
    // MARK: - Properties
    
    @IBInspectable public var length: Int = 6 {
        didSet {
            self.progressView.length = self.length
        }
    }
    
    @IBInspectable public var progress: Int = 0 {
        didSet {
            self.progressView.progress = self.progress
        }
    }
    
    @IBInspectable public var borderHeight: CGFloat = 2.0 {
        didSet {
            self.progressView.borderHeight = self.borderHeight
        }
    }
    
    @IBInspectable public var fillColor: UIColor = UIColor.blackColor() {
        didSet {
            self.progressView.fillColor = self.fillColor
        }
    }
    
    @IBInspectable public var fillSize: CGFloat = 20 {
        didSet {
            self.progressView.fillSize = self.fillSize
        }
    }
    
    private var progressView: ProgressStackView
    
    // MARK: - Initializers
    
    required public init?(coder aDecoder: NSCoder) {
        self.progressView = ProgressStackView(
            length: self.length,
            progress: self.progress,
            borderHeight: self.borderHeight,
            fillSize: self.fillSize,
            fillColor: self.fillColor
        )
        
        super.init(coder: aDecoder)
        
        self.setupView()
    }
    
    override public init(frame: CGRect) {
        self.progressView = ProgressStackView(
            length: self.length,
            progress: self.progress,
            borderHeight: self.borderHeight,
            fillSize: self.fillSize,
            fillColor: self.fillColor
        )
        
        super.init(frame: frame)
        
        self.setupView()
    }
    
    // MARK: - LifeCycle
    
    override public func updateConstraints() {
        NSLayoutConstraint.activateConstraints([
            self.progressView.topAnchor.constraintEqualToAnchor(self.topAnchor),
            self.progressView.bottomAnchor.constraintEqualToAnchor(self.bottomAnchor),
            self.progressView.leadingAnchor.constraintEqualToAnchor(self.leadingAnchor),
            self.progressView.trailingAnchor.constraintEqualToAnchor(self.trailingAnchor),
            ])
        
        super.updateConstraints()
    }
    
    // MARK: - Private Methods
    
    private func setupView() {
        self.addSubview(progressView)
    }

}
