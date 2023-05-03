namespace db;
using { cuid, managed  } from '@sap/cds/common';

@assert.unique.name:[projectName]
entity Projects : managed{
    key projectID: UUID;
    projectName : String not null;
}


entity Objects :  managed{
    key objectID: UUID;
    projectID: String;
    objectName : String not null;
    objectType:String;
    complexity:String;
    hours:Integer;
}

entity SubObjects :  managed{
    key subObjectID: UUID;
    projectID: String;
    objectID: String;
    subObjectType:String;
    complexity:String;
    hours:Integer;
    //ricef : Composition of many RICEF on ricef.subobj = $self;
}

entity RICEF : managed {
    key complexityID: String;
    key projectID: String;
    key objectID: String;
    key subObjectID: String;
    eW:Integer;
    oW:Integer;
    ricefTypes: String;
    description:String(500);
    information:String(1000);
    appType: String;
    //subobj: Composition of SubObjects;
}

entity Criteria : managed {
    key complexityID: String(20);
    complexityType:String(10);
    description:String(500);
    information:String(1000);
    W1:Integer;
    W2:Integer;
    W3:Integer;
}

entity Complexity : managed {
    ricefTypes: String;
    projectID: String;
    objectID: String;
    subObjectID: String;
    complexity:String;
    totalWeight:Integer;
    effort:String;
}