Name: "Doors"
RootId: 9316278762625948296
Objects {
  Id: 2557272318561996927
  Name: "Craftsman Exterior Door"
  Transform {
    Location {
      X: -1900
      Y: -2405
      Z: -125
    }
    Rotation {
      Yaw: -179.999954
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9316278762625948296
  ChildIds: 17891216238087357100
  ChildIds: 13060783589999114918
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 9276368872602565519
    SubobjectId: 7489609022819470378
    InstanceId: 4554814373906905421
    TemplateId: 4209643163269532382
    NestedInstanceIds: 2338920921065873059
    OuterTemplateIds: 14583684993468570256
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13060783589999114918
  Name: "Trigger"
  Transform {
    Location {
      X: 100
      Z: 175
    }
    Rotation {
      Yaw: 89.9999619
    }
    Scale {
      X: 2.42237067
      Y: 2.52452612
      Z: 2.75
    }
  }
  ParentId: 2557272318561996927
  ChildIds: 2249372540725363331
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Trigger {
    Interactable: true
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
    InteractionTemplate {
    }
    BreadcrumbTemplate {
    }
  }
  InstanceHistory {
    SelfId: 11369211872795874
    SubobjectId: 16673526293753342791
    InstanceId: 4554814373906905421
    TemplateId: 4209643163269532382
    NestedInstanceIds: 2338920921065873059
    OuterTemplateIds: 14583684993468570256
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2249372540725363331
  Name: "DoorScript"
  Transform {
    Location {
      X: -5.51172479e-06
      Y: -9.90292168
      Z: -13.613637
    }
    Rotation {
    }
    Scale {
      X: 0.350293666
      Y: 0.594170868
      Z: 1
    }
  }
  ParentId: 13060783589999114918
  UnregisteredParameters {
    Overrides {
      Name: "cs:Door"
      ObjectReference {
        SelfId: 17891216238087357100
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 1300488817410129582
    }
  }
  InstanceHistory {
    SelfId: 13279110216546846066
    SubobjectId: 6846816740870550231
    InstanceId: 4554814373906905421
    TemplateId: 4209643163269532382
    NestedInstanceIds: 2338920921065873059
    OuterTemplateIds: 14583684993468570256
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17891216238087357100
  Name: "Door"
  Transform {
    Location {
    }
    Rotation {
      Yaw: -179.999969
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2557272318561996927
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Door"
  }
  InstanceHistory {
    SelfId: 337722171705792275
    SubobjectId: 16421236296506958006
    InstanceId: 4554814373906905421
    TemplateId: 4209643163269532382
    NestedInstanceIds: 2338920921065873059
    OuterTemplateIds: 14583684993468570256
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2263412041457077004
  Name: "Garage Door"
  Transform {
    Location {
      X: -1600
      Y: -800
      Z: 310
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9316278762625948296
  ChildIds: 16220760785300943088
  ChildIds: 8960542278504630723
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 14271777409810230266
    SubobjectId: 2396950872550448223
    InstanceId: 4554814373906905421
    TemplateId: 4209643163269532382
    NestedInstanceIds: 2338920921065873059
    OuterTemplateIds: 14583684993468570256
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8960542278504630723
  Name: "Trigger"
  Transform {
    Location {
      Y: 10
      Z: -260
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 4
      Y: 10
      Z: 2.75
    }
  }
  ParentId: 2263412041457077004
  ChildIds: 7447221475823608640
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Trigger {
    Interactable: true
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
    InteractionTemplate {
    }
    BreadcrumbTemplate {
    }
  }
  InstanceHistory {
    SelfId: 4870004380331923270
    SubobjectId: 11878697842342600931
    InstanceId: 4554814373906905421
    TemplateId: 4209643163269532382
    NestedInstanceIds: 2338920921065873059
    OuterTemplateIds: 14583684993468570256
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7447221475823608640
  Name: "GarageDoorScript"
  Transform {
    Location {
      X: -1.33514404e-05
      Y: -9.90291882
      Z: -13.613637
    }
    Rotation {
    }
    Scale {
      X: 0.350293666
      Y: 0.594170868
      Z: 1
    }
  }
  ParentId: 8960542278504630723
  UnregisteredParameters {
    Overrides {
      Name: "cs:Door"
      ObjectReference {
        SelfId: 16220760785300943088
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 16224977537477409922
    }
  }
  InstanceHistory {
    SelfId: 11156357642044499132
    SubobjectId: 9052094259016405785
    InstanceId: 4554814373906905421
    TemplateId: 4209643163269532382
    NestedInstanceIds: 2338920921065873059
    OuterTemplateIds: 14583684993468570256
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16220760785300943088
  Name: "Door"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2263412041457077004
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Door_1"
  }
  InstanceHistory {
    SelfId: 14271934397588617606
    SubobjectId: 2403865956464119331
    InstanceId: 4554814373906905421
    TemplateId: 4209643163269532382
    NestedInstanceIds: 2338920921065873059
    OuterTemplateIds: 14583684993468570256
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
