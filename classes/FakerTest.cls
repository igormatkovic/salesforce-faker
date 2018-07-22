@IsTest
class FakerTest {
    @isTest static void testInitialize() {
        Test.startTest();
        Faker faker = new Faker('US');
        Test.stopTest();
    }
}