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

class LolayLocalizedUITextFieldTests: XCTestCase {
    func testLocalization() {
        let bundle = Bundle(for: type(of: self))
        let textField = LolayLocalizedUITextField(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 100, height: 100)))
        textField.text = "123"
        XCTAssertEqual(textField.text, "123")
        
        textField.textKey = "LolayLocalizedUITextFieldTests.testLabel"
        textField.placeholderKey = "LolayLocalizedUITextFieldTests.testPlaceholder"
        textField.bundle = bundle
        XCTAssertEqual(textField.text, "abc")
        XCTAssertEqual(textField.placeholder, "abc")
        
        textField.tableName = "LolayIlludTests"
        XCTAssertEqual(textField.text, "xyz")
        XCTAssertEqual(textField.placeholder, "xyz")

        // Check to ensure a nil textKey or placeholderKey works
        textField.placeholderKey = nil
        XCTAssertEqual(textField.text, "xyz")
        
        textField.textKey = nil
        textField.placeholderKey = "LolayLocalizedUITextFieldTests.testPlaceholder"
        XCTAssertEqual(textField.placeholder, "xyz")
    }
}
