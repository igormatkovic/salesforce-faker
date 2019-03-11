public virtual class FakerFactoryBase implements FakerFactoryInterface {
    public Faker faker {get; set;}
    public Map<String, Object> data {get; set;}

    public FakerFactoryBase() {
        this.faker = new Faker(this.getLocale());
        this.data = this.define();
    }

    public SObject make() {
        return this.getObject(null);
    }



    public SObject create() {
        SObject newObject = this.getObject(null);
        insert newObject;
        return newObject;
    }
    
    public SObject create(Map<String, Object> values) {
        SObject newObject = this.getObject(values);
        insert newObject;
        return newObject;
    }
    
    public SObject make(Map<String, Object> values) {
        return this.getObject(values);
    }

    public sObject getObject(Map<String, Object> values) {
 
        SObject newObject = this.createNewSobject(this.objectName());
		Map<String, Object> mapping = mergeMapping(values, this.data);
        for(String d : mapping.keySet()) {
            newObject.put(d, mapping.get(d));   
        }
        return newObject;
    }
    
    public Map<String, Object> mergeMapping(Map<String, Object> map1, Map<String, Object> map2) {
        if(map1 == null) {
            return map2;
        }
        
        Map<String, Object> result = new Map<String, Object>();
        for(String d : map1.keySet()) { 
        	result.put(d, map1.get(d));
        }
        
        for(String d : map2.keySet()) { 
            if(!result.containsKey(d)) {
                result.put(d, map2.get(d));
            }
        }
         
        return result;
    }

    public SObject createNewSobject(String t) {
        /* Call global describe to get the map of string to token. */
        Map<String, Schema.SObjectType> gd = Schema.getGlobalDescribe();

        /* Get the token for the sobject based on the type. */
        Schema.SObjectType st = gd.get(t);
        System.assert(st != null,'Type provided: "' + t + '" doesnt map to an sobject token in this org.');

        /* Instantiate the sobject from the token. */
        return st.newSobject();
    }

    public virtual Map<String, Object> define() {
        return null;
    }
    public virtual String objectName() {
        return null;
    }
    public virtual String getLocale() {
        return 'US';
    }
}