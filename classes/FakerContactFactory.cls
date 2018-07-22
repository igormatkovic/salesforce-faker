/**
 * Created by igor on 12/07/2018.
 */

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
                'Website'      => this.faker.internet.website()
        };
    }
}