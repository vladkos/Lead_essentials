//
//  XCTestCase+MemoryLeakTracking.swift
//  NetworkingTests
//
//  Created by Vladyslav Kostenko on 15/04/2023.
//

import XCTest

extension XCTestCase {
    func trackForMemoryLeak(_ instance: AnyObject, file: StaticString = #file, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated. Potential memory leak.", file: file, line: line)
        }
    }
}
