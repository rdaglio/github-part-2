import Foundation

class UserDefaultsManager {
    
    static let openingBalanceKey = "openingBalance"
    static let expandedFieldsKey = "expandedFields"
    static let preventSleepKey = "preventSleep"
    static let haptikKey = "haptik"
    static let soundsKey = "sounds"
    
    static var openingBalance : String {
        set { UserDefaults.standard.set(newValue, forKey: openingBalanceKey) }
        get {
            if let opBal = UserDefaults.standard.string(forKey: openingBalanceKey) {
                return opBal
            } else {
                self.openingBalance = ""
                return UserDefaults.standard.string(forKey: openingBalanceKey)!
            }
        }
    }
    static var expandedFields : Bool {
        set { UserDefaults.standard.set(newValue, forKey: expandedFieldsKey) }
        get { return UserDefaults.standard.bool(forKey: expandedFieldsKey) }
    }
    static var preventSleep : Bool {
        set { UserDefaults.standard.set(newValue, forKey: preventSleepKey) }
        get { return UserDefaults.standard.bool(forKey: preventSleepKey) }
    }
    static var haptik : Bool {
        set { UserDefaults.standard.set(newValue, forKey: haptikKey) }
        get { return UserDefaults.standard.bool(forKey: haptikKey) }
    }
    static var sounds : Bool {
        set { UserDefaults.standard.set(newValue, forKey: soundsKey) }
        get { return UserDefaults.standard.bool(forKey: soundsKey) }
    }
}
