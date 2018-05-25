//
//  SliderStyleKit.swift
//  AudioKitSynthOne
//
//  Created by Matthew Fecher on 8/1/17.
//  Copyright © 2017 AudioKit. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//

import UIKit

public class SliderStyleKit: NSObject {

    //// Drawing Methods

    @objc dynamic public class func drawVerticalSlider(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 42, height: 160), resizing: ResizingBehavior = .aspectFit, sliderY: CGFloat = 70, minY: CGFloat = 0, maxY: CGFloat = 132) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!

        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 42, height: 160), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 42, y: resizedFrame.height / 160)
        let resizedShadowScale: CGFloat = min(resizedFrame.width / 42, resizedFrame.height / 160)

        //// Color Declarations
        let color = UIColor(red: 0.804, green: 0.800, blue: 0.792, alpha: 0.300)
        let orange = UIColor(red: 0.902, green: 0.533, blue: 0.008, alpha: 1.000)
        let gradientColor3 = UIColor(red: 0.282, green: 0.282, blue: 0.303, alpha: 1.000)
        let gradientColor4 = UIColor(red: 0.243, green: 0.243, blue: 0.263, alpha: 1.000)
        let gradientColor2 = UIColor(red: 0.388, green: 0.388, blue: 0.409, alpha: 1.000)
        let gradientColor = UIColor(red: 0.235, green: 0.235, blue: 0.252, alpha: 1.000)
        let shadow2Color = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
        let color4 = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 0.042)
        let shadowColor = UIColor(red: 0.133, green: 0.133, blue: 0.133, alpha: 1.000)

        //// Gradient Declarations
        let gradient = CGGradient(colorsSpace: nil, colors: [gradientColor.cgColor, gradientColor.blended(withFraction: 0.5, of: gradientColor3).cgColor, gradientColor3.cgColor, gradientColor4.cgColor, gradientColor2.cgColor] as CFArray, locations: [0.1, 0.1, 0.19, 0.61, 1])!

        //// Shadow Declarations
        let shadow2 = NSShadow()
        shadow2.shadowColor = shadow2Color.withAlphaComponent(0.98 * shadow2Color.cgColor.alpha)
        shadow2.shadowOffset = CGSize(width: -1, height: -1)
        shadow2.shadowBlurRadius = 2
        let shadow3 = NSShadow()
        shadow3.shadowColor = orange
        shadow3.shadowOffset = CGSize(width: 0, height: 0)
        shadow3.shadowBlurRadius = 6
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.black.withAlphaComponent(0.31)
        shadow.shadowOffset = CGSize(width: 0, height: 3)
        shadow.shadowBlurRadius = 3

        //// Variable Declarations
        let bounds: CGFloat = sliderY >= minY && sliderY <= maxY ? sliderY : (sliderY < minY ? minY : maxY)

        //// Slider

        //// Track
        //// Rectangle 4 Drawing
        let rectangle4Path = UIBezierPath(rect: CGRect(x: 2, y: 45, width: 38, height: 2))
        color.setFill()
        rectangle4Path.fill()

        //// Rectangle 3 Drawing
        let rectangle3Path = UIBezierPath(rect: CGRect(x: 2, y: 28, width: 38, height: 2))
        color.setFill()
        rectangle3Path.fill()

        //// Rectangle 2 Drawing
        let rectangle2Path = UIBezierPath(rect: CGRect(x: 2, y: 11, width: 38, height: 2))
        color.setFill()
        rectangle2Path.fill()

        //// Rectangle 5 Drawing
        let rectangle5Path = UIBezierPath(rect: CGRect(x: 2, y: 78, width: 38, height: 2))
        color.setFill()
        rectangle5Path.fill()

        //// Rectangle 6 Drawing
        let rectangle6Path = UIBezierPath(rect: CGRect(x: 2, y: 61, width: 38, height: 2))
        color.setFill()
        rectangle6Path.fill()

        //// Rectangle 7 Drawing
        let rectangle7Path = UIBezierPath(rect: CGRect(x: 2, y: 111, width: 38, height: 2))
        color.setFill()
        rectangle7Path.fill()

        //// Rectangle 8 Drawing
        let rectangle8Path = UIBezierPath(rect: CGRect(x: 2, y: 95, width: 38, height: 2))
        color.setFill()
        rectangle8Path.fill()

        //// Rectangle 9 Drawing
        let rectangle9Path = UIBezierPath(rect: CGRect(x: 2, y: 145, width: 38, height: 2))
        color.setFill()
        rectangle9Path.fill()

        //// Rectangle 10 Drawing
        let rectangle10Path = UIBezierPath(rect: CGRect(x: 2, y: 128, width: 38, height: 2))
        color.setFill()
        rectangle10Path.fill()

        //// pole Drawing
        let polePath = UIBezierPath(roundedRect: CGRect(x: 18, y: 5, width: 6, height: 150), cornerRadius: 2)
        shadowColor.setFill()
        polePath.fill()

        //// Indicator
        context.saveGState()
        context.translateBy(x: 21, y: (bounds + 13.5))

        //// Rectangle 11 Drawing
        let rectangle11Path = UIBezierPath(roundedRect: CGRect(x: -20, y: -13.5, width: 40, height: 28), cornerRadius: 4)
        context.saveGState()
        context.setShadow(offset: CGSize(width: shadow.shadowOffset.width * resizedShadowScale, height: shadow.shadowOffset.height * resizedShadowScale), blur: shadow.shadowBlurRadius * resizedShadowScale, color: (shadow.shadowColor as! UIColor).cgColor)
        context.beginTransparencyLayer(auxiliaryInfo: nil)
        rectangle11Path.addClip()
        context.drawLinearGradient(gradient, start: CGPoint(x: -0, y: 14.5), end: CGPoint(x: 0, y: -13.5), options: [])
        context.endTransparencyLayer()
        context.restoreGState()

        //// Rectangle 12 Drawing
        let rectangle12Path = UIBezierPath(rect: CGRect(x: -16, y: -1.5, width: 32, height: 3))
        context.saveGState()
        context.setShadow(offset: CGSize(width: shadow3.shadowOffset.width * resizedShadowScale, height: shadow3.shadowOffset.height * resizedShadowScale), blur: shadow3.shadowBlurRadius * resizedShadowScale, color: (shadow3.shadowColor as! UIColor).cgColor)
        orange.setFill()
        rectangle12Path.fill()
        context.restoreGState()

        //// Rectangle 13 Drawing
        let rectangle13Path = UIBezierPath(roundedRect: CGRect(x: -20, y: -13.5, width: 40, height: 28), cornerRadius: 4)
        context.saveGState()
        context.setShadow(offset: CGSize(width: shadow.shadowOffset.width * resizedShadowScale, height: shadow.shadowOffset.height * resizedShadowScale), blur: shadow.shadowBlurRadius * resizedShadowScale, color: (shadow.shadowColor as! UIColor).cgColor)
        color4.setFill()
        rectangle13Path.fill()

        ////// Rectangle 13 Inner Shadow
        context.saveGState()
        context.clip(to: rectangle13Path.bounds)
        context.setShadow(offset: CGSize.zero, blur: 0)
        context.setAlpha((shadow2.shadowColor as! UIColor).cgColor.alpha)
        context.beginTransparencyLayer(auxiliaryInfo: nil)
        let rectangle13OpaqueShadow = (shadow2.shadowColor as! UIColor).withAlphaComponent(1)
        context.setShadow(offset: CGSize(width: shadow2.shadowOffset.width * resizedShadowScale, height: shadow2.shadowOffset.height * resizedShadowScale), blur: shadow2.shadowBlurRadius * resizedShadowScale, color: rectangle13OpaqueShadow.cgColor)
        context.setBlendMode(.sourceOut)
        context.beginTransparencyLayer(auxiliaryInfo: nil)

        rectangle13OpaqueShadow.setFill()
        rectangle13Path.fill()

        context.endTransparencyLayer()
        context.endTransparencyLayer()
        context.restoreGState()

        context.restoreGState()

        context.restoreGState()

        context.restoreGState()

    }

    @objc(SliderStyleKitResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.

        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }

            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)

            switch self {
            case .aspectFit:
                scales.width = min(scales.width, scales.height)
                scales.height = scales.width
            case .aspectFill:
                scales.width = max(scales.width, scales.height)
                scales.height = scales.width
            case .stretch:
                break
            case .center:
                scales.width = 1
                scales.height = 1
            }

            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}

private extension UIColor {
    func blended(withFraction fraction: CGFloat, of color: UIColor) -> UIColor {
        var r1: CGFloat = 1, g1: CGFloat = 1, b1: CGFloat = 1, a1: CGFloat = 1
        var r2: CGFloat = 1, g2: CGFloat = 1, b2: CGFloat = 1, a2: CGFloat = 1

        self.getRed(&r1, green: &g1, blue: &b1, alpha: &a1)
        color.getRed(&r2, green: &g2, blue: &b2, alpha: &a2)

        return UIColor(red: r1 * (1 - fraction) + r2 * fraction,
            green: g1 * (1 - fraction) + g2 * fraction,
            blue: b1 * (1 - fraction) + b2 * fraction,
            alpha: a1 * (1 - fraction) + a2 * fraction)
    }
}
