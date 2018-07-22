
public class FakerFactory {

    public static SObject create(FakerFactoryBase newObject) {
        return newObject.create();
    }

    public static SObject make(FakerFactoryBase newObject) {
        return newObject.make();
    }
}
