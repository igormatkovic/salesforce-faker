public class FakerFactory {

    public static SObject create(FakerFactoryBase newObject) {
        return newObject.create();
    }

    public static SObject make(FakerFactoryBase newObject) {
        return newObject.make();
    }
    
    public static SObject create(FakerFactoryBase newObject, Map<String, Object> values) {
        return newObject.create(values);
    }

    public static SObject make(FakerFactoryBase newObject, Map<String, Object> values) {
        return newObject.make(values);
    }
    
    
}