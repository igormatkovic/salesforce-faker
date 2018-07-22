/**
 * Created by igor on 09/07/2018.
 */

public virtual class FakerPersonProvider extends FakerBase {
    public List<String> nameFormats;
    public List<String> firstName;
    public List<String> lastName;
    public List<String> suffix;
    public List<String> gender;
    public List<String> title;
    public List<String> jobTitle;

    public void init() {
        this.mapValues = new Map<String, List<String>>();
        this.mapValues.put('firstName', this.firstName);
        this.mapValues.put('lastName', this.lastName);
        this.mapValues.put('jobTitle', this.jobTitle);
        this.mapValues.put('gender', this.gender);
        this.mapValues.put('suffix', this.suffix);
        this.mapValues.put('title', this.title);
    }

    public String name() {
        return this.generate(this.randomElement(this.nameFormats));
    }

    public String suffix() {
        return this.generate(this.randomElement(this.suffix));
    }

    public String firstName() {
        return this.randomElement(this.firstName);
    }

    public String lastName() {
        return this.randomElement(this.lastName);
    }

    public String title() {
        return this.randomElement(this.title);
    }

    public String jobTitle() {
        return this.randomElement(this.jobTitle);
    }

    public String ssn() {
        return String.valueOf(Math.random()).substring(2, 5) + '-' +String.valueOf(Math.random()).substring(2, 4)+ '-'+String.valueOf(Math.random()).substring(2, 6);
    }

    public String gender() {
        return this.randomElement(this.gender);
    }

    public String phone() {
        return '('+String.valueOf(Math.random()).substring(2, 5) + ') ' +String.valueOf(Math.random()).substring(2, 5) + '-'+String.valueOf(Math.random()).substring(2, 6);
    }

    public String phone(Integer areaCode) {
        return '('+String.valueOf(areaCode) + ') ' +String.valueOf(Math.random()).substring(2, 5) + '-'+String.valueOf(Math.random()).substring(2, 6);
    }

    public Date birthday() {
        return this.randomPastDate();
    }

    public String picture(Integer width, Integer height) {
        return 'https://picsum.photos/'+String.valueOf(width)+'/'+String.valueOf(height)+'/?random';
    }
}