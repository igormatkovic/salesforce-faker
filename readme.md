# Salesforce Faker

Salesforce Faker is a native Salesforce library that generates fake data for you.

Faker is inspired by PHP's [Faker](https://github.com/fzaninotto/Faker).  
FakerFactory is inspired by [Laravel Model Factory](https://laravel.com/docs/5.6/seeding#using-model-factories).

# Table of Contents

- [Installation](#installation)
- [Basic Usage](#basic-usage)
- [Formatters](#formatters)
- [Base](#fakerbase-faker)
- [Text](#fakertextprovider-fakertext)
- [Person](#fakerpersonprovider-fakerperson)
- [Address](#fakeraddressprovider-fakeraddress)
- [Faker Factory](#fakerfactory)
- [License](#license)


## Installation

<a href="https://goo.gl/Zb2d1x">
    <img alt="Deploy to Salesforce" src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/deploy.png">
</a>

## Basic Usage

Use `new Faker('US')` to create and initialize a faker generator.

```java

Faker faker = new Faker('US');

Integer randomInteger = faker.randomInteger(3);    // 391

String firstName = faker.person.firstName();       // Iggy

String lastName = faker.person.firstName();        // Holmes

String street = faker.address.street();            // 3049 Sunset Avenue
```

Even if this example shows a property access, each call to `faker.person.firstName()` yields a different (random) result.

```java

Faker faker = new Faker('US');

faker.person.firstName(); // Felicity
faker.person.firstName(); // Jody
faker.person.firstName(); // Jammie
faker.person.firstName(); // Sylvester
faker.person.firstName(); // Nigel
```
## Formatters

Each of the generator properties (like `name`, `address`, and `realText`) are called "formatters". A faker generator has many of them, packaged in "providers". Here is a list of the bundled formatters in the default locale.

### `FakerBase faker`

    String randomElement(new List<String>{'a','b','c') // c

    Integer randomElement(List<Integer>{1,2,3,4,5)     // 4

    Date randomPastDate()                              // 2017-01-01

    Date randomFutureDate()                            // 2019-10-05

    Time randomTime()                                  // 11:20:40

    Datetime randomPastDateTime()                      // 2016-03-05 05:09:44

    Datetime randomFutureDateTime()                    // 2020-05-11 06:09:44

    Boolean randomBoolean()                            // false

    Boolean randomBoolean(85)                          // 85% of being true

    String randomString(5)                             // 5 character length string [a-zA-Z] EUkfn

    String randomCharacter(10)                         // 10 character length string [a-zA-Z] 8K#$(G)$J@

    Integer randomIntegerMaxDigits(6)                  // 395894

    Integer randomInteger(3)                           // 543

    Integer randomInteger(10)                          // 4090403 - max is 7 digits. SF doesn't like more

    Integer randomIntegerBetween(10-100)               // 74

    Integer randomDecimalMaxDigits(4,7)                // 489.4819489

    Integer randomDecimal(2,3)                         // 33.549

    String bothify('Hello ##??')                       // Hello 39ui

    String toAscii('ÜäĂÇ')                             // UaAC

### `FakerTextProvider faker.text`

    List<String> realWords(3)                          // 'think','right','please'
    String realText(50)                                // How funny it will seem to come out among the people

### `FakerPersonProvider faker.person`

    String title()                                     // 'Ms.'
    String title('male')                               // 'Mr.'
    String title('female')                             // 'Miss.'
    String suffix                                      // 'Jr.'
    String name('female')                              // 'Dr. Zane Stroman'
    String name()                                      // 'Janet Einstein'
    String firstName()                                 // 'Maynard'
    String firstName('female')                         // 'Betsy'
    String lastName()                                  // 'Zulauf'
    String jobTitle()                                  // 'Radiation Therapist'
    String ssn()                                       // '394-03-9503'
    String gender()                                    // 'female'
    String phone()                                     // '(702) 888-8888'
    String phone(123)                                  // '(123) 488-4999'
    Date birthday()                                    // 1985-01-23
    String picture(100,100)                            // 'https://picsum.photos/100/100/?random'

### `FakerAddressProvider faker.address`

    String city()                                      // 'Lake'
    String state()                                     // 'New Mexico'
    String stateCode()                                 // 'OH'
    String citySuffix()                                // 'borough'
    String street()                                    // '3094 E. Sunset Rd'
    String address()                                   // '3765 E. Sunset Rd, Las Vegas NV 89120'
    String streetSuffix()                              // 'Lane'
    String streetPrefix()                              // 'North'
    String buildingNumber()                            // '484'
    String unit()                                      // 'B12'
    Integer zip()                                      // 89120
    String country()                                   // 'Serbia'
    Decimal latitude()                                 // 46.100571
    Decimal longitude()                                // 19.663298

### `Faker\Provider\Internet`

    String email()                                     // 'tkshlerin@collins.com'
    String safeEmail()                                 // 'king.alford@example.org'
    String freeEmail()                                 // 'bradley72@gmail.com'
    String companyEmail()                              // 'russel.durward@mcdermott.org'
    String freeEmailDomain()                           // 'yahoo.com'
    String safeEmailDomain()                           // 'example.org'
    String username()                                  // 'wade55'
    String password(5,10)                              // 'k&|X+a45' between 5 and 10 characters
    String domainName()                                // 'wolffdeckow.net'
    String domainWord()                                // 'feeney'
    String tld()                                       // 'biz'
    String url()                                       // 'http://www.skilesdonnelly.biz/architecto-sit-et.html'
    String slug(3)                                     // 'pack_hello_house'
    String slug(3, '-')                                // 'pack-hello-house'
    String ipv4()                                      // '109.133.32.252'
    String localIpv4()                                 // '10.242.58.8'
    String ipv6()                                      // '8e65:933d:22ee:a232:f1c1:2741:1f10:117c'
    String macAddress()                                // '43:85:B7:08:10:CA'

## `FakerFactory`

Salesforce FakerFactory is a convenient way to generate new Records with random fake data.
Before we can generate the data we need to first create a map of the data.

```java

public class FakerContactFactory extends FakerFactoryBase {

    public override String objectName() {
        return 'Contact';
    }

    public override Map<String, Object> define() {

        return new Map<String, Object>{
                'FirstName'     => this.faker.person.firstName(),
                'LastName'      => this.faker.person.lastName(),
                'MiddleName'    => this.faker.person.firstName(),
                'BirthDay'      => this.faker.person.birthday(),
                'JobTitle'      => this.faker.person.jobTitle(),
                'Website'       => this.faker.internet.url()
        };
    }
}

```


After you have the factory map created you can use it in your tests or seeders like this:

```java

Contact c = (Contact) FakerFactory.create(new FakerContactFactory());

System.debug(c.Id);     // 00541000001Kqd4
System.debug(c.Name);   // James Bond

```


If you need to create a lot of users without hitting the SF limits:

```java

List<Contact> contacts = new List<Contact>();

for(Integer i = 0; i < 100; i++) {
  contacts.add((Contact) FakerFactory.make(new FakerContactFactory()));
}

insert contacts;


System.debug(contacts.size()); // 100

```
## License

Salesforce Faker is released under the GNU General Public License v3.0. See the bundled LICENSE file for details.

## License

Salesforce Faker is released under the GNU General Public License v3.0. See the bundled LICENSE file for details.
