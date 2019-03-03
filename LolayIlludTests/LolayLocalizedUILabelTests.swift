//
//  Copyright © 2019 Lolay, Inc.
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

class LolayLocalizedUILabelTests: XCTestCase {
    func testLocalization() {
        let bundle = Bundle(for: type(of: self))
        let label = LolayLocalizedUILabel(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 100, height: 100)))
        label.text = "123"
        XCTAssertEqual(label.text, "123")
        
        label.textKey = "LolayLocalizedUILabelTests.testLabel"
        label.bundle = bundle
        XCTAssertEqual(label.text, "abc")
        
        label.tableName = "LolayIlludTests"
        XCTAssertEqual(label.text, "xyz")
    }
}
