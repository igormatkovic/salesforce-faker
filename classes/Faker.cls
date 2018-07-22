public class Faker extends FakerBase {

    public FakerPersonProvider person;
    public FakerAddressProvider address;
    public FakerTextProvider text;
    public FakerInternetProvider internet;

    public Faker(String locale) {
        // Here is where the IF will go
        this.person = new FakerUsPersonProvider();
        this.address = new FakerUsAddressProvider();
        this.text = new FakerUsTextProvider();

        this.internet = new FakerInternetProvider(this.person, this.text);
    }
}