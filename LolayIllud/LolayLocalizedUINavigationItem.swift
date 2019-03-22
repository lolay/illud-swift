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

public class LolayLocalizedUINavigationItem: UINavigationItem {
    private func localize() {
        var title: String? = self.title
        var prompt: String? = self.prompt
        
        
        if self.bundle != nil {
            title = self.tableName != nil ? self.titleKey?.localized(bundle: self.bundle!, tableName: self.tableName!) : self.titleKey?.localized(bundle: self.bundle!)
            prompt = self.tableName != nil ? self.promptKey?.localized(bundle: self.bundle!, tableName: self.tableName!) : self.promptKey?.localized(bundle: self.bundle!)
        } else {
            title = self.tableName != nil ? self.titleKey?.localized(tableName: self.tableName!) : titleKey?.localized()
            prompt = self.tableName != nil ? self.promptKey?.localized(tableName: self.tableName!) : promptKey?.localized()
        }
        
        self.title = title
        self.prompt = prompt
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
