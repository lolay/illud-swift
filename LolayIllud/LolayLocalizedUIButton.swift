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

@IBDesignable class LolayLocalizedUIButton: UIButton {
    internal func localize() {
        for stateTitle in [(UIControl.State.application, self.applicationTitleKey), (.disabled, self.disabledTitleKey), (.focused, self.focusedTitleKey), (.highlighted, self.highlightedTitleKey), (.normal, self.normalTitleKey), (.reserved, self.reservedTitleKey), (.selected, self.selectedTitleKey)] {
            
            guard stateTitle.1 != nil else { continue }
            var title: String? = nil
            
            if self.bundle != nil {
                title = self.tableName != nil ? stateTitle.1?.localized(bundle: self.bundle!, tableName: self.tableName!) : stateTitle.1?.localized(bundle: self.bundle!)
            } else {
                title = self.tableName != nil ? stateTitle.1?.localized(tableName: self.tableName!) : stateTitle.1?.localized()
            }
            
            setTitle(title, for: stateTitle.0)
        }
    }

    /**
     Localized key that will replace the text
     */
    @IBInspectable var applicationTitleKey: String? {
        didSet {
            localize()
        }
    }
    
    /**
     Localized key that will replace the text
     */
    @IBInspectable var disabledTitleKey: String? {
        didSet {
            localize()
        }
    }
    
    /**
     Localized key that will replace the text
     */
    @IBInspectable var focusedTitleKey: String? {
        didSet {
            localize()
        }
    }
    
    /**
     Localized key that will replace the text
     */
    @IBInspectable var highlightedTitleKey: String? {
        didSet {
            localize()
        }
    }
    
    /**
     Localized key that will replace the text
     */
    @IBInspectable var normalTitleKey: String? {
        didSet {
            localize()
        }
    }
    
    /**
     Localized key that will replace the text
     */
    @IBInspectable var reservedTitleKey: String? {
        didSet {
            localize()
        }
    }
    
    /**
     Localized key that will replace the text
     */
    @IBInspectable var selectedTitleKey: String? {
        didSet {
            localize()
        }
    }
    
    /**
     tableName to be used for localization
     */
    @IBInspectable var tableName: String? {
        didSet {
            localize()
        }
    }
    
    @IBOutlet var bundle: Bundle? {
        didSet {
            localize()
        }
    }
}
