import Flutter
import UIKit

public class IosUserDefaultsPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "ios_user_defaults", binaryMessenger: registrar.messenger())
        let instance = IosUserDefaultsPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "get_string":
            guard let arguments = call.arguments as? [String: Any],
                  let key = arguments["key"] as? String else {
                result(argumentsError())
                return
            }
            let value = UserDefaults.standard.string(forKey: key)
            result(value)
        case "set_string":
            guard let arguments = call.arguments as? [String: Any],
                  let key = arguments["key"] as? String,
                  let value = arguments["value"] as? String else {
                result(argumentsError())
                return
            }
            UserDefaults.standard.setValue(value, forKey: key)
            result(true)
        case "get_bool":
            guard let arguments = call.arguments as? [String: Any],
                  let key = arguments["key"] as? String else {
                result(argumentsError())
                return
            }
            let value = UserDefaults.standard.bool(forKey: key)
            result(value)
        case "set_bool":
            guard let arguments = call.arguments as? [String: Any],
                  let key = arguments["key"] as? String,
                  let value = arguments["value"] as? Bool else {
                result(argumentsError())
                return
            }
            UserDefaults.standard.setValue(value, forKey: key)
            result(true)
        case "get_int":
            guard let arguments = call.arguments as? [String: Any],
                  let key = arguments["key"] as? String else {
                result(argumentsError())
                return
            }
            let value = UserDefaults.standard.integer(forKey: key)
            result(value)
        case "set_int":
            guard let arguments = call.arguments as? [String: Any],
                  let key = arguments["key"] as? String,
                  let value = arguments["value"] as? Int else {
                result(argumentsError())
                return
            }
            UserDefaults.standard.setValue(value, forKey: key)
            result(true)
        case "get_double":
            guard let arguments = call.arguments as? [String: Any],
                  let key = arguments["key"] as? String else {
                result(argumentsError())
                return
            }
            let value = UserDefaults.standard.double(forKey: key)
            result(value)
        case "set_double":
            guard let arguments = call.arguments as? [String: Any],
                  let key = arguments["key"] as? String,
                  let value = arguments["value"] as? Double else {
                result(argumentsError())
                return
            }
            UserDefaults.standard.setValue(value, forKey: key)
            result(true)
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
    private func argumentsError() -> FlutterError {
        return FlutterError(code: "Wrong arguments", message: "Wrong arguments", details: nil)
    }
}
