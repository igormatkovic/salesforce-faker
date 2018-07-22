@IsTest
class FakerBaseTest {
    @isTest static void testRandomGenerators() {
        List<String> stringElements = new List<String>{'one', 'two', 'three'};
        List<Integer> integerElements = new List<Integer>{1, 2, 3};

        Faker faker = new Faker('US');

        Test.startTest();

        String randomStringElement = faker.randomElement(stringElements);
        System.assert(stringElements.contains(randomStringElement), 'Missing random String element');

        Integer randomIntegerElement = faker.randomElement(integerElements);
        System.assert(integerElements.contains(randomIntegerElement), 'Missing random Integer element');

        Date randomPastDate = faker.randomPastDate();
        System.assert(Date.today() > randomPastDate, 'Random Past Date is not in the past!');

        Date randomFutureDate = faker.randomFutureDate();
        System.assert(Date.today() < randomFutureDate, 'Random Future Date is not in the future!');

        System.assertNotEquals(null, faker.randomTime(), 'Random time is NULL!');

        Datetime randomPastDateTime = faker.randomPastDateTime();
        System.assert(Datetime.now() > randomPastDateTime, 'Random Past DateTime is not in the past!');

        Datetime randomFutureDateTime = faker.randomFutureDateTime();
        System.assert(Datetime.now() < randomFutureDateTime, 'Random Future DateTime is not in the future!');

        System.assertNotEquals(null, faker.randomBoolean(), 'How can a randomBool be null?');
        System.assert(faker.randomBoolean(100), 'Expected False on randomBoolean(100).. got false'); // 100% chance of being true
        System.assertEquals(false, faker.randomBoolean(0), 'Expected False on randomBoolean(0).. got true'); // 0% chance of being true

        String randomString = faker.randomString(5); // 5 letter string or letters is expected
        System.assertEquals(5, randomString.length(), '5 letter string A-Za-z expected. Got :'+String.valueOf(randomString.length()));

        String randomCharacter = faker.randomCharacter(5); // 5 letter string is expected
        System.assertEquals(5, randomCharacter.length(), '5 letter string of random characters expected. Got :'+String.valueOf(randomString.length()));

        Integer randomIntegerMaxDigits = faker.randomIntegerMaxDigits(5);
        System.assert(100000 > randomIntegerMaxDigits, 'randomIntegerMaxDigits returned more then 5 digits');


        System.assertEquals(0, faker.randomInteger(0), 'randomInteger with 0 digits didnt return zero');

        Integer randomIntegerOverSever = faker.randomInteger(8);
        System.assert(9999999 >= randomIntegerOverSever, 'randomInteger failed to limit to 7 digits');

        Integer randomIntegerBetween = faker.randomIntegerBetween(200,300);
        System.assert(randomIntegerBetween > 200 && randomIntegerBetween < 300);

        Decimal randomDecimal = faker.randomDecimal(2,3);
        System.assertEquals(5, randomDecimal.precision());
        System.assertEquals(3, randomDecimal.scale());

        Decimal randomDecimalMaxDigits = faker.randomDecimalMaxDigits(2,3);
        System.assert(100.00 > randomDecimalMaxDigits);
        Test.stopTest();
    }

    @isTest static void testBothify() {
        Faker faker = new Faker('US');

        Test.startTest();

        String stringFormat = '???';
        String stringResult = faker.bothify(stringFormat);
        System.assertEquals(3, stringResult.length());

        String integerFormat = '###';
        String integerResult = faker.bothify(integerFormat);
        Integer integerResultValue = Integer.valueOf(integerResult);
        System.assertEquals(3, integerResult.length());
        System.assert(1000 > integerResultValue);
        Test.stopTest();
    }

    @isTest static void testToAscii() {
        Faker faker = new Faker('US');

        Test.startTest();

        String stringFormat = 'ÜäĂÇ';
        System.assertEquals('UaAC', faker.toAscii(stringFormat));
        Test.stopTest();
    }
}