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



  type rec response_addFriend_addedFriend_friends = {
    @live id: string,
  }
  and response_addFriend_addedFriend = {
    @live id: string,
    @live friends: array<response_addFriend_addedFriend_friends>,
  }
  and response_addFriend = {
    @live addedFriend: option<response_addFriend_addedFriend>,
  }
  and response_setOnlineStatus_user = {
    @live id: string,
  }
  and response_setOnlineStatus = {
    @live user: option<response_setOnlineStatus_user>,
  }
  and rawResponse_addFriend_addedFriend_friends = {
    @live id: string,
  }
  and rawResponse_addFriend_addedFriend = {
    @live id: string,
    @live friends: array<rawResponse_addFriend_addedFriend_friends>,
  }
  and rawResponse_addFriend = {
    @live addedFriend: option<rawResponse_addFriend_addedFriend>,
  }
  and rawResponse_setOnlineStatus_user = {
    @live id: string,
  }
  and rawResponse_setOnlineStatus = {
    @live user: option<rawResponse_setOnlineStatus_user>,
  }
  type response = {
    @live addFriend: option<response_addFriend>,
    @live setOnlineStatus: option<response_setOnlineStatus>,
  }
  type rawResponse = {
    @live addFriend: option<rawResponse_addFriend>,
    @live setOnlineStatus: option<rawResponse_setOnlineStatus>,
  }
  type variables = {
    @live friendId: string,
    @live onlineStatus: [
      | #Online
      | #Idle
      | #Offline
    ]
,
  }
}

module Internal = {
  @live
  let variablesConverter: Js.Dict.t<Js.Dict.t<Js.Dict.t<string>>> = %raw(
    json`{}`
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
  @live
  type wrapRawResponseRaw
  @live
  let wrapRawResponseConverter: Js.Dict.t<Js.Dict.t<Js.Dict.t<string>>> = %raw(
    json`{}`
  )
  @live
  let wrapRawResponseConverterMap = ()
  @live
  let convertWrapRawResponse = v => v->RescriptRelay.convertObj(
    wrapRawResponseConverter,
    wrapRawResponseConverterMap,
    Js.null
  )
  @live
  type rawResponseRaw
  @live
  let rawResponseConverter: Js.Dict.t<Js.Dict.t<Js.Dict.t<string>>> = %raw(
    json`{}`
  )
  @live
  let rawResponseConverterMap = ()
  @live
  let convertRawResponse = v => v->RescriptRelay.convertObj(
    rawResponseConverter,
    rawResponseConverterMap,
    Js.undefined
  )
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
  @live let makeVariables = (
    ~friendId,
    ~onlineStatus
  ): variables => {
    friendId: friendId,
    onlineStatus: onlineStatus
  }
  @live let makeOptimisticResponse = (
    ~addFriend=?,
    ~setOnlineStatus=?,
    ()
  ): rawResponse => {
    addFriend: addFriend,
    setOnlineStatus: setOnlineStatus
  }
  @live let make_rawResponse_addFriend_addedFriend_friends = (
    ~id
  ): rawResponse_addFriend_addedFriend_friends => {
    id: id
  }
  @live let make_rawResponse_addFriend_addedFriend = (
    ~id,
    ~friends
  ): rawResponse_addFriend_addedFriend => {
    id: id,
    friends: friends
  }
  @live let make_rawResponse_addFriend = (
    ~addedFriend=?,
    ()
  ): rawResponse_addFriend => {
    addedFriend: addedFriend
  }
  @live let make_rawResponse_setOnlineStatus_user = (
    ~id
  ): rawResponse_setOnlineStatus_user => {
    id: id
  }
  @live let make_rawResponse_setOnlineStatus = (
    ~user=?,
    ()
  ): rawResponse_setOnlineStatus => {
    user: user
  }
}

type relayOperationNode
type operationType = RescriptRelay.mutationNode<relayOperationNode>


let node: operationType = %raw(json` (function(){
var v0 = [
  {
    "defaultValue": null,
    "kind": "LocalArgument",
    "name": "friendId"
  },
  {
    "defaultValue": null,
    "kind": "LocalArgument",
    "name": "onlineStatus"
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
  (v1/*: any*/)
],
v3 = [
  {
    "alias": null,
    "args": [
      {
        "kind": "Variable",
        "name": "friendId",
        "variableName": "friendId"
      }
    ],
    "concreteType": "AddFriendPayload",
    "kind": "LinkedField",
    "name": "addFriend",
    "plural": false,
    "selections": [
      {
        "alias": null,
        "args": null,
        "concreteType": "User",
        "kind": "LinkedField",
        "name": "addedFriend",
        "plural": false,
        "selections": [
          (v1/*: any*/),
          {
            "alias": null,
            "args": null,
            "concreteType": "User",
            "kind": "LinkedField",
            "name": "friends",
            "plural": true,
            "selections": (v2/*: any*/),
            "storageKey": null
          }
        ],
        "storageKey": null
      }
    ],
    "storageKey": null
  },
  {
    "alias": null,
    "args": [
      {
        "kind": "Variable",
        "name": "onlineStatus",
        "variableName": "onlineStatus"
      }
    ],
    "concreteType": "SetOnlineStatusPayload",
    "kind": "LinkedField",
    "name": "setOnlineStatus",
    "plural": false,
    "selections": [
      {
        "alias": null,
        "args": null,
        "concreteType": "User",
        "kind": "LinkedField",
        "name": "user",
        "plural": false,
        "selections": (v2/*: any*/),
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
    "name": "TestMutationWithMultipleTargetsMutation",
    "selections": (v3/*: any*/),
    "type": "Mutation",
    "abstractKey": null
  },
  "kind": "Request",
  "operation": {
    "argumentDefinitions": (v0/*: any*/),
    "kind": "Operation",
    "name": "TestMutationWithMultipleTargetsMutation",
    "selections": (v3/*: any*/)
  },
  "params": {
    "cacheID": "0ebd06ecce912e7261783330567dc866",
    "id": null,
    "metadata": {},
    "name": "TestMutationWithMultipleTargetsMutation",
    "operationKind": "mutation",
    "text": "mutation TestMutationWithMultipleTargetsMutation(\n  $friendId: ID!\n  $onlineStatus: OnlineStatus!\n) {\n  addFriend(friendId: $friendId) {\n    addedFriend {\n      id\n      friends {\n        id\n      }\n    }\n  }\n  setOnlineStatus(onlineStatus: $onlineStatus) {\n    user {\n      id\n    }\n  }\n}\n"
  }
};
})() `)


