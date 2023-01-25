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

import Foundation
import UIKit

class LolayLocalizedUISearchBar: UISearchBar {
    private func localize() {
        var text: String? = self.text
        var placeholder: String? = self.placeholder
        var prompt: String? = self.prompt
        
        if self.bundle != nil {
            text = self.tableName != nil ? self.textKey?.localized(bundle: self.bundle!, tableName: self.tableName!) : self.textKey?.localized(bundle: self.bundle!)
            placeholder = self.tableName != nil ? self.placeholderKey?.localized(bundle: self.bundle!, tableName: self.tableName!) : self.placeholderKey?.localized(bundle: self.bundle!)
            prompt = self.tableName != nil ? self.promptKey?.localized(bundle: self.bundle!, tableName: self.tableName!) : self.promptKey?.localized(bundle: self.bundle!)
        } else {
            text = self.tableName != nil ? self.textKey?.localized(tableName: self.tableName!) : textKey?.localized()
            placeholder = self.tableName != nil ? self.placeholderKey?.localized(tableName: self.tableName!) : placeholderKey?.localized()
            prompt = self.tableName != nil ? self.promptKey?.localized(tableName: self.tableName!) : promptKey?.localized()
        }
        
        self.text = text
        self.placeholder = placeholder
        self.prompt = prompt
    }
    
    /**
     Localized key that will replace the text
     */
    @IBInspectable public var textKey: String? {
        didSet {
            localize()
        }
    }
    
    /**
     Localized key that will replace the placeholder
     */
    @IBInspectable public var placeholderKey: String? {
        didSet {
            localize()
        }
    }
    
    /**
     Localized key that will replace the text
     */
    @IBInspectable public var promptKey: String? {
        didSet {
            localize()
        }
    }
    
    /**
     tableName to be used for localization
     */
    @IBInspectable public var tableName: String? {
        didSet {
            localize()
        }
    }
    
    @IBOutlet public var bundle: Bundle? {
        didSet {
            localize()
        }
    }

}
