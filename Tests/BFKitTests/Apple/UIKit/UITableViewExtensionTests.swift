//
//  UITableViewExtensionTests.swift
//  BFKit
//
//  The MIT License (MIT)
//
//  Copyright (c) 2015 - 2017 Fabrizio Brancati. All rights reserved.
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

class UITableViewExtensionTests: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testIndexPathsSection() {
        let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: 320, height: 500), style: .plain)
        let indexPaths = tableView.indexPaths(section: 0)
        
        XCTAssertTrue(indexPaths.isEmpty)
    }
    
    func testNextIntedPathRowForSection() {
        let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: 320, height: 500), style: .plain)
        let indexPath = tableView.nextIndexPath(row: 0, forSection: 0)
        
        XCTAssertNil(indexPath)
    }
    
    func testPreviousIntedPathRowForSection() {
        let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: 320, height: 500), style: .plain)
        let indexPath = tableView.previousIndexPath(row: 0, forSection: 0)
        
        XCTAssertNil(indexPath)
    }
}