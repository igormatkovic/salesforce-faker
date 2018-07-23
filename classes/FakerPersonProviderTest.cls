@IsTest
class FakerPersonProviderTest {

    @isTest static void testInit() {
        Faker faker = new Faker('US');

        Test.startTest();
        System.assertNotEquals(null, faker.person.nameFormatsMale);
        System.assertNotEquals(null, faker.person.nameFormatsFemale);
        System.assertNotEquals(null, faker.person.firstNameFemale);
        System.assertNotEquals(null, faker.person.firstNameMale);
        System.assertNotEquals(null, faker.person.lastName);
        System.assertNotEquals(null, faker.person.suffix);
        System.assertNotEquals(null, faker.person.gender);
        System.assertNotEquals(null, faker.person.titleMale);
        System.assertNotEquals(null, faker.person.titleFemale);
        System.assertNotEquals(null, faker.person.jobTitle);
        System.assert(faker.person.mapValues.containsKey('firstNameMale'));
        System.assert(faker.person.mapValues.containsKey('firstNameFemale'));
        System.assert(faker.person.mapValues.containsKey('lastName'));
        System.assert(faker.person.mapValues.containsKey('suffix'));
        System.assert(faker.person.mapValues.containsKey('titleMale'));
        System.assert(faker.person.mapValues.containsKey('titleFemale'));
        System.assert(faker.person.mapValues.containsKey('gender'));
        System.assert(faker.person.mapValues.containsKey('jobTitle'));
        Test.stopTest();
    }

    @isTest static void testGeneratedValues() {
        Faker faker = new Faker('US');

        Test.startTest();
        String name = faker.person.name();
        String firstName = faker.person.firstName();
        String lastName = faker.person.lastName();
        String suffix = faker.person.suffix();
        String title = faker.person.title();
        String gender = faker.person.gender();
        String jobTitle = faker.person.jobTitle();
        String ssn = faker.person.ssn();
        String phone = faker.person.phone();
        Date birthday = faker.person.birthday();
        String phoneAreCode = faker.person.phone(702);
        String picture = faker.person.picture(200,200);

        System.assertNotEquals(null, name);
        System.assert(faker.person.firstNameMale.contains(firstName) || faker.person.firstNameFemale.contains(firstName));
        System.assert(faker.person.lastName.contains(lastName));
        System.assert(faker.person.suffix.contains(suffix));
        System.assert(faker.person.titleMale.contains(title) || faker.person.titleFemale.contains(title));
        System.assert(faker.person.gender.contains(gender));
        System.assert(faker.person.jobTitle.contains(jobTitle));

        System.assertEquals(11, ssn.length());
        System.assertEquals(14, phone.length());
        System.assertEquals(14, phoneAreCode.length());
        System.assert(phoneAreCode.contains('(702)'));

        System.assert(Date.today() > birthday);
        System.assert(picture.contains('200'));

        Test.stopTest();
    }
}
