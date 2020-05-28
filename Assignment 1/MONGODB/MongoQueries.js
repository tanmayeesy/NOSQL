db.getCollection("titanictable").find({})
//1 List alphabetically the names of all female passengers that survived

use titanic;
db.getCollection("titanictable").find(
    { 
        "fields.sex" : "female", 
        "fields.survived" : "Yes"
    }, 
    { 
        "fields.name" : 1.0, 
        "fields.sex" : 1.0, 
        "fields.survived" : 1.0
    }
).sort(
    { 
        "fields.name" : 1.0
    }
);

//2 Output by class, the names of children who survived

use titanic;
db.getCollection("titanictable").find(
    { 
        "fields.survived" : "Yes", 
        "fields.age" : { 
            "$lt" : 18.0
        }
    }, 
    { 
        "fields.name" : 1.0, 
        "fields.pclass" : 1.0
    }
).sort(
    { 
        "fields.name" : 1.0, 
        "fields.pclass" : 1.0
    }
);


    



//3 Output by class, the names of children who did not survive
db.getCollection("titanictable").find(
    { 
        "fields.survived" : "No", 
        "fields.age" : { 
            "$lt" : 18.0
        }
    }, 
    { 
        "fields.name" : 1.0, 
        "fields.pclass" : 1.0
    }
).sort(
    { 
        "fields.name" : 1.0, 
        "fields.pclass" : 1.0
    }
);

//4 Count of children in each class that survived

db.getCollection("titanictable").find(
    { 
        "fields.survived" : "Yes", 
        "fields.age" : { 
            "$lt" : 18.0
        }
    }, 
    { 
        "fields.name" : 1.0, 
        "fields.pclass" : 1.0
    }
).sort(
    { 
        "fields.name" : 1.0, 
        "fields.pclass" : 1.0
    }
).count();



//5 Count of children in each class who did not survive

db.getCollection("titanictable").find(
    { 
        "fields.survived" : "No", 
        "fields.age" : { 
            "$lt" : 18.0
        }
    }, 
    { 
        "fields.name" : 1.0, 
        "fields.pclass" : 1.0
    }
).sort(
    { 
        "fields.name" : 1.0, 
        "fields.pclass" : 1.0
    }
).count();

    
    
    
    
    
    
    
    
    
    
    
    
    