// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
public enum Strings {
  public enum Main {
    public enum Tabbar {
      /// Chat
      public static let chat = Strings.tr("Localizable", "Main.Tabbar.Chat", fallback: "Chat")
      /// Notification
      public static let notification = Strings.tr("Localizable", "Main.Tabbar.Notification", fallback: "Notification")
      /// Profile
      public static let profile = Strings.tr("Localizable", "Main.Tabbar.Profile", fallback: "Profile")
      /// Localizable.strings
      ///   SwiftUITemplate
      /// 
      ///   Created by tomosia on 6/2/23.
      public static let task = Strings.tr("Localizable", "Main.Tabbar.Task", fallback: "Task")
    }
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension Strings {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
