import JavaScriptCore

extension GraphQLInputField {
  func renderInputValueType(includeDefault: Bool = false, in schema: IR.Schema) -> String {
    """
    \(type.renderAsInputValue(in: schema))\
    \(isSwiftOptional ? "?" : "")\
    \(includeDefault && hasSwiftNilDefault ? " = nil" : "")
    """
  }

  private var isSwiftOptional: Bool {
    !isNullable && hasDefaultValue
  }

  private var hasSwiftNilDefault: Bool {
    isNullable && !hasDefaultValue
  }

  var isNullable: Bool {
    switch type {
    case .nonNull: return false
    default: return true
    }
  }

  var hasDefaultValue: Bool {
    switch defaultValue {
    case .none, .some(nil):
      return false
    case .some:
      return true
    }
  }
}