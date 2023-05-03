using {db} from '../db/schema';

service CatalogService {

    entity Projects           as projection on db.Projects {
        projectID,
        projectName,
        createdAt,
        createdBy,
        modifiedAt,
        modifiedBy
    };

    entity Objects            as projection on db.Objects {
        objectID,
        projectID,
        objectName,
        objectType,
        createdAt,
        createdBy,
        modifiedAt,
        modifiedBy
    };

    entity SubObjects         as projection on db.SubObjects {
        subObjectID,
        projectID,
        objectID,
        subObjectType,
        complexity,
        hours,
        createdAt,
        createdBy,
        modifiedAt,
        modifiedBy,
        //ricef
    };

    entity Criteria as projection on db.Criteria {
        key complexityID,
        complexityType,
        description,
        information : String,
        W1,
        W2,
        W3,
    };

    entity Complexity as projection on db.Complexity {
        ricefTypes,
        projectID,
        objectID,
        subObjectID,
        complexity,
        totalWeight,
        effort,
    };

    entity RICEF as projection on db.RICEF {
        complexityID,
        projectID,
        objectID,
        subObjectID,
        eW,
        oW,
        ricefTypes,
        description,
        information,
        appType
    };
}
