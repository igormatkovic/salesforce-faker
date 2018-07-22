public virtual class FakerFactoryBase implements FakerFactoryInterface {
    public Faker faker {get; set;}
    public Map<String, Object> data {get; set;}

    public FakerFactoryBase() {
        this.faker = new Faker(this.getLocale());
        this.data = this.define();
    }

    public SObject make() {
        return this.getObject();
    }

    public SObject create() {
        SObject newObject = this.getObject();
        insert newObject;
        return newObject;
    }

    public sObject getObject() {
        SObject newObject = this.createNewSobject(this.objectName());

        for(String d : this.data.keySet()) {
            newObject.put(d, this.data.get(d));
        }
        return newObject;
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