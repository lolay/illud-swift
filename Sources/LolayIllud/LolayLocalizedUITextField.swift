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

@IBDesignable public class LolayLocalizedUITextField: UITextField {
    func localize() {
        guard self.textKey != nil else { return }
        
        if self.bundle != nil {
            if tableName != nil {
                if self.textKey != nil {
                    self.text = self.textKey!.localized(bundle: self.bundle!, tableName: self.tableName!)
                }
                if self.placeholderKey != nil {
                    self.placeholder = self.placeholderKey!.localized(bundle: self.bundle!, tableName: self.tableName!)
                }
            } else {
                if self.textKey != nil {
                    self.text = self.textKey!.localized(bundle: self.bundle!)
                }
                if self.placeholderKey != nil {
                    self.placeholder = self.placeholderKey!.localized(bundle: self.bundle!)
                }
            }
            
        } else {
            self.text = tableName != nil ? self.textKey?.localized(tableName: self.tableName!) : self.textKey?.localized()
            self.placeholder = tableName != nil ? self.placeholderKey?.localized(tableName: self.tableName!) : self.placeholderKey?.localized()
        }
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
     Localized key that will replace the text
     */
    @IBInspectable public var placeholderKey: String? {
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
