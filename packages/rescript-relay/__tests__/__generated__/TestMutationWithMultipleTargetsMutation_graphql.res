/* @sourceLoc Test_mutation.res */
/* @generated */
%%raw("/* @generated */")
module Types = {
  @@ocaml.warning("-30")

  type rec response_testIntInput1 = {
    @live success: option<bool>,
  }
  and response_testIntInput2 = {
    @live success: option<bool>,
  }
  and response_addFriend_addedFriend_friends = {
    @live id: string,
  }
  and response_addFriend_addedFriend = {
    @live id: string,
    @live friends: array<response_addFriend_addedFriend_friends>,
  }
  and response_addFriend = {
    @live addedFriend: option<response_addFriend_addedFriend>,
  }
  and rawResponse_testIntInput1 = {
    @live success: option<bool>,
  }
  and rawResponse_testIntInput2 = {
    @live success: option<bool>,
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
  type response = {
    @live testIntInput1: option<response_testIntInput1>,
    @live testIntInput2: option<response_testIntInput2>,
    @live addFriend: option<response_addFriend>,
  }
  type rawResponse = {
    @live testIntInput1: option<rawResponse_testIntInput1>,
    @live testIntInput2: option<rawResponse_testIntInput2>,
    @live addFriend: option<rawResponse_addFriend>,
  }
  type variables = {
    @live id: int,
    @live ids: array<int>,
    @live friendId: string,
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
  @live let makeVariables = (
    ~id,
    ~ids,
    ~friendId
  ): variables => {
    id: id,
    ids: ids,
    friendId: friendId
  }
  @live let makeOptimisticResponse = (
    ~testIntInput1=?,
    ~testIntInput2=?,
    ~addFriend=?,
    ()
  ): rawResponse => {
    testIntInput1: testIntInput1,
    testIntInput2: testIntInput2,
    addFriend: addFriend
  }
  @live let make_rawResponse_testIntInput1 = (
    ~success=?,
    ()
  ): rawResponse_testIntInput1 => {
    success: success
  }
  @live let make_rawResponse_testIntInput2 = (
    ~success=?,
    ()
  ): rawResponse_testIntInput2 => {
    success: success
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
}

type relayOperationNode
type operationType = RescriptRelay.mutationNode<relayOperationNode>


let node: operationType = %raw(json` (function(){
var v0 = {
  "defaultValue": null,
  "kind": "LocalArgument",
  "name": "friendId"
},
v1 = {
  "defaultValue": null,
  "kind": "LocalArgument",
  "name": "id"
},
v2 = {
  "defaultValue": null,
  "kind": "LocalArgument",
  "name": "ids"
},
v3 = [
  {
    "alias": null,
    "args": null,
    "kind": "ScalarField",
    "name": "success",
    "storageKey": null
  }
],
v4 = {
  "alias": null,
  "args": null,
  "kind": "ScalarField",
  "name": "id",
  "storageKey": null
},
v5 = [
  {
    "alias": null,
    "args": [
      {
        "kind": "Variable",
        "name": "id",
        "variableName": "id"
      }
    ],
    "concreteType": "TestIntInputPayload",
    "kind": "LinkedField",
    "name": "testIntInput1",
    "plural": false,
    "selections": (v3/*: any*/),
    "storageKey": null
  },
  {
    "alias": null,
    "args": [
      {
        "kind": "Variable",
        "name": "ids",
        "variableName": "ids"
      }
    ],
    "concreteType": "TestIntInputPayload",
    "kind": "LinkedField",
    "name": "testIntInput2",
    "plural": false,
    "selections": (v3/*: any*/),
    "storageKey": null
  },
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
          (v4/*: any*/),
          {
            "alias": null,
            "args": null,
            "concreteType": "User",
            "kind": "LinkedField",
            "name": "friends",
            "plural": true,
            "selections": [
              (v4/*: any*/)
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
    "argumentDefinitions": [
      (v0/*: any*/),
      (v1/*: any*/),
      (v2/*: any*/)
    ],
    "kind": "Fragment",
    "metadata": null,
    "name": "TestMutationWithMultipleTargetsMutation",
    "selections": (v5/*: any*/),
    "type": "Mutation",
    "abstractKey": null
  },
  "kind": "Request",
  "operation": {
    "argumentDefinitions": [
      (v1/*: any*/),
      (v2/*: any*/),
      (v0/*: any*/)
    ],
    "kind": "Operation",
    "name": "TestMutationWithMultipleTargetsMutation",
    "selections": (v5/*: any*/)
  },
  "params": {
    "cacheID": "312aa067064fe644c9b2e4d14ad21bbd",
    "id": null,
    "metadata": {},
    "name": "TestMutationWithMultipleTargetsMutation",
    "operationKind": "mutation",
    "text": "mutation TestMutationWithMultipleTargetsMutation(\n  $id: Int!\n  $ids: [Int!]!\n  $friendId: ID!\n) {\n  testIntInput1(id: $id) {\n    success\n  }\n  testIntInput2(ids: $ids) {\n    success\n  }\n  addFriend(friendId: $friendId) {\n    addedFriend {\n      id\n      friends {\n        id\n      }\n    }\n  }\n}\n"
  }
};
})() `)


