/* @sourceLoc Test_mutation.res */
/* @generated */
%%raw("/* @generated */")
module Types = {
  @@ocaml.warning("-30")

  type enum_OnlineStatus = private [>
      | #Online
      | #Idle
      | #Offline
    ]

  @live
  type enum_OnlineStatus_input = [
      | #Online
      | #Idle
      | #Offline
    ]



  type rec issuesTestStringIdInput = {
    @live id: string,
    @live onlineStatus: [
      | #Online
      | #Idle
      | #Offline
    ]
,
  }
  type rec response_testStringInput_user_friends = {
    @live id: string,
  }
  and response_testStringInput_user = {
    @live id: string,
    @live onlineStatus: option<enum_OnlineStatus>,
    @live friends: array<response_testStringInput_user_friends>,
  }
  and response_testStringInput = {
    @live user: option<response_testStringInput_user>,
  }
  type response = {
    @live testStringInput: option<response_testStringInput>,
  }
  type rawResponse = response
  type variables = {
    @live issue: issuesTestStringIdInput,
  }
}

module Internal = {
  @live
  let variablesConverter: Js.Dict.t<Js.Dict.t<Js.Dict.t<string>>> = %raw(
    json`{"issuesTestStringIdInput":{},"__root":{"issue":{"r":"issuesTestStringIdInput"}}}`
  )
  @live
  let variablesConverterMap = ()
  @live
  let convertVariables = v => v->RescriptRelay.convertObj(
    variablesConverter,
    variablesConverterMap,
    Js.undefined
  )
  @live
  type wrapResponseRaw
  @live
  let wrapResponseConverter: Js.Dict.t<Js.Dict.t<Js.Dict.t<string>>> = %raw(
    json`{}`
  )
  @live
  let wrapResponseConverterMap = ()
  @live
  let convertWrapResponse = v => v->RescriptRelay.convertObj(
    wrapResponseConverter,
    wrapResponseConverterMap,
    Js.null
  )
  @live
  type responseRaw
  @live
  let responseConverter: Js.Dict.t<Js.Dict.t<Js.Dict.t<string>>> = %raw(
    json`{}`
  )
  @live
  let responseConverterMap = ()
  @live
  let convertResponse = v => v->RescriptRelay.convertObj(
    responseConverter,
    responseConverterMap,
    Js.undefined
  )
  type wrapRawResponseRaw = wrapResponseRaw
  @live
  let convertWrapRawResponse = convertWrapResponse
  type rawResponseRaw = responseRaw
  @live
  let convertRawResponse = convertResponse
}
module Utils = {
  @@ocaml.warning("-33")
  open Types
  @live
  external onlineStatus_toString: enum_OnlineStatus => string = "%identity"
  @live
  external onlineStatus_input_toString: enum_OnlineStatus_input => string = "%identity"
  @live
  let onlineStatus_decode = (enum: enum_OnlineStatus): option<enum_OnlineStatus_input> => {
    switch enum {
      | #...enum_OnlineStatus_input as valid => Some(valid)
      | _ => None
    }
  }
  @live
  let onlineStatus_fromString = (str: string): option<enum_OnlineStatus_input> => {
    onlineStatus_decode(Obj.magic(str))
  }
  @live let make_issuesTestStringIdInput = (
    ~id,
    ~onlineStatus
  ): issuesTestStringIdInput => {
    id: id,
    onlineStatus: onlineStatus
  }
  @live let makeVariables = (
    ~issue
  ): variables => {
    issue: issue
  }
}

type relayOperationNode
type operationType = RescriptRelay.mutationNode<relayOperationNode>


let node: operationType = %raw(json` (function(){
var v0 = [
  {
    "defaultValue": null,
    "kind": "LocalArgument",
    "name": "issue"
  }
],
v1 = {
  "alias": null,
  "args": null,
  "kind": "ScalarField",
  "name": "id",
  "storageKey": null
},
v2 = [
  {
    "alias": null,
    "args": [
      {
        "kind": "Variable",
        "name": "issue",
        "variableName": "issue"
      }
    ],
    "concreteType": "IssuesTestPayload",
    "kind": "LinkedField",
    "name": "testStringInput",
    "plural": false,
    "selections": [
      {
        "alias": null,
        "args": null,
        "concreteType": "User",
        "kind": "LinkedField",
        "name": "user",
        "plural": false,
        "selections": [
          (v1/*: any*/),
          {
            "alias": null,
            "args": null,
            "kind": "ScalarField",
            "name": "onlineStatus",
            "storageKey": null
          },
          {
            "alias": null,
            "args": null,
            "concreteType": "User",
            "kind": "LinkedField",
            "name": "friends",
            "plural": true,
            "selections": [
              (v1/*: any*/)
            ],
            "storageKey": null
          }
        ],
        "storageKey": null
      }
    ],
    "storageKey": null
  }
];
return {
  "fragment": {
    "argumentDefinitions": (v0/*: any*/),
    "kind": "Fragment",
    "metadata": null,
    "name": "TestMutationWithAddedStringInputMutation",
    "selections": (v2/*: any*/),
    "type": "Mutation",
    "abstractKey": null
  },
  "kind": "Request",
  "operation": {
    "argumentDefinitions": (v0/*: any*/),
    "kind": "Operation",
    "name": "TestMutationWithAddedStringInputMutation",
    "selections": (v2/*: any*/)
  },
  "params": {
    "cacheID": "3bed4485aaafc020c9dab67d84e8f105",
    "id": null,
    "metadata": {},
    "name": "TestMutationWithAddedStringInputMutation",
    "operationKind": "mutation",
    "text": "mutation TestMutationWithAddedStringInputMutation(\n  $issue: IssuesTestStringIdInput!\n) {\n  testStringInput(issue: $issue) {\n    user {\n      id\n      onlineStatus\n      friends {\n        id\n      }\n    }\n  }\n}\n"
  }
};
})() `)


