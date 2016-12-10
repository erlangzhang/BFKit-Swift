//
//  UIImageViewExtensionTests.swift
//  BFKit
//
//  The MIT License (MIT)
//
//  Copyright (c) 2015 - 2016 Fabrizio Brancati. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import XCTest
import Foundation
import UIKit
@testable import BFKit

class UIImageViewExtensionTests: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testInitFrameImage() {
        guard let image = UIImage(dummyImage: "200x100") else {
            XCTAssert(false)
            return
        }
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 100), image: image)
        
        XCTAssert(imageView.frame == CGRect(x: 0, y: 0, width: 200, height: 100))
        XCTAssert(imageView.image == image)
    }
    
    func testInitImageSizeCenter() {
        guard let image = UIImage(dummyImage: "200x100") else {
            XCTAssert(false)
            return
        }
        
        let imageView = UIImageView(image: image, size: CGSize(width: 200, height: 100), center: CGPoint(x: 100, y: 50))
        
        XCTAssert(imageView.frame == CGRect(x: 0, y: 0, width: 200, height: 100))
        XCTAssert(imageView.image == image)
    }
    
    func testInitImageCenter() {
        guard let image = UIImage(dummyImage: "200x100") else {
            XCTAssert(false)
            return
        }
        
        let imageView = UIImageView(image: image, center: CGPoint(x: 100, y: 50))
        
        XCTAssert(imageView.frame == CGRect(x: 0, y: 0, width: 200, height: 100))
        XCTAssert(imageView.image == image)
    }
    
    func testImageTemplateTintColor() {
        guard let image = UIImage(dummyImage: "200x100") else {
            XCTAssert(false)
            return
        }
        
        let imageView = UIImageView(imageTemplate: image, tintColor: UIColor.red)
        
        XCTAssert(imageView.frame == CGRect(x: 0, y: 0, width: 200, height: 100))
        XCTAssert(imageView.image == image)
    }
    
    func testShadowColorRadiusOffsetOpacity() {
        guard let image = UIImage(dummyImage: "200x100") else {
            XCTAssert(false)
            return
        }
        
        let imageView = UIImageView(image: image, center: CGPoint(x: 100, y: 50))
        imageView.shadow(color: UIColor.red, radius: 1, offset: CGSize(width: 1, height: 1), opacity: 1)
        
        XCTAssert(imageView.frame == CGRect(x: 0, y: 0, width: 200, height: 100))
        XCTAssert(imageView.image == image)
    }
    
    func testMaskImage() {
        guard let image = UIImage(dummyImage: "200x100"), let mask = UIImage(dummyImage: "50x50") else {
            XCTAssert(false)
            return
        }
        
        let imageView = UIImageView(image: image, center: CGPoint(x: 100, y: 50))
        imageView.mask(image: mask)
        
        XCTAssert(imageView.frame == CGRect(x: 0, y: 0, width: 200, height: 100))
        XCTAssert(imageView.image == image)
        XCTAssert(imageView.layer.mask?.frame == CGRect(x: 0, y: 0, width: 200, height: 100))
    }
}
