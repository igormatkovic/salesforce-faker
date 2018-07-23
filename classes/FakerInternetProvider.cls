/**
 * Created by igor on 09/07/2018.
 */

public class FakerInternetProvider extends FakerBase {

    public FakerPersonProvider person;
    public FakerTextProvider text;
    public List<String> freeEmailDomain = new List<String>{
            'gmail.com',
            'yahoo.com',
            'hotmail.com'
    };
    public List<String> safeEmailDomain = new List<String>{
            'example.com',
            'example.org',
            'example.net'
    };
    public List<String> tld = new List<String>{
            'com', 'com', 'com', 'com', 'com', 'com', 'biz', 'info', 'net', 'org'
    };
    public List<String> ipv6 = new List<String>{
            '####', '###?', '##??', '#???', '?#?#', '?#??', '#?##', '??##', '???#'
    };
    public List<String> macFormat = new List<String>{
            '##', '#?', '?#'
    };
    public List<String> usernameFormats = new List<String>{
            '{{lastName}}.{{firstNameFemale}}',
            '{{firstNameMale}}.{{lastName}}',
            '{{firstNameFemale}}##',
            '?{{lastName}}',
            '?##{{lastName}}'
    };
    public List<String> domainName = new List<String>{
            'google.com', 'facebook.com', 'doubleclick.net', 'google-analytics.com', 'akamaihd.net',
            'googleapis.com', 'googleadservices.com', 'facebook.net', 'youtube.com', 'twitter.com',
            'scorecardresearch.com', 'microsoft.com', 'ytimg.com', 'googleusercontent.com',
            'apple.com', 'msftncsi.com', 'googletagservices.com', 'adnxs.com', 'yahoo.com',
            'serving-sys.com', 'akadns.net', 'bluekai.com', 'ggpht.com', 'rubiconproject.com',
            'verisign.com', 'addthis.com', 'crashlytics.com', 'amazonaws.com', 'quantserve.com',
            'akamaiedge.net', 'live.com', 'googletagmanager.com', 'revsci.net', 'adadvisor.net',
            'openx.net', 'digicert.com', 'pubmatic.com', 'agkn.com', 'instagram.com', 'mathtag.com',
            'gmail.com', 'rlcdn.com', 'linkedin.com', 'yahooapis.com', 'chartbeat.net',
            'twimg.com', 'turn.com', 'crwdcntrl.net', 'demdex.net', 'betrad.com', 'flurry.com',
            'newrelic.com', 'yimg.com', 'exelator.com', 'acxiom-online.com', 'imrworldwide.com',
            'amazon.com', 'windowsupdate.com', 'mookie1.com', 'rfihub.com', 'omniroot.com',
            'adsrvr.org', 'nexac.com', 'bing.com', 'skype.com', 'godaddy.com', 'sitescout.com',
            'tubemogul.com', 'contextweb.com', 'chartbeat.com', 'akamai.net', 'jquery.com',
            'adap.tv', 'criteo.com', 'krxd.net', 'optimizely.com', 'macromedia.com', 'comodoca.com',
            'casalemedia.com', 'pinterest.com', 'adsymptotic.com', 'symcd.com', 'atwola.com',
            'adobe.com', 'msn.com', 'adsafeprotected.com', 'tapad.com', 'truste.com',
            'symantecliveupdate.com', 'atdmt.com', 't.co', 'avast.com', 'google.co.in',
            'spotxchange.com', 'tidaltv.com', 'adtechus.com', 'everesttech.net', 'addthisedge.com',
            'hola.org', 'btrll.com', 'gwallet.com', 'liverail.com', 'windows.com', 'burstnet.com',
            'disqus.com', 'p-td.com', 'geotrust.com', 'admob.com', 'crittercism.com',
            'bizographics.com', 'wtp101.com', 'ksmobile.com', 'msads.net', 'thawte.com',
            'lijit.com', 'cloudflare.com', 'dropbox.com', 'simpli.fi', 'smartadserver.com',
            'globalsign.com', 'mlnadvertising.com', 'chango.com', 'connexity.net',
            'moatads.com', 's-msn.com', 'entrust.net', 'tribalfusion.com', 'domdex.com',
            'google.com.tr', 'whatsapp.net', 'ntp.org', 'amazon-adsystem.com', 'viber.com',
            'disquscdn.com', 'yandex.ru', 'doubleverify.com', 'bkrtx.com', 'criteo.net',
            'outbrain.com', 'questionmarket.com', 'adform.net', 'yieldmanager.com',
            'typekit.net', 'goo.gl', 'voicefive.com', 'owneriq.net', 'media6degrees.com',
            'tynt.com', 'symcb.com', 'advertising.com', 'audienceiq.com', 'wp.com',
            'rtbidder.net', 'wikipedia.org', 'adroll.com', 'icloud.com', 'gravatar.com'
    };

