// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI
@_exported import enum ApolloAPI.GraphQLEnum
@_exported import enum ApolloAPI.GraphQLNullable

public struct HeightInMeters: MyCodegenTargetDestination.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString { """
    fragment HeightInMeters on Animal {
      __typename
      height {
        __typename
        meters
      }
    }
    """ }

  public let __data: DataDict
  public init(data: DataDict) { __data = data }

  public static var __parentType: ParentType { MyCodegenTargetDestination.Interfaces.Animal }
  public static var selections: [Selection] { [
    .field("height", Height.self),
  ] }

  public var height: Height { __data["height"] }

  /// Height
  ///
  /// Parent Type: `Height`
  public struct Height: MyCodegenTargetDestination.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { MyCodegenTargetDestination.Objects.Height }
    public static var selections: [Selection] { [
      .field("meters", Int.self),
    ] }

    public var meters: Int { __data["meters"] }
  }
}