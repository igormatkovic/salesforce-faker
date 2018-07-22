@isTest
public class FakerExampleFactory extends FakerFactoryBase {

    public override String objectName() {
        return 'Contact';
    }

    public override String getLocale() {
        return 'US';
    }

    public override Map<String, Object> define() {

        return new Map<String, Object>{
                'FirstName'     => this.faker.person.firstName(),
                'LastName'      => this.faker.person.lastName(),
                'MiddleName'    => this.faker.person.firstName()
        };
    }
}