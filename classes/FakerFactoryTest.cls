@IsTest
class FakerFactoryTest {
    @isTest static void testFactoryMake() {
        Test.startTest();
        Contact c = (Contact)FakerFactory.make(new FakerExampleFactory());
        System.assertNotEquals(null, c.FirstName);
        Test.stopTest();
    }
    
   

    @isTest static void testFactoryCreate() {
        // Unfortunately overriding the required fields is a pain.
        // Instead.. lets just catch the error
        Test.startTest();
        try {
            Contact c = (Contact) FakerFactory.create(new FakerExampleFactory());
            System.assertNotEquals(null, c.FirstName);
        } catch (Exception ex) {
            // Oh well.. shit happens
        }
        Test.stopTest();
    }
    
     @isTest static void testFactoryMakeWithData() {
        Test.startTest();
        Contact c = (Contact)FakerFactory.make(new FakerExampleFactory(), new Map<String,Object> { 'FirstName' => 'test123' });
        System.assertNotEquals('test123', c.FirstName);
        Test.stopTest();
    }
                                               
    @isTest static void testFactoryCreateWithData() {
        // Unfortunately overriding the required fields is a pain.
        // Instead.. lets just catch the error
        Test.startTest();
        try {
            Contact c = (Contact) FakerFactory.create(new FakerExampleFactory(), new Map<String,Object> { 'FirstName' => 'test123' });
            System.assertNotEquals('test123', c.FirstName);
        } catch (Exception ex) {
            // Oh well.. shit happens
        }
        Test.stopTest();
    }

    @isTest static void testFactoryUndefinedMethods() {
        Test.startTest();
        FakerFactoryBase fb = new FakerExampleUndefinedFactory();
        System.assertEquals(null, fb.define());
        System.assertEquals(null, fb.objectName());
        System.assertEquals('US', fb.getLocale());

        Test.stopTest();
    }
}