    public List<String> domainWord = new List<String>{
            'google', 'facebook', 'doubleclick', 'google-analytics', 'akamaihd',
            'googleapis', 'googleadservices', 'facebook', 'youtube', 'twitter',
            'scorecardresearch', 'microsoft', 'ytimg', 'googleusercontent',
            'apple', 'msftncsi', 'googletagservices', 'adnxs', 'yahoo',
            'serving-sys', 'akadns', 'bluekai', 'ggpht', 'rubiconproject',
            'verisign', 'addthis', 'crashlytics', 'amazonaws', 'quantserve',
            'akamaiedge', 'live', 'googletagmanager', 'revsci', 'adadvisor',
            'openx', 'digicert', 'pubmatic', 'agkn', 'instagram', 'mathtag',
            'gmail', 'rlcdn', 'linkedin', 'yahooapis', 'chartbeat',
            'twimg', 'turn', 'crwdcntrl', 'demdex', 'betrad', 'flurry',
            'newrelic', 'yimg', 'exelator', 'acxiom-online', 'imrworldwide',
            'amazon', 'windowsupdate', 'mookie1', 'rfihub', 'omniroot',
            'adsrvr', 'nexac', 'bing', 'skype', 'godaddy', 'sitescout',
            'tubemogul', 'contextweb', 'chartbeat', 'akamai', 'jquery',
            'adap.tv', 'criteo', 'krxd', 'optimizely', 'macromedia', 'comodoca',
            'casalemedia', 'pinterest', 'adsymptotic', 'symcd', 'atwola',
            'adobe', 'msn', 'adsafeprotected', 'tapad', 'truste',
            'symantecliveupdate', 'atdmt', 't', 'avast', 'google',
            'spotxchange', 'tidaltv', 'adtechus', 'everesttech', 'addthisedge',
            'hola', 'btrll', 'gwallet', 'liverail', 'windows', 'burstnet',
            'disqus', 'p-td', 'geotrust', 'admob', 'crittercism',
            'bizographics', 'wtp101', 'ksmobile', 'msads', 'thawte',
            'lijit', 'cloudflare', 'dropbox', 'simpli', 'smartadserver',
            'globalsign', 'mlnadvertising', 'chango', 'connexity',
            'moatads', 's-msn', 'entrust', 'tribalfusion', 'domdex',
            'google', 'whatsapp', 'ntp', 'amazon-adsystem', 'viber',
            'disquscdn', 'yandex.ru', 'doubleverify', 'bkrtx', 'criteo',
            'outbrain', 'questionmarket', 'adform', 'yieldmanager',
            'typekit', 'goo', 'voicefive', 'owneriq', 'media6degrees',
            'tynt', 'symcb', 'advertising', 'audienceiq', 'wp',
            'rtbidder', 'wikipedia', 'adroll', 'icloud', 'gravatar'
    };

    public List<String> emailFormats = new List<String>{
            '{{lastName}}.{{firstNameMale}}@{{domainName}}',
            '{{firstNameFemale}}.{{lastName}}@{{freeEmailDomain}}',
            '{{firstNameMale}}##@{{domainName}}',
            '?{{lastName}}@{{freeEmailDomain}}'
    };
    public List<String> safeEmailFormats = new List<String>{
            '{{lastName}}.{{firstNameFemale}}@{{safeEmailDomain}}',
            '{{firstNameFemale}}.{{lastName}}@{{safeEmailDomain}}',
            '{{firstNameMale}}##@{{safeEmailDomain}}',
            '?{{lastName}}@{{safeEmailDomain}}'
    };
    public List<String> freeEmailFormats = new List<String>{
            '{{lastName}}.{{firstNameFemale}}@{{freeEmailDomain}}',
            '{{firstNameMale}}.{{lastName}}@{{freeEmailDomain}}',
            '{{firstNameMale}}##@{{freeEmailDomain}}',
            '?{{lastName}}@{{freeEmailDomain}}'
    };
    public List<String> companyEmailFormats = new List<String>{
            '{{lastName}}.{{firstNameMale}}@???.{{tld}}',
            '{{firstNameFemale}}.{{lastName}}@??#?.{{tld}}',
            '{{firstNameFemale}}##@???.{{tld}}',
            '?{{lastName}}@??#?.{{tld}}'
    };
    public List<String> webExtensions = new List<String>{
            'html',
            'htm',
            'php',
            'asp'
    };
    public List<String> urlFormats = new List<String>{
            'http://www.{{domainName}}/',
            'http://{{domainName}}/',
            'http://www.{{domainName}}/{{slug}}',
            'http://www.{{domainName}}/{{slug}}',
            'https://www.{{domainName}}/{{slug}}',
            'http://www.{{domainName}}/{{slug}}.{{webExtension}}',
            'http://{{domainName}}/{{slug}}',
            'http://{{domainName}}/{{slug}}',
            'http://{{domainName}}/{{slug}}.{{webExtension}}',
            'https://{{domainName}}/{{slug}}.{{webExtension}}'
    };

