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

class LolayLocalizedUIButtonTests: XCTestCase {
    func testLocalization() {
        let bundle = Bundle.module
        let button = LolayLocalizedUIButton(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 100, height: 100)))
        button.setTitle("123", for: .normal)
        XCTAssertEqual(button.title(for: .normal), "123")
        
        button.applicationTitleKey = "LolayLocalizedUIbuttonTests.applicationTitle"
        button.disabledTitleKey = "LolayLocalizedUIbuttonTests.disabledTitle"
        button.focusedTitleKey = "LolayLocalizedUIbuttonTests.focusedTitle"
        button.highlightedTitleKey = "LolayLocalizedUIbuttonTests.highlightedTitle"
        button.normalTitleKey = "LolayLocalizedUIbuttonTests.normalTitle"
        button.reservedTitleKey = "LolayLocalizedUIbuttonTests.reservedTitle"
        button.selectedTitleKey = "LolayLocalizedUIbuttonTests.selectedTitle"
        button.bundle = bundle
        
        XCTAssertEqual(button.title(for: .application), "abc-application")
        XCTAssertEqual(button.title(for: .disabled), "abc-disabled")
        XCTAssertEqual(button.title(for: .focused), "abc-focused")
        XCTAssertEqual(button.title(for: .highlighted), "abc-highlighted")
        XCTAssertEqual(button.title(for: .normal), "abc-normal")
        XCTAssertEqual(button.title(for: .reserved), "abc-reserved")
        XCTAssertEqual(button.title(for: .selected), "abc-selected")

        button.tableName = "LolayIlludTests"
        XCTAssertEqual(button.title(for: .application), "xyz-application")
        XCTAssertEqual(button.title(for: .disabled), "xyz-disabled")
        XCTAssertEqual(button.title(for: .focused), "xyz-focused")
        XCTAssertEqual(button.title(for: .highlighted), "xyz-highlighted")
        XCTAssertEqual(button.title(for: .normal), "xyz-normal")
        XCTAssertEqual(button.title(for: .reserved), "xyz-reserved")
        XCTAssertEqual(button.title(for: .selected), "xyz-selected")
    }
}

