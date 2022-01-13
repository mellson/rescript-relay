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



  type rec issuesTestIntIdInput = {
    @live id: int,
    @live onlineStatus: [
      | #Online
      | #Idle
      | #Offline
    ]
,
  }
  type rec response_testIntInput_user_friends = {
    @live id: string,
  }
  and response_testIntInput_user = {
    @live id: string,
    @live onlineStatus: option<enum_OnlineStatus>,
    @live friends: array<response_testIntInput_user_friends>,
  }
  and response_testIntInput = {
    @live user: option<response_testIntInput_user>,
  }
  type response = {
    @live testIntInput: option<response_testIntInput>,
  }
  type rawResponse = response
  type variables = {
    @live issue: issuesTestIntIdInput,
  }
}

module Internal = {
  @live
  let variablesConverter: Js.Dict.t<Js.Dict.t<Js.Dict.t<string>>> = %raw(
    json`{"issuesTestIntIdInput":{"id":{"r":"int"}},"int":{},"__root":{"issue":{"r":"issuesTestIntIdInput"},"id":{"r":"int"}}}`
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
  @live let make_issuesTestIntIdInput = (
    ~id,
    ~onlineStatus
  ): issuesTestIntIdInput => {
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
    "name": "testIntInput",
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
    "name": "TestMutationWithAddedIntInputMutation",
    "selections": (v2/*: any*/),
    "type": "Mutation",
    "abstractKey": null
  },
  "kind": "Request",
  "operation": {
    "argumentDefinitions": (v0/*: any*/),
    "kind": "Operation",
    "name": "TestMutationWithAddedIntInputMutation",
    "selections": (v2/*: any*/)
  },
  "params": {
    "cacheID": "7425dc2a3d48f3a03c53bb20f418c753",
    "id": null,
    "metadata": {},
    "name": "TestMutationWithAddedIntInputMutation",
    "operationKind": "mutation",
    "text": "mutation TestMutationWithAddedIntInputMutation(\n  $issue: IssuesTestIntIdInput!\n) {\n  testIntInput(issue: $issue) {\n    user {\n      id\n      onlineStatus\n      friends {\n        id\n      }\n    }\n  }\n}\n"
  }
};
})() `)


