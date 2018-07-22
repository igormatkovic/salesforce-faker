@IsTest
class FakerInternetProviderTest {

    @isTest static void testInit() {
        Faker faker = new Faker('US');

        Test.startTest();
        System.assertNotEquals(null, faker.internet.person);
        System.assertNotEquals(null, faker.internet.text);
        System.assert(faker.internet.mapValues.containsKey('freeEmailDomain'));
        System.assert(faker.internet.mapValues.containsKey('tld'));
        System.assert(faker.internet.mapValues.containsKey('urlFormats'));
        System.assert(faker.internet.mapValues.containsKey('emailFormats'));
        System.assert(faker.internet.mapValues.containsKey('safeEmailDomain'));
        System.assert(faker.internet.mapValues.containsKey('usernameFormats'));
        System.assert(faker.internet.mapValues.containsKey('webExtension'));
        System.assert(faker.internet.mapValues.containsKey('domainName'));
        System.assert(faker.internet.mapValues.containsKey('domainWord'));
        System.assert(faker.internet.mapValues.containsKey('webExtension'));
        System.assert(faker.internet.mapValues.containsKey('firstName'));
        System.assert(faker.internet.mapValues.containsKey('lastName'));
        Test.stopTest();
    }

    @isTest static void testGeneratedValues() {
        Faker faker = new Faker('US');

        Test.startTest();

        System.assertNotEquals(null, faker.internet.username());
        String password = faker.internet.password(5,10);
        String email = faker.internet.email();
        String safeEmail = faker.internet.safeEmail();
        String companyEmail = faker.internet.companyEmail();
        String freeEmail = faker.internet.freeEmail();
        System.assert(email.contains('@'));
        System.assert(safeEmail.contains('@'));
        System.assert(companyEmail.contains('@'));
        System.assert(freeEmail.contains('@'));

        String tld = faker.internet.tld();
        System.assert(faker.internet.tld.contains(tld));

        String domainWord = faker.internet.domainWord();
        System.assert(faker.internet.domainWord.contains(domainWord));

        String domainName = faker.internet.domainName();
        System.assert(faker.internet.domainName.contains(domainName));

        String url = faker.internet.url();
        System.assert(url.contains('http'));

        String slug = faker.internet.slug(3, '-');
        System.assert(slug.contains('-'));

        String slugSecond = faker.internet.slug(3);
        System.assert(slugSecond.contains('_'));

        String ipv4 = faker.internet.ipv4();
        System.assert(ipv4.length() >=7 && ipv4.length() <=15);

        String localIpv4 = faker.internet.localIpv4();
        System.assert(localIpv4.contains('10.') || localIpv4.contains('192.168.'));

        String ipv6 = faker.internet.ipv6();
        System.assertEquals(39, ipv6.length());

        String macAddress = faker.internet.macAddress();
        System.assertEquals(17, macAddress.length());

        Test.stopTest();
    }
}