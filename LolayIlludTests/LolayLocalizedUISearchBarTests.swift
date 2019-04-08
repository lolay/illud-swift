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

class LolayLocalizedUISearchBarTests: XCTestCase {
    func testLocalization() {
        let bundle = Bundle(for: type(of: self))
        let searchBar = LolayLocalizedUISearchBar(frame: CGRect.zero)
        searchBar.bundle = bundle
        
        searchBar.textKey = "LolayLocalizedUISearchBarTests.text"
        XCTAssertEqual(searchBar.text, "abc-text")
        XCTAssertNil(searchBar.placeholder)
        XCTAssertNil(searchBar.prompt)
        
        searchBar.placeholderKey = "LolayLocalizedUISearchBarTests.placeholder"
        XCTAssertEqual(searchBar.text, "abc-text")
        XCTAssertEqual(searchBar.placeholder, "abc-placeholder")
        XCTAssertNil(searchBar.prompt)

        searchBar.promptKey = "LolayLocalizedUISearchBarTests.prompt"
        XCTAssertEqual(searchBar.text, "abc-text")
        XCTAssertEqual(searchBar.placeholder, "abc-placeholder")
        XCTAssertEqual(searchBar.prompt, "abc-prompt")
        
        searchBar.tableName = "LolayIlludTests"
        XCTAssertEqual(searchBar.text, "xyz-text")
        XCTAssertEqual(searchBar.placeholder, "xyz-placeholder")
        XCTAssertEqual(searchBar.prompt, "xyz-prompt")
    }
}

