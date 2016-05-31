//
//  CircleView.swift
//  Pods
//
//  Created by TomomuraRyota on 2016/05/30.
//
//

import UIKit

final class CircleView: UIView {
    
    // MARK: - Properties
    
    var borderHeight: CGFloat {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    var fillColor: UIColor {
        didSet {
            self.refreshFillColor()
        }
    }
    
    var fillSize: CGFloat {
        didSet {
            self.invalidateIntrinsicContentSize()
        }
    }
    
    var fill: Bool = false {
        didSet {
            self.refreshFillView()
        }
    }
    
    private let fillView = UIView(frame: CGRectZero)
    
    // MARK: - Initializers
    
    init(borderHeight: CGFloat, fillSize: CGFloat, fillColor: UIColor) {
        self.borderHeight = borderHeight
        self.fillSize = fillSize
        self.fillColor = fillColor
        
        super.init(frame: CGRectZero)
        
        self.commonInit()
        self.setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - LifeCycle
    
    override func drawRect(rect: CGRect) {
        if !self.fill {
            let line = UIBezierPath()
            
            let x = self.fillView.frame.origin.x
            let y  = self.bounds.height / 2
            let width = self.fillView.bounds.width
            
            line.moveToPoint(CGPointMake(x, y));
            line.addLineToPoint(CGPointMake(x + width, y));
            line.lineWidth = self.borderHeight
            
            self.fillColor.setStroke()
            line.stroke()
        }
    }
    
    override func intrinsicContentSize() -> CGSize {
        return CGSizeMake(self.fillSize, self.fillSize)
    }
    
    override func updateConstraints() {
        NSLayoutConstraint.activateConstraints([
            self.fillView.topAnchor.constraintEqualToAnchor(self.topAnchor),
            self.fillView.bottomAnchor.constraintEqualToAnchor(self.bottomAnchor),
            self.fillView.leadingAnchor.constraintEqualToAnchor(self.leadingAnchor),
            self.fillView.trailingAnchor.constraintEqualToAnchor(self.trailingAnchor),
            ])
        
        super.updateConstraints()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.fillView.layer.cornerRadius = self.fillSize / 2
    }
    
    // MARK: - Private Methods
    
    private func commonInit() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = UIColor.clearColor()
        
        self.fillView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupView() {
        self.addSubview(self.fillView)
        
        self.refreshFillView()
        self.refreshFillColor()
    }
    
    // MARK: - Helpers
    
    private func refreshFillColor() {
        self.fillView.backgroundColor = self.fillColor
        self.setNeedsDisplay()
    }
    
    private func refreshFillView() {
        self.fillView.hidden = !self.fill
    }
    
}
