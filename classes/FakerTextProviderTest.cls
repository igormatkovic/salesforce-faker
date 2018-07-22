@IsTest
class FakerTextProviderTest {

    @isTest static void testInit() {
        Faker faker = new Faker('US');

        Test.startTest();
        System.assertNotEquals(null, faker.text.text);
        System.assertNotEquals(null, faker.text.sentences);
        Test.stopTest();
    }


    @isTest static void testMethods() {
        Faker faker = new Faker('US');

        Test.startTest();
        List<String> realWords = faker.text.realWords(3);
        System.assertEquals(3, realWords.size());

        String realTextLimited = faker.text.realText(100, 600);
        System.assert(realTextLimited.length() <= 500);
        Test.stopTest();
    }


    @isTest static void testInitCustom() {
        Faker faker = new Faker('US');
        faker.text.text = 'This is a non empty line 1. \n';
        faker.text.text = faker.text.text + 'This is a non empty line 2. \n';
        faker.text.text = faker.text.text + '\n';
        faker.text.text = faker.text.text + '\n';
        faker.text.text = faker.text.text + 'This is a non empty line3. ';
        Test.startTest();
        faker.text.init();
        System.debug(faker.text.sentences);
        System.debug(faker.text.sentences.size());
        System.assertEquals(3, faker.text.sentences.size(), faker.text.sentences);
        Test.stopTest();
    }
}