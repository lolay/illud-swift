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

import Foundation

class LolayLocalizedUIBarButtonItem: UIBarButtonItem {
    func localize() {
        guard self.titleKey != nil else { return }
        
        if self.bundle != nil {
            self.title = tableName != nil ? self.titleKey?.localized(bundle: self.bundle!, tableName: self.tableName!) : self.titleKey?.localized(bundle: self.bundle!)
        } else {
            self.title = tableName != nil ? self.titleKey?.localized(tableName: self.tableName!) : self.titleKey?.localized()
        }
    }
    
    /**
     Localized key that will replace the text
     */
    @IBInspectable public var titleKey: String? {
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