    public FakerInternetProvider(FakerPersonProvider personProvider, FakerTextProvider textProvider) {
        this.person = personProvider;
        this.text = textProvider;

        this.mapValues = new Map<String, List<String>>();
        this.mapValues.put('freeEmailDomain', this.freeEmailDomain);
        this.mapValues.put('tld', this.tld);
        this.mapValues.put('urlFormats', this.urlFormats);
        this.mapValues.put('emailFormats', this.emailFormats);
        this.mapValues.put('safeEmailDomain', this.safeEmailDomain);
        this.mapValues.put('usernameFormats', this.usernameFormats);
        this.mapValues.put('webExtension', this.webExtensions);
        this.mapValues.put('domainName', this.domainName);
        this.mapValues.put('domainWord', this.domainWord);
        this.mapValues.put('webExtension', this.webExtensions);
        this.mapValues.put('firstNameFemale', this.person.firstNameFemale);
        this.mapValues.put('firstNameMale', this.person.firstNameMale);
        this.mapValues.put('lastName', this.person.lastName);
    }


    public override String generate(String format) {

        if(format.contains('{{slug}}')) {
            format = format.replace('{{slug}}', this.slug(3));
        }

        return super.generate(format);
    }

    public String username() {
        return this.generate(this.randomElement(this.usernameFormats)).toLowerCase();
    }
    public String password(Integer minLength, Integer maxLength) {
        return this.randomCharacter(this.randomIntegerBetween(minLength, maxLength));
    }

    public String email() {
        return this.generate(this.randomElement(this.emailFormats));
    }
    public String safeEmail() {
        return this.generate(this.randomElement(this.safeEmailFormats));
    }
    public String freeEmail() {
        return this.generate(this.randomElement(this.freeEmailFormats));
    }
    public String companyEmail() {
        return this.generate(this.randomElement(this.companyEmailFormats));
    }

    public String tld() {
        return this.randomElement(this.tld);
    }
    public String domainWord()
    {
        return this.randomElement(this.domainWord);
    }

    public String domainName()
    {
        return this.randomElement(this.domainName);
    }

    public String url()
    {
        return this.generate(this.randomElement(this.urlFormats));
    }
    public String slug(Integer words, String separator)
    {
        return String.join(this.text.realWords(words), separator).toLowerCase();
    }

    public String slug(Integer words)
    {
        return this.slug(words, '_');
    }

    public String ipv4() {
        return this.randomIntegerBetween(1,255) +'.'+this.randomIntegerBetween(1,255) +'.'+this.randomIntegerBetween(1,255) +'.'+this.randomIntegerBetween(1,255);
    }
    public String localIpv4() {
        if(this.randomBoolean()) {
            return '10.'+this.randomIntegerBetween(1,255) +'.'+this.randomIntegerBetween(1,255) +'.'+this.randomIntegerBetween(1,255);
        }
        return '192.168.'+this.randomIntegerBetween(1,255) +'.'+this.randomIntegerBetween(1,255);
    }

    public String ipv6() {
        List<String> ipv6 = new List<String>();
        while(ipv6.size() < 8) {
            ipv6.add(this.bothify(this.randomElement(this.ipv6)));
        }
        return String.join(ipv6,':');
    }

    public String macAddress() {
        List<String> mac = new List<String>();
        while(mac.size() < 6) {
            String macString = this.bothify(this.randomElement(this.macFormat));
            mac.add(macString.toUpperCase());
        }
        return String.join(mac,':');
    }

}
