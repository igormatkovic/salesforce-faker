/**
 * Created by igor on 09/07/2018.
 */

public virtual class FakerAddressProvider extends FakerBase {
    public List<String> streetSuffix;
    public List<String> streetPrefix;

    public List<String> streetAddressFormats = new List<String>{
            '### {{streetPrefix}} {{street}}',
            '## {{street}}', '{{buildingNumber}} {{street}} {{streetSuffix}} ?##',
            '### {{streetPrefix}} {{street}} {{streetSuffix}}'
    };
    public List<String> addressFormats = new List<String>{
            '### {{street}}, {{city}} {{zip}}',
            '##  {{streetPrefix}} {{street}} {{unit}}, {{city}} #####',
            '### {{streetPrefix}} {{street}}, {{city}} #####',
            '### {{street}} {{streetSuffix}}, {{city}} #####-###',
            '##  {{street}} {{streetSuffix}} {{unit}}, {{city}} #####-###',
            '### {{streetPrefix}} {{street}} {{streetSuffix}}, {{city}} #####'
    };
    public List<String> city;
    public List<String> country;
    public List<String> state;
    public List<String> stateCode;
    public List<String> street;


    public void init() {
        this.mapValues = new Map<String, List<String>>();
        this.mapValues.put('city', this.city);
        this.mapValues.put('country', this.country);
        this.mapValues.put('state', this.state);
        this.mapValues.put('stateCode', this.stateCode);
        this.mapValues.put('street', this.street);
        this.mapValues.put('streetPrefix', this.streetPrefix);
        this.mapValues.put('streetSuffix', this.streetSuffix);
    }


    public override String generate(String element) {
        element = element.replace('{{zip}}', String.valueOf(this.zip()));
        element = element.replace('{{buildingNumber}}', this.buildingNumber());
        element = element.replace('{{unit}}', this.unit());

        return element;
    }

    public String city() {
        return this.randomElement(this.city);
    }

    public String country() {
        return this.randomElement(this.country);
    }

    public String state() {
        return this.randomElement(this.state);
    }

    public String street() {
        return this.generate( this.randomElement(this.streetAddressFormats));
    }
    public String streetPrefix() {
        return this.randomElement(this.streetPrefix);
    }
    public String streetSuffix() {
        return this.randomElement(this.streetSuffix);
    }

    public String unit() {
        return this.randomString(1)+String.valueOf(this.randomInteger(3));
    }

    public String buildingNumber() {
        return String.valueOf(this.randomInteger(3));
    }


    public String address() {
        return this.generate(this.randomElement(this.addressFormats));
    }

    public String stateCode() {
        return this.randomElement(this.stateCode);
    }

    public Integer zip() {
        return this.randomInteger(5);
    }

    public Decimal coordinate(Integer fromInt, Integer toInt) {
        Decimal coordinate = Decimal.valueOf(this.randomIntegerBetween(fromInt, toInt));
        coordinate = (coordinate + this.randomDecimal(0, 6)) * (this.randomBoolean() ? -1 : 1);
        return coordinate;
    }

    public Decimal latitude() {
        return this.coordinate(0, 90);
    }

    public Decimal longitude() {
        return this.coordinate(0, 180);
    }
}
