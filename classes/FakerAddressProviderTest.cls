@IsTest
class FakerAddressProviderTest {

    @isTest static void testInit() {
        Faker faker = new Faker('US');

        Test.startTest();
        System.assertNotEquals(null, faker.internet.person);
        System.assertNotEquals(null, faker.internet.text);

        System.assert(faker.address.mapValues.containsKey('city'));
        System.assert(faker.address.mapValues.containsKey('country'));
        System.assert(faker.address.mapValues.containsKey('state'));
        System.assert(faker.address.mapValues.containsKey('stateCode'));
        System.assert(faker.address.mapValues.containsKey('street'));
        System.assert(faker.address.mapValues.containsKey('streetPrefix'));
        System.assert(faker.address.mapValues.containsKey('streetSuffix'));
        Test.stopTest();
    }

    @isTest static void testMethods() {
        Faker faker = new Faker('US');

        Test.startTest();
        System.assert(faker.address.city.contains(faker.address.city()));
        System.assert(faker.address.country.contains(faker.address.country()));
        System.assert(faker.address.state.contains(faker.address.state()));
        System.assert(faker.address.stateCode.contains(faker.address.stateCode()));
        System.assert(faker.address.streetSuffix.contains(faker.address.streetSuffix()));
        System.assert(faker.address.streetPrefix.contains(faker.address.streetPrefix()));

        String unit = faker.address.unit();
        System.assert(unit.length() > 3);

        String buildingNumber = faker.address.buildingNumber();
        System.assertEquals(3, buildingNumber.length());

        String address = faker.address.address();
        System.assert(address.length() > 5);

        String street = faker.address.street();
        System.assert(street.length() > 5);

        Integer zip = faker.address.zip();
        System.assert(zip < 100000 && zip > 9999);

        Decimal latitude = faker.address.latitude();
        System.assert(latitude >= -90.0 && latitude<= 90.0);

        Decimal longitude = faker.address.longitude();
        System.assert(longitude >= -180.0 && longitude<= 180.0);

        Test.stopTest();
    }
}
