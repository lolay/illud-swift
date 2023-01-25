//
//  Copyright © 2019, 2023 Lolay, Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
import XCTest
@testable import LolayIllud

class LolayLocalizedUIBarButtonItemTests: XCTestCase {
    func testLocalization() {
        let bundle = Bundle.module
        let item = LolayLocalizedUIBarButtonItem(title: nil, style: .plain, target: nil, action: nil)
        item.title = "123"
        XCTAssertEqual(item.title, "123")
        
        item.titleKey = "LolayLocalizedUIBarButtonItemTests.testTitle"
        item.bundle = bundle
        XCTAssertEqual(item.title, "abc")
        
        item.tableName = "LolayIlludTests"
        XCTAssertEqual(item.title, "xyz")
    }
}
