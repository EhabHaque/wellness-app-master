//Mental Health Resources Button
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MentalHealthPage extends StatelessWidget {
  final String page;
  MentalHealthPage(this.page);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
      child: Builder(
        builder: (context) {
          switch (page) {
            case "Mental Health":
              return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle("York University"),
                    ResourceCard(
                        "Student Counselling, Health, & Well-being",
                        ["416-736-5297"],
                        "https://students.yorku.ca/counselling",
                        "schw@yorku.ca",
                        "N110 Bennett Center (Keele)",
                        ""),
                    ResourceCard(
                        "Student Counselling, Health, & Well-being",
                        ["416-487-6701"],
                        "https://www.yorku.ca/glendon/supports-and-services/glendon-counselling/",
                        "counselling@glendon.yorku.ca",
                        "YH B108 Student Success Centre (Glendon)",
                        ""),
                    ResourceCard(
                        "Student Accessibility Services",
                        ["416-736-5755"],
                        "",
                        "yfsaccesscentre@csg.yfs.ca",
                        "321 First Student Centre",
                        ""),
                    ResourceCard(
                        "YFS Access Centre",
                        ["416-736-2100 ext. 77612"],
                        "",
                        "yfsaccesscentre@csg.yfs.ca",
                        "",
                        "Student-run alternative to disability services that offers York students and staff a space to consider various dimensions of the disability experience."),
                    ResourceCard(
                        "Graduate Student Wellness Services",
                        ["416-736-2100 ext. 33379"],
                        "",
                        "gradwell@yorku.ca",
                        "",
                        "All registered part–time/full–time York University graduate students may access the service. Grad students who are not currently registered active but are on an approved leave from their studies may also access the service."),
                    ResourceCard(
                        "York Psychology Clinic",
                        ["416-650-8488"],
                        "",
                        "",
                        "104 Behavioural Science",
                        "Clinical Manager reviews phone-call intakes on a weekly basis and will let the caller know if and when they can start to provide the requested service."),
                    SectionTitle("Toronto & GTA"),
                    ResourceCard(
                        "Toronto Distress Centre",
                        ["416-408-4357", "416-408-0007 (TTY)"],
                        "https://torontodistresscentre.com",
                        "",
                        "",
                        ""),
                    ResourceCard(
                        "Centre for Addictions & Mental Health",
                        ["416-535-8501"],
                        "https://www.camh.ca/en/your-care/programs-and-services",
                        "",
                        "250 College Street (24 hr Emergency Centre), 1001 Queen Street West",
                        ""),
                    ResourceCard(
                        "Canadian Mental Health Association",
                        [
                          "Crisis Line: 1-866-531-2600",
                          "Lawrence Ave West Site: 416-789-7957",
                          "Markham Road Site: 416-789-7957"
                        ],
                        "https://toronto.cmha.ca",
                        "",
                        "",
                        ""),
                    ResourceCard(
                        "CMHA Crisis Support Peel",
                        [
                          "Phone: 905-278-9036",
                          "Toll-Free: 1-866-863-0511",
                          "Text: #SAFE (7233)"
                        ],
                        "https://peel.cmha.ca/247csp/",
                        "",
                        "",
                        "Crisis de-escalation and a Mobile Crisis Team are available."),
                    ResourceCard(
                        "Griffin Centre Mental Health Services",
                        ["416-222-1153"],
                        "http://www.griffin-centre.org",
                        "",
                        "",
                        "Offering services including assessment, service coordination and planning, individual, family and group counselling, specialized day/residential services, and respite services."),
                    ResourceCard(
                        "Black Youth Helpline",
                        ["Phone: 416-285-9944", "Toll-Free: 1-833-294-8650"],
                        "https://blackyouth.ca",
                        "",
                        "1111 Finch Ave. West, Suite 411",
                        ""),
                    ResourceCard(
                        "Gerstein Crisis Centre",
                        ["416-929-9647"],
                        "https://gersteincentre.org",
                        "",
                        "100 Charles Street East, 1045 Bloor Street West",
                        "To provide a community-based, alternative approach to crisis intervention by delivering individualized, non-medical support to people experiencing a mental health crisis."),
                    ResourceCard(
                        "Skylark Youth",
                        ["416-482-0081"],
                        "https://skylarkyouth.org/what-we-do/programs-counselling-services/",
                        "",
                        "255-40 Orchard View Blvd",
                        "Free walk-in counselling for youth and families. They also provide 23-days treatment programs, drug education, free safe housing, and more."),
                    ResourceCard(
                        "Distress Centre of Toronto",
                        ["416-408-4357", "416-408-0007 (TTY)"],
                        "",
                        "",
                        "",
                        "Phone line for people in emotional distress or in need of crisis intervention and suicide prevention; multiple languages."),
                  ]);
            case "Physical Health":
              return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle("York"),
                    ResourceCard(
                        "YFS Health & Dental Plan",
                        ["416-736-2100 ext. 58066"],
                        "yfs.ca/health-and-dental/",
                        "healthplan@yfs.ca",
                        "106 First Student Centre",
                        ""),
                    ResourceCard(
                        "Appletree Medical Clinic",
                        ["647-722-2370"],
                        "appletreepatients.com",
                        "",
                        "York Lanes",
                        "Local clinic on Keele campus, providing some vaccinations, allergy testing, birth control, STI screening and much more."),
                    ResourceCard(
                        "Tait McKenzie Centre",
                        ["416-736-5185"],
                        "reconline.yorkulions.ca",
                        "taitmck@yorku.ca",
                        "",
                        "The centre is a spacious, multipurpose sport and recreation facility with a 11,000 square foot Fitness Centre. It contains 58 cardio machines, 29 sectorized machines, functional training apparatus and free weights and hosts a number of free classes."),
                    ResourceCard(
                        "Glendon Athletic Club",
                        [
                          "MEMBERSHIP OFFICE: 416-487-6717",
                          "RECEPTION: 416-487-6740"
                        ],
                        "",
                        "gac@glendon.yorku.ca",
                        "2275 Bayview Avenue",
                        "The Glendon Athletic Club is a 55,000 square foot full use fitness facility located within Glendon College open to York Students, Staff, Faculty, Alumni and Community Members."),
                    ResourceCard(
                        "YFS Access Centre",
                        ["416-736-2100 ext. 77612"],
                        "",
                        "yaccess@yorku.ca",
                        "321 First Student Centre",
                        "Student-run alternative to disability services that offers York students and staff a space in which to consider the various dimensions of the disability experience."),
                    ResourceCard(
                        "Shopper’s Drug Mart",
                        ["416-514-0993"],
                        "www1.shoppersdrugmart.ca/en/store-locator/store/1162?utm_source=G&utm_medium=lpm&utm_campaign=LPM_SDM",
                        "",
                        "York Lanes",
                        ""),
                    SectionTitle("Toronto & GTA"),
                    ResourceCard(
                        "Toronto Public Health",
                        ["416-392-0658"],
                        "toronto.ca/community-people/health-wellness-care/health-programs-advice/physical-activity/",
                        "publichealth@toronto.ca",
                        "",
                        ""),
                    ResourceCard("Public Health, East York", ["416-461-8136"],
                        "", "", "East York", ""),
                    ResourceCard("Public Health, Etobicoke ", ["416-394-8300"],
                        "", "", "Etobicoke ", ""),
                    ResourceCard("Public Health, North York", ["416-395-7700"],
                        "", "", "North York", ""),
                    ResourceCard("Public Health, Scarborough", ["416-396-7454"],
                        "", "", "Scarborough", ""),
                    ResourceCard("Public Health, York", ["416-394-2436"], "",
                        "", "York", ""),
                    ResourceCard(
                        "Native Youth Sexual Health Network",
                        [""],
                        "nativeyouthsexualhealth.com",
                        "info@nativeyouthsexualhealth.com",
                        "2345 Yonge Street",
                        ""),
                    ResourceCard(
                        "Teen Health Source",
                        ["416-961-3200", "647-933-5399 (Text)"],
                        "teenhealthsource.com",
                        "teenhealthsource@ppt.on.ca",
                        "",
                        ""),
                    ResourceCard(
                        "Hassle Free Clinic",
                        ["416-922-0566"],
                        "hasslefreeclinic.org",
                        "",
                        "66 Gerrard Street East, 2nd Floor",
                        "Medical and sexual health services; anonymous HIV testing by appointment."),
                    ResourceCard(
                        "Health with Dignity",
                        ["416-324-8677"],
                        "accessalliance.ca/health-with-dignity/",
                        "",
                        "",
                        "Provides services and addresses system inequities to improve health outcomes for  immigrants, refugees, and their communities."),
                    ResourceCard(
                        "Parkdale Queen West Community Health Centre",
                        [
                          "416-537-2455 (Parkdale Site)",
                          "416-703-8482 (Queen West Site)",
                          "416-537-8222 (Satellite Site)"
                        ],
                        "pqwchc.org/",
                        "",
                        "1229 Queen Street West, 168 Bathurst Street, 27 Roncesvalles Avenue, Suite 301",
                        "Services include primary health care, dental care, harm reduction, health promotion, counselling, and community development programming."),
                    ResourceCard(
                        "Loft Community Services",
                        ["416-979-1994"],
                        "loftcs.org",
                        "info@loftcs.org",
                        "15 Toronto Street, 9th Floor",
                        "Promotes recovery and independence for people with complex challenges."),
                    ResourceCard(
                        "AIM Academy",
                        ["416-323-1818 ext 200"],
                        "aim-academy.ca/pages/acupuncture-student-clinic",
                        "info@aim-academy.ca",
                        "455 Spadina Avenue, Suite 300",
                        "Affordable acupuncture at the teaching clinic, first session is free! Later sessions are 20 dollars per hour."),
                    ResourceCard(
                        "Royal Canadian College of Massage Therapy",
                        ["416-447-7680"],
                        "rccmassage.com/our-clinic/virtual-tour",
                        "info@rccmassage.com",
                        "",
                        "Lower cost massage therapy."),
                    ResourceCard(
                        "Planet Fitness",
                        ["416-546-9099"],
                        "planetfitness.com/gyms/north-york-yorkgate-mall",
                        "",
                        "1 York Gate Boulevard",
                        "Private gym with fitness classes."),
                    ResourceCard(
                        "Women's Health in Women's Hands",
                        ["416-593-7655"],
                        "http://www.whiwh.com/",
                        "info@whiwh.com",
                        "",
                        "Community Health Centre for racialized women living in Toronto and surrounding municipalities."),
                    ResourceCard(
                        "Centre For Health and Sports Medicine",
                        ["416-789-2476"],
                        "chsm.net/fees",
                        "information@chsm.net",
                        "68 Apex Road",
                        "Clinic close to Yorkdale Mall that offers athletic therapy, physiotherapy, massage therapy, osteopathy, dietitian."),
                    SectionTitle("Ontario"),
                    ResourceCard(
                        "Telehealth Ontario",
                        ["1-866-797-000", "1-866-797-0007 (TTY)"],
                        "ontario.ca/page/get-medical-advice-telehealth-ontario",
                        "",
                        "",
                        "Phone services for health advice in multiple languages."),
                    ResourceCard(
                        "Government of Canada - Healthy Living",
                        ["1-844-280-5020"],
                        "canada.ca/en/public-health/services/health-promotion/healthy-living/physical-activity/physical-activity.html",
                        "",
                        "180 Queen Street West, 11th Floor",
                        ""),
                    ResourceCard(
                        "Planned Parenthood",
                        ["416-961-0113"],
                        "ppt.on.ca",
                        "ppt@ppt.on.ca",
                        "36B Prince Arthur Ave",
                        "Serving youth aged 13-29 years, with or without OHIP."),
                    ResourceCard(
                        "CATIE (HIV/Hep C)",
                        ["416-203-7122"],
                        "catie.ca/en/home",
                        "info@catie.ca",
                        "",
                        "Research and practice in the HIV and Hep C field."),
                    ResourceCard("HIV411", [""], "hiv411.ca", "", "",
                        "Website for those looking for HIV or Hepatitis C services in Canada. You can search for services by your location or by the type of service you are looking for."),
                  ]);

            default:
          }

          return Text("huh");
        },
      ),
    );
  }
}

class ResourceCard extends StatelessWidget {
  final String resource;
  final List<String> phoneNumbers;
  final String website;
  final String email;
  final String address;
  final String details;

  ResourceCard(this.resource, this.phoneNumbers, this.website, this.email,
      this.address, this.details);

  @override
  Widget build(BuildContext context) {
    double iconSize = 14;
    return Card(
        color: Colors.purple[50],
        elevation: 2,
        margin: EdgeInsets.only(bottom: 10),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                resource,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Divider(
                color: Colors.black12,
              ),
              for (var item in phoneNumbers) ...[
                Row(children: [
                  Icon(
                    Icons.phone,
                    size: 14,
                  ),
                  SizedBox(width: 5),
                  SelectableText(item),
                ])
              ],
              if (website != "") ...[
                Row(children: [
                  Icon(
                    Icons.web,
                    size: iconSize,
                  ),
                  SizedBox(width: 5),
                  Flexible(
                      child: InkWell(
                    child: Text(
                      website,
                      softWrap: true,
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    onTap: () => launchUrlString(website),
                  ))
                ])
              ],
              if (address != "") ...[
                Row(children: [
                  Icon(
                    Icons.location_on,
                    size: iconSize,
                  ),
                  SizedBox(width: 5),
                  Flexible(
                    child: Text(
                      address,
                      softWrap: true,
                    ),
                  ),
                ])
              ],
              if (details != "") ...[
                Row(children: [
                  Icon(
                    Icons.text_snippet,
                    size: iconSize,
                  ),
                  SizedBox(width: 5),
                  Flexible(
                    child: Text(
                      details,
                      softWrap: true,
                    ),
                  ),
                ])
              ],
            ],
          ),
        ));
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}

final String mentalHealthResources = '''
  York University 
  Student Counselling, Health, & Well-being

  - N110 Bennett Center (Keele)
    - Website: [YorkU Counselling](https://students.yorku.ca/counselling)
    - Email: [schw@yorku.ca](mailto:schw@yorku.ca)
    - Phone: (416) 736-5297

  YH B108 Student Success Centre (Glendon)
    - Website: [Glendon Counselling](https://www.yorku.ca/glendon/supports-and-services/glendon-counselling/)
    - Email: [counselling@glendon.yorku.ca](mailto:counselling@glendon.yorku.ca)
    - Phone: (416) 487 6701

  Student Accessibility Services
    - N108 Ross Building
    - Website: [Accessibility Services](https://students.yorku.ca/accessibility)
    - Email: [sasinfo@yorku.ca](mailto:sasinfo@yorku.ca)
    - Phone: 416-736-5755

  YFS Access Centre
    - Phone: 416-736-2100 ext. 77612
    - Email: [yfsaccesscentre@csg.yfs.ca](mailto:yfsaccesscentre@csg.yfs.ca)
    - Location: 321 First Student Centre
    - Description: Student-run alternative to disability services that offers York students and staff a space to consider various dimensions of the disability experience

  Graduate Student Wellness Services
    - Website: [Grad Wellness Services](https://www.yorku.ca/gradstudies/students/current-students/grad-wellness-services/)
    - Email: [gradwell@yorku.ca](mailto:gradwell@yorku.ca)
    - Phone: (416) 736-2100 Ext. 33379
    - Description: All registered part–time/full–time York University graduate students may access the service. Grad students who are not currently registered active but are on an approved leave from their studies may also access the service.

  York Psychology Clinic
    - Phone: (416) 650-8488
    - Location: 104 Behavioural Science
    - Description: Clinical Manager reviews phone-call intakes on a weekly basis and will let the caller know if and when they can start to provide the requested service.

  Toronto & GTA

  Toronto Distress Centre
    - Phone: 416-408-4357
    - TTY: 416-408-0007
    - Website: [Toronto Distress Centre](https://torontodistresscentre.com)
    - Email: [info@torontodistresscentre.com](mailto:info@torontodistresscentre.com)

  Centre for Addictions & Mental Health (CAMH)
    - Phone: 416-535-8501
    - Website: [CAMH Programs and Services](https://www.camh.ca/en/your-care/programs-and-services)
    - Locations: 250 College Street (24 hr Emergency Centre), 1001 Queen Street West

  Canadian Mental Health Association (CMHA)
    - Crisis Line: 1-866-531-2600
    - Lawrence Ave West Site: 416-789-7957
    - Markham Road Site: 416-789-7957
    - Website: [CMHA Toronto](https://toronto.cmha.ca)
    - Email: [info@cmhato.org](mailto:info@cmhato.org)

  CMHA Crisis Support Peel
    - Phone: 905-278-9036
    - Toll-Free: 1-866-863-0511
    - Text: #SAFE (7233)
    - Website: [Peel CMHA Crisis Support](https://peel.cmha.ca/247csp/)
    - Description: Crisis de-escalation and a Mobile Crisis Team are available.

  Griffin Centre Mental Health Services
    - Phone: 416-222-1153
    - Website: [Griffin Centre](http://www.griffin-centre.org)
    - Email: [contact@griffincentre.org](mailto:contact@griffincentre.org)
    - Description: Offering services including assessment, service coordination and planning, individual, family and group counselling, specialized day/residential services, and respite services.

  Black Youth Helpline
    - Phone: 416-285-9944
    - Toll-Free: 1-833-294-8650
    - Website: [Black Youth Helpline](https://blackyouth.ca)
    - Email: [blackyouth@bellnet.ca](mailto:blackyouth@bellnet.ca)
    - Location: 1111 Finch Ave. West, Suite 411

  Gerstein Crisis Centre
    - Crisis Line: 416-929-5200
    - TTY: 416-929-9647
    - Website: [Gerstein Centre](https://gersteincentre.org)
    - Email: [admin@gersteincentre.org](mailto:admin@gersteincentre.org)
    - Locations: 100 Charles Street East, 1045 Bloor Street West
    - Description: To provide a community-based, alternative approach to crisis intervention by delivering individualized, non-medical support to people experiencing a mental health crisis.

  Skylark Youth
    - Phone: 416-482-0081
    - Website: [Skylark Youth Programs](https://skylarkyouth.org/what-we-do/programs-counselling-services/)
    - Email: [info@skylarkyouth.org](mailto:info@skylarkyouth.org)
    - Location: 255-40 Orchard View Blvd
    - Description: Free walk-in counselling for youth and families. They also provide 23-days treatment programs, drug education, free safe housing, and more.

  Distress Centre of Toronto
    - Phone: 416-408-4357
    - TTY: 416-408-0007
    - Description: Phone line for people in emotional distress or in need of crisis intervention and suicide prevention; multiple languages.
''';

//Physical Health Resources Button
final String physicalHealthResources = '''
York University
YFS Health & Dental Plan
416-736-2100 ext. 58066
yfs.ca/health-and-dental/
healthplan@yfs.ca
106 First Student Centre

Appletree Medical Clinic
647-722-2370
appletreepatients.com  
York Lanes
Local clinic on Keele campus, providing some vaccinations, allergy testing, birth control, STI screening and much more.

Tait McKenzie Centre
416-736-5185
reconline.yorkulions.ca
taitmck@yorku.ca  

Tait Mckenzie:
Mon-Thurs: 6am - 11:30pm
Fri: 6am - 10pm
Sat: 9am - 10pm
Sun: 9am - 5:30pm

Fitness Centre:
Mon-Fri: 6am - 10pm
Sat: 10am - 7pm
Sun: 9am - 5pm

The centre is a spacious, multipurpose sport and recreation facility with a 11,000 square foot Fitness Centre. It contains 58 cardio machines, 29 sectorized machines, functional training apparatus and free weights and hosts a number of free classes.

Glendon Athletic Club
Glendon Campus – York University
2275 Bayview Avenue
Toronto, Ontario M4N 3M6
Canada
Phone:
MEMBERSHIP OFFICE: 416-487-6717
RECEPTION: 416-487-6740
Email: gac@glendon.yorku.ca

Hours
Mondays to Thursdays 8am to 10:30pm
Fridays 8am to 9:30pm
Weekends 8:00am to 4pm

The Glendon Athletic Club is a 55,000 square foot full use fitness facility located within Glendon College open to York Students, Staff, Faculty, Alumni and Community Members.

YFS Access Centre
416-736-2100 ext. 77612
yaccess@yorku.ca
321 First Student Centre  
Student-run alternative to disability services that offers York students and staff a space in which to consider the various dimensions of the disability experience.

Shopper’s Drug Mart
416-514-0993  
www1.shoppersdrugmart.ca/en/store-locator/store/1162?utm_source=G&utm_medium=lpm&utm_campaign=LPM_SDM
York Lanes, Keele Campus, York University

Toronto & GTA
CLINICS ACCEPTING UHIP NEAR KEELE CAMPUS (Click Here)

CLINICS ACCEPTING UHIP NEAR GLENDON CAMPUS (Click Here)

Toronto Public Health
416-392-0658  
toronto.ca/community-people/health-wellness-care/health-programs-advice/physical-activity/  
publichealth@toronto.ca
toronto.ca/explore-enjoy/recreation/free-lower-cost-recreation-options/  
311@toronto.ca  

Public Health, East York
416-461-8136

Public Health, Etobicoke 
416-394-8300

Public Health, North York 
416-395-7700

Public Health, Scarborough
416-396-7454

Public Health, York 
416-394-2436

Native Youth Sexual Health Network
nativeyouthsexualhealth.com
info@nativeyouthsexualhealth.com  
2345 Yonge Street

Teen Health Source
416-961-3200
647-933-5399 (Text)
teenhealthsource.com
teenhealthsource@ppt.on.ca  

Hassle Free Clinic
416-922-0566  
hasslefreeclinic.org
66 Gerrard Street East, 2nd Floor

Medical and sexual health services; anonymous HIV testing by appointment. 

Health with Dignity
416-324-8677
accessalliance.ca/health-with-dignity/  

Provides services and addresses system inequities to improve health outcomes for  immigrants, refugees, and their communities.  

Parkdale Queen West Community Health Centre
416-537-2455 (Parkdale Site)
1229 Queen Street West
416-703-8482 (Queen West Site)
168 Bathurst Street  
416-537-8222 (Satellite Site)
27 Roncesvalles Avenue, Suite 301  
pqwchc.org/

Services include primary health care, dental care, harm reduction, health promotion, counselling, and community development programming.

Loft Community Services
416-979-1994
loftcs.org
info@loftcs.org  
15 Toronto Street, 9th Floor  

Promotes recovery and independence for people with complex challenges.

AIM Academy 
aim-academy.ca/pages/acupuncture-student-clinic 
info@aim-academy.ca  
455 Spadina Avenue, Suite 300

Affordable acupuncture at the teaching clinic, first session is free! Later sessions are 20 dollars per hour.  

Royal Canadian College of Massage Therapy  
416-447-7680  
rccmassage.com/our-clinic/virtual-tour  
info@rccmassage.com  

Lower cost massage therapy.

Planet Fitness
416-546-9099  
planetfitness.com/gyms/north-york-yorkgate-mall  
1 York Gate Boulevard 

Private gym with fitness classes.

Women's Health in Women's Hands  
416-593-7655  
http://www.whiwh.com/
info@whiwh.com  

Community Health Centre for racialized women living in Toronto and surrounding municipalities.

Centre For Health and Sports Medicine   
416-789-2476  
chsm.net/fees  
information@chsm.net  
68 Apex Road  

Clinic close to Yorkdale Mall that offers athletic therapy, physiotherapy, massage therapy, osteopathy, dietitian.  

Ontario
Telehealth Ontario
1-866-797-000
1-866-797-0007 (TTY)
ontario.ca/page/get-medical-advice-telehealth-ontario

Phone services for health advice in multiple languages.

Government of Canada - Healthy Living
1-844-280-5020  
canada.ca/en/public-health/services/health-promotion/healthy-living/physical-activity/physical-activity.html
180 Queen Street West, 11th Floor 

Planned Parenthood
416-961-0113  
ppt.on.ca
ppt@ppt.on.ca  
36B Prince Arthur Ave  

Serving youth aged 13-29 years, with or without OHIP.   

CATIE (HIV/Hep C)  
416-203-7122  
catie.ca/en/home
info@catie.ca  

Research and practice in the HIV and Hep C field.

HIV411 or HCV411
hiv411.ca or hcv411.ca

Website for those looking for HIV or Hepatitis C services in Canada. You can search for services by your location or by the type of service you are looking for.  
''';

final String sexualViolenceResources = '''
York University
The Centre for Sexual Violence Response, Support and Education (The Centre)
416-736-5211 
thecentre.yorku.ca
thecentre@yorku.ca
301 York Lanes
                                                         
goSAFE                                                                                   
416-736-5454 or Ext. 55454
goSAFE@yorku.ca

goSAFE accompanies York community members to and from any on-campus location. Upon request, goSAFE staff will wait with you until your bus or transportation arrives or your car starts, and will meet you at your pick-up location
6pm to 2am Fall/Winter (Keele)
6pm to 11pm Fall/Winter (Glendon)
8pm to 2am Summer (Keele)

York Security (Urgent)
416-736-5333

York Security (Non-Urgent)
416-650-8000

Toronto & GTA
Assaulted Woman’s Helpline                                                                       
416-863-0511 (Toronto)
416-408-0007 (TTY)  
1-866-863-0511 (Toll Free)                                                                                                            
Text #SAFE (7233)
awhl.org

Interpreters in 154 languages are available to respond to callers.

Toronto Rape Crisis Centre / Multicultural Women Against Rape
416-597-8808 (24-hour crisis line)
trccmwar.ca
crisis@trccmwar.ca

Victim Support Line                                                                                                                         
1-888-579-2888 (Toll Free)                                                                                                                                    
416-314-2447 (Toronto)                                                                                   

Kid’s Helpline
1-800-668-6868
kidshelpphone.ca

English and French services.

Lesbian Gay Bi Trans Youth Line
1-800-268-9688 (Toll Free)                                                                                                                          
647-694-4275 (Text)                                                                                                              
youthline.ca

Good2Talk Student Crisis Line                                                                                                                                                 
1-866-925-5454 (24/7)

Barbra Schlifer Commemorative Clinic
416-323-9149  
schliferclinic.com
info@schliferclinic.com  

Offers counseling, legal and interpreter services for women who have been physically or sexually abused.   

Women’s College Hospital
416-323-6400
womenscollegehospital.ca
76 Grenville Street  

The Sexual Assault/Domestic Violence Care Centre (SA/DVCC) at Women’s College Hospital is a comprehensive service that assists women, men, and trans people who are survivors of sexual assault and domestic and intimate partner violence.

Crisis & Referral Services for Survivors That Are Men                                                                                                                  
1-866-887-0015
https://www.attorneygeneral.jus.gov.on.ca/english/ovss/male_support_services/#:~:text=Survivors%20also%20have%20access%20to,when%20I%20was%20a%20child.

Provides help for male survivors of sexual abuse; recent or historical. The program is the first of its kind in Canada and is delivered by agencies across the province.  

Gerstein Crisis Centre  
416-929-5200 (24/7)

Trans Lifeline Canada                                                                                                                                     
877-330-6366

Durham Rape Crisis Centre (Whitby)                                                                                                            
905-668-9200                                                                                                                       
durhamrapecrisiscentre.com

Sherbourne Health Centre - Services for Lesbian, Gay and Trans People                                                                                                                                                                      
416-324-4103

Woman Abuse Council of Toronto                                                                                                            
womanabuse.ca

The Woman Abuse Council of Toronto (WomanACT) is a policy development and planning body that coordinates an efficient and effective approach to providing services for assaulted women and their families.

All Saints Toronto
416-368-7768  
allsaintstoronto.com/our-programs

Safe and support resource for women (trans-inclusive) engaged in sex work.  

Street Health
416-921-8668  
streethealth.ca/street-resources/bad-date-reporting#.W_RrguhKiUk  

Street Health offers many resources, mainly for the homeless and under-housed.  

Toronto Police Sex Crimes Unit
416-808-7474  
torontopolice.on.ca/sexcrimes/  

Sexual Assault Care Centre, Scarborough Grace Hospital
416-95-2555

Sexual Assault Care Centre, York Central Hospital
905-883-2383

Ontario
NeedHelpNow.ca
needhelpnow.ca

Helps teens and adults stop the spread of sexual pictures or videos and provides support along the way. If you or someone you know has been negatively impacted by a self/peer exploitation incident, they are here to help offer guidance on the steps you can take to get through it.

CyberTip.ca
1-866-658-9022
cybertip.ca

Canada’s tipline to report the online sexual exploitation of children.

Dawn Ontario: Disabled Women’s Network Ontario                                                                                                                 
dawncanada.net

Information for women with disabilities that are being abused by partners; links provided for several areas such as legal help, housing help, financial assistance help, etc.

Immigrant Women Services (Ottawa)                                                                                                                         
immigrantwomenservices.com                                                                                                                           
613-729-1393

Metropolitan Action Committee on Violence Against Women                                                                                                    
metrac.org

Information via facts sheets on violence against women including sexual assaults, stalking and criminal harassment

Ontario Coalition of Rape Crisis Centres (OCRCC)
sexualassaultsupport.ca/support/  

Provides links to helplines, shelters, and supports in your region.  

Ontario Association of Interval and Transition Houses (OAITH)                                                                                                              416-977-6619                                                                                                                                                        
oaith.ca

Ontario Women’s Directorate                                                                                                      
ontario.ca/page/womens-issues

The Ontario Women’s Directorate promotes women’s equality with a focus on ending violence against women and increasing women’s economic security.

Ontario Network of Sexual Assault/Domestic Violence care and Treatment Centres                                                                                                                     
416-323-6400
satcontario.com                                                                                                                                   

Support Services for Male Survivors of Sexual Abuse                                                                                                                                                                      
1-866-887-0015

Talk4Healing
1-855-554-HEAL (24/7)
talk4healing.com

A culturally grounded, fully confidential helpline for Indigenous women available in 14 languages all across Ontario.

Ontario Women’s Justice Network                                                                                                         
owjn.org

Legal information and advice for women who are looking for help with family law or trying to understand legal terminology

Ottawa Rape Crisis                                                                                                                      
613-562-2333
orcc.net                 

Chinese Family Services of Ontario 
416-979-8299
chinesefamilyso.com/en/programs.asp  
info@chinesefamilyso.com  

Cleo: Do you know a Woman who is being Abused? A legal rights handbook. 
''';

final String harmReductionResources = '''
York University
Health Education & Promotion
(416) 736-2100, ext. 55196
healthed.scld.yorku.ca/                                                                                                           leehelen@yorku.ca                                                                                                                                   Ross South 172  

Health Education And Promotion is a team of York Students and Staff that collaboratively work with on and off campus stakeholders to provide physical and sexual health information.

Toronto Eating Disorder Resources
Toronto General Hospital
416-340-3041 (Intake Coordinator)
https://www.uhn.ca/MCC/PatientsFamilies/Clinics_Tests/Eating_Disorder
Eaton Building in Toronto General - Floor 7/8

Monday – Friday 9AM–5PM

Toronto General Hospital provides comprehensive information, assessment and intensive treatment to individuals 17 years or older with anorexia nervosa, bulimia nervosa or other forms of disordered eating.

North York General Hospital
416-756-6642
https://www.nygh.on.ca/areas-care/mental-health/eating-disorders-program?cid=1230&lang=1
North York General Hospital, 7th floor, 4001 Leslie Street

North York General Hospital's Adult Eating Disorders program for those aged 17+ is a collaborative initiative with Toronto General Hospital. They offer partial hospitalization program for patients with diagnosed anorexia and bulimia nervosa, and group-based aftercare for patients who have completed the partial hospitalization program.



Toronto & GTA
Harm Reduction Supplies and Locations  - Listed
toronto.ca/community-people/health-wellness-care/health-programs-advice/harm-reduction-supplies-and-locations/  

“The Works” Supervised Injection Site
416-338-7600
416-392-0520  
toronto.ca/community-people/health-wellness-care/health-programs-advice/services-provided-by-the-works/                                                                                                             theworks@toronto.ca                                                                                                                                   277 Victoria St (ground floor)  

Monday - Saturday: 10AM-10PM

Pieces2Pathways (Breakaway
Text or Call Pam (they/them) at 647-209-2043 
https://www.facebook.com/PiecestoPathways  
https://www.breakawayaddictions.ca/p2p  
piecestopathwaysinfo@breakawayaddictions.ca 

Pieces to Pathways (P2P) is a peer-led initiative offering Canada’s only substance use support program for LGBTTQQ2SIA youth (ages 16-29).  

Trip! Project
(647) 822-6435
https://www.facebook.com/TRIPProject  
http://tripproject.ca  

Did a line? Don’t think you’re fine? Need to enquire? Just text the TRIP!wire (647) 822-6435  

The Trip! Project provides safer sex and drug information and supplies to party people in Toronto’s electronic music communities. We neither condone nor condemn the use of any drug, and provide factual information to help partiers make informed decisions that directly affect their long-term health.   

Black Coalition for Aids Prevention (Black CAP)
(416) 977 - 9955
Fax: (416) 977 - 7664
www.blackcap.ca  
info@black-cap.com
20 Victoria St. 4th floor

Since 1989, Black CAP has worked to reduce the spread of HIV infection within Toronto’s African, Caribbean and Black communities while enhancing the quality of life of those living with or affected by HIV/AIDS.  

Street Health Toronto
416-921-8668
streethealth.ca/
info@streethealth.ca
338 Dundas Street East  

South Riverdale Community Health Centre - Supervised Consumption Service 
416-461-1925
srchc@srchc.com, nkallio@srchc.com
srchc.ca/programs/harm-reduction/supervised-consumption-service/
955 Queen St East

Regent Park Community Health Centre  
416-364-2261  
regentparkchc.org/  

The overdose prevention program provides free acess to laundry, housing, showers, doctors and nurses. They also have an ID program that runs every Wednesday morning where they help folks apply for passports, healthcard and birth certificate for free. There is no age limit to these services.  

Canadian Harm Reduction Network
416.928.0279  
canadianharmreduction.com
noharm@canadianharmreduction.com  
666 Spadina Avenue, Suite 1904  

Canadian Association of People Who Use Drugs (CAPUD)
778-991-8490  
capud.ca

Black CAP Toronto
416-977-995
blackcap.ca/page.php?u=/programs-services/harm-reduction-program
k.martin@black-cap.com 

Workshops and drop-in offered on harm reduction for users. Services tailored for black folks.

Eva’s Satellite
416-229-1874  
evas.ca
info@evas.ca  
401 Richmond St W, Suite 245  

Emergency shelter for youth aged 16-24 with mental health and substance use support.

Breakaway
416-537-9346
breakawayaddictions.ca/
21 Strictland Ave  

All programs are free and confidential.

The FIX (Scarborough Harm Reduction Services) 
647-459-6912
agincourtcommunityservices.com/fix-scarborough-harm-reduction-services
mrahema@agincourtcommunitys-ervices.com

All Saints Church Community Centre - Downtown Toronto, East
416-368-7768
allsaintstoronto.com/
admin@allsaintstoronto.com
315 Dundas Street East  

Needle exchange and harm reduction materials available.

Dance Safe
1-888-636-2411
dancesafe.org

Non-profit organization providing drug education, drug contamination alerts, and sells drug testing kits.  

Toronto Harm Reduction Alliance
torontoharmreductionalliance.ca/

2 Spirited People of the First Nations Toronto
416-944-9300
2spirits.com
info@2spirits.com
Suite 105, 145 Front St E  

“We provide prevention education and support for 2-Spirit, including First Nations, metis and Inuit people living with or at risk for HIV and related co-infections in the Greater Toronto Area. We base our work on indigenous philosophies of wholistic health and wellness.”

Agincourt Community Services Association  
416-321-6912  
agincourtcommunityservices.com
4155reception@agincourtcommunityservices.com  
4155 Sheppard Ave. East
''';

final String housingResources = '''
York University
Glendon Women & Trans Centre

The Glendon Women and Trans Centre is dedicated to providing a positive space where no person is judged based on their gender, race, religion, or sexual orientation. We work to promote the preservation of all human rights with a special emphasis on celebrating the many voices of the women and trans community at Glendon. They offer emergency shelter services of all York Students

Email: glendonwtc@gmail.com

For emergency use of the Food Bank or Shelter please contact Security. (416-487-6808)

Hours: 9am - 6pm

The Centre for Sexual Violence Response, Support and Education (The Centre)
416-736-5211 
thecentre.yorku.ca                                                                                                           thecentre@yorku.ca                                                                                                                                 301 York Lanes

York Housing Services
416-736-5152  
studenthousing.info.yorku.ca
undergradres@yorku.ca  

                                                                                

Toronto & GTA
City of Toronto - Tenant Rights & Responsibilities
416-921-9494  
https://www.toronto.ca/311/knowledgebase/kb/docs/articles/municipal-licensing-and-standards/investigation-services/renting-in-toronto-101-tenant-rights-responsibilities.html

https://www.toronto.ca/community-people/housing-shelter/housing-at-risk/

Arrabon House 
416-536-7037
arrabonhouse.org
29 Wilson Park Road  

Residential treatment, supportive housing, aftercare support and counseling services to young women 13-24.

Assessment and Referral Centre
416-338-4766
1-877-338-3398 (Toll Free)
toronto.ca/housing/index.htm  
sharc@toronto.ca  
129 Peter St  

Shelter services for single adults, youth, and couples.

Central Family Intake
416-397-5637

Shelter services for families with children.

Covenant House Toronto
416-598-4898
1-800-435-7308 (Toll Free)
covenanthousetoronto.ca/homeless-youth/Home.aspx
general@covenanthouse.ca  
20 Gerrard St. E  

Shelter, transitional housing, and programs for homeless youth.

Dixon Hall
416-863-0499
dixonhall.org
info@dixonhall.org
58 Sumach St.  

Shelter and programs for people experiencing homelessness.

Eva’s Phoenix
416-364-4716

Transitional housing for youth 16-24.

Eva’s Place
416-441-1414 

Emergency shelter for youth 16-24.

Eva’s Satellite 
416-642-2581

Emergency shelter for youth 16-24 dealing with substance use and/or mental health.

Horizons for Youth 
416-781-9898

Youth shelter.

Humewood House 
416-651-5657

Residence and programs for single and young parents.

Street Helpline
416-392-3777

Family Hostel Central Intake Line
416-397-5637

Social Assistance
416-392-8623
After Hours Emergency: 416-392-8600

Advocacy Centre for Tenants Ontario (ACTO)
https://www.acto.ca/  

ACTO works for the advancement of human rights and justice in housing for low- income Ontarians through legal advice & representation, law reform, community organizing, training and education.

Kennedy House Youth Services 
416-421-7776

Shelter and services for homeless youth.

Massey Centre for Women 
416-425-6348

Transitional housing and programs for pregnant and parenting youth. 

Native Child and Family Services of Toronto 
416-969-8510

Transitional housing and programs for Aboriginal communities.

Sancta Maria House 
416-925-7333

Residence and programs for young women.

Street Helpline 
1-866-392-3777
1-877-848-8481 (Peele Region)

Help for people who are homeless to get a safer place to sleep and find long-term housing.

St. Stephen’s Community House 
416-925-2103 ext. 2240

Drop-ins, programs and services for people experiencing homelessness.

Toronto Community Housing
416-981-5500 (24/7)
torontohousing.ca

Toronto Housing and Shelter
toronto.ca/community-people/housing-shelter/

Toronto Mental Health & Addictions Supportive Housing Network  
416-640‐1934  
tosupportivehousing.ca

Turning Point Youth Services 
416-925-9250

Residence and and programs for youth 12-24 and their families.

YMCA of Greater Toronto 
416-928-9622

Emergency shelter, drop-in, and programs for youth.

YMCA Sprott House – Walmer Road Centre 
647-438-8383

LGBTQ2S transitional housing program for youth.

Yonge Street Mission 
416-929-9614

Drop-ins and programs.

Youth Without Shelter 
416-748-0110

Shelter and referrals for youth.

YWCA Toronto 
416-923-8454

Shelter, housing, and services for women and girls.

CLEO Legal Resources Catalouge

Cleo (roommates): Web Tool for Renters with Roommates: Sharing Rental Housing?

Cleo (Renting): Renting a Place to Live 

Cleo (Rental): Information regarding rent Increases and extra charges, and guidelines to deal with it. 

Cleo (Moving out): Rules about moving out. 

Cleo: Does your Landlord want you to Move Out? 

Cleo: Can your Landlord take your Stuff? Different situations given. 

York University
Glendon Women & Trans Centre

The Glendon Women and Trans Centre is dedicated to providing a positive space where no person is judged based on their gender, race, religion, or sexual orientation. We work to promote the preservation of all human rights with a special emphasis on celebrating the many voices of the women and trans community at Glendon. They offer emergency shelter services of all York Students

Email: glendonwtc@gmail.com

For emergency use of the Food Bank or Shelter please contact Security. (416-487-6808)

Hours: 9am - 6pm

The Centre for Sexual Violence Response, Support and Education (The Centre)
416-736-5211 
thecentre.yorku.ca                                                                                                           thecentre@yorku.ca                                                                                                                                 301 York Lanes

York Housing Services
416-736-5152  
studenthousing.info.yorku.ca
undergradres@yorku.ca  

                                                                                

Toronto & GTA
City of Toronto - Tenant Rights & Responsibilities
416-921-9494  
https://www.toronto.ca/311/knowledgebase/kb/docs/articles/municipal-licensing-and-standards/investigation-services/renting-in-toronto-101-tenant-rights-responsibilities.html

https://www.toronto.ca/community-people/housing-shelter/housing-at-risk/

Arrabon House 
416-536-7037
arrabonhouse.org
29 Wilson Park Road  

Residential treatment, supportive housing, aftercare support and counseling services to young women 13-24.

Assessment and Referral Centre
416-338-4766
1-877-338-3398 (Toll Free)
toronto.ca/housing/index.htm  
sharc@toronto.ca  
129 Peter St  

Shelter services for single adults, youth, and couples.

Central Family Intake
416-397-5637

Shelter services for families with children.

Covenant House Toronto
416-598-4898
1-800-435-7308 (Toll Free)
covenanthousetoronto.ca/homeless-youth/Home.aspx
general@covenanthouse.ca  
20 Gerrard St. E  

Shelter, transitional housing, and programs for homeless youth.

Dixon Hall
416-863-0499
dixonhall.org
info@dixonhall.org
58 Sumach St.  

Shelter and programs for people experiencing homelessness.

Eva’s Phoenix
416-364-4716

Transitional housing for youth 16-24.

Eva’s Place
416-441-1414 

Emergency shelter for youth 16-24.

Eva’s Satellite 
416-642-2581

Emergency shelter for youth 16-24 dealing with substance use and/or mental health.

Horizons for Youth 
416-781-9898

Youth shelter.

Humewood House 
416-651-5657

Residence and programs for single and young parents.

Street Helpline
416-392-3777

Family Hostel Central Intake Line
416-397-5637

Social Assistance
416-392-8623
After Hours Emergency: 416-392-8600

Advocacy Centre for Tenants Ontario (ACTO)
https://www.acto.ca/  

ACTO works for the advancement of human rights and justice in housing for low- income Ontarians through legal advice & representation, law reform, community organizing, training and education.

Kennedy House Youth Services 
416-421-7776

Shelter and services for homeless youth.

Massey Centre for Women 
416-425-6348

Transitional housing and programs for pregnant and parenting youth. 

Native Child and Family Services of Toronto 
416-969-8510

Transitional housing and programs for Aboriginal communities.

Sancta Maria House 
416-925-7333

Residence and programs for young women.

Street Helpline 
1-866-392-3777
1-877-848-8481 (Peele Region)

Help for people who are homeless to get a safer place to sleep and find long-term housing.

St. Stephen’s Community House 
416-925-2103 ext. 2240

Drop-ins, programs and services for people experiencing homelessness.

Toronto Community Housing
416-981-5500 (24/7)
torontohousing.ca

Toronto Housing and Shelter
toronto.ca/community-people/housing-shelter/

Toronto Mental Health & Addictions Supportive Housing Network  
416-640‐1934  
tosupportivehousing.ca

Turning Point Youth Services 
416-925-9250

Residence and and programs for youth 12-24 and their families.

YMCA of Greater Toronto 
416-928-9622

Emergency shelter, drop-in, and programs for youth.

YMCA Sprott House – Walmer Road Centre 
647-438-8383

LGBTQ2S transitional housing program for youth.

Yonge Street Mission 
416-929-9614

Drop-ins and programs.

Youth Without Shelter 
416-748-0110

Shelter and referrals for youth.

YWCA Toronto 
416-923-8454

Shelter, housing, and services for women and girls.

CLEO Legal Resources Catalouge

Cleo (roommates): Web Tool for Renters with Roommates: Sharing Rental Housing?

Cleo (Renting): Renting a Place to Live 

Cleo (Rental): Information regarding rent Increases and extra charges, and guidelines to deal with it. 

Cleo (Moving out): Rules about moving out. 

Cleo: Does your Landlord want you to Move Out? 

Cleo: Can your Landlord take your Stuff? Different situations given. 

York University
Glendon Women & Trans Centre

The Glendon Women and Trans Centre is dedicated to providing a positive space where no person is judged based on their gender, race, religion, or sexual orientation. We work to promote the preservation of all human rights with a special emphasis on celebrating the many voices of the women and trans community at Glendon. They offer emergency shelter services of all York Students

Email: glendonwtc@gmail.com

For emergency use of the Food Bank or Shelter please contact Security. (416-487-6808)

Hours: 9am - 6pm

The Centre for Sexual Violence Response, Support and Education (The Centre)
416-736-5211 
thecentre.yorku.ca                                                                                                           thecentre@yorku.ca                                                                                                                                 301 York Lanes

York Housing Services
416-736-5152  
studenthousing.info.yorku.ca
undergradres@yorku.ca  

                                                                                

Toronto & GTA
City of Toronto - Tenant Rights & Responsibilities
416-921-9494  
https://www.toronto.ca/311/knowledgebase/kb/docs/articles/municipal-licensing-and-standards/investigation-services/renting-in-toronto-101-tenant-rights-responsibilities.html

https://www.toronto.ca/community-people/housing-shelter/housing-at-risk/

Arrabon House 
416-536-7037
arrabonhouse.org
29 Wilson Park Road  

Residential treatment, supportive housing, aftercare support and counseling services to young women 13-24.

Assessment and Referral Centre
416-338-4766
1-877-338-3398 (Toll Free)
toronto.ca/housing/index.htm  
sharc@toronto.ca  
129 Peter St  

Shelter services for single adults, youth, and couples.

Central Family Intake
416-397-5637

Shelter services for families with children.

Covenant House Toronto
416-598-4898
1-800-435-7308 (Toll Free)
covenanthousetoronto.ca/homeless-youth/Home.aspx
general@covenanthouse.ca  
20 Gerrard St. E  

Shelter, transitional housing, and programs for homeless youth.

Dixon Hall
416-863-0499
dixonhall.org
info@dixonhall.org
58 Sumach St.  

Shelter and programs for people experiencing homelessness.

Eva’s Phoenix
416-364-4716

Transitional housing for youth 16-24.

Eva’s Place
416-441-1414 

Emergency shelter for youth 16-24.

Eva’s Satellite 
416-642-2581

Emergency shelter for youth 16-24 dealing with substance use and/or mental health.

Horizons for Youth 
416-781-9898

Youth shelter.

Humewood House 
416-651-5657

Residence and programs for single and young parents.

Street Helpline
416-392-3777

Family Hostel Central Intake Line
416-397-5637

Social Assistance
416-392-8623
After Hours Emergency: 416-392-8600

Advocacy Centre for Tenants Ontario (ACTO)
https://www.acto.ca/  

ACTO works for the advancement of human rights and justice in housing for low- income Ontarians through legal advice & representation, law reform, community organizing, training and education.

Kennedy House Youth Services 
416-421-7776

Shelter and services for homeless youth.

Massey Centre for Women 
416-425-6348

Transitional housing and programs for pregnant and parenting youth. 

Native Child and Family Services of Toronto 
416-969-8510

Transitional housing and programs for Aboriginal communities.

Sancta Maria House 
416-925-7333

Residence and programs for young women.

Street Helpline 
1-866-392-3777
1-877-848-8481 (Peele Region)

Help for people who are homeless to get a safer place to sleep and find long-term housing.

St. Stephen’s Community House 
416-925-2103 ext. 2240

Drop-ins, programs and services for people experiencing homelessness.

Toronto Community Housing
416-981-5500 (24/7)
torontohousing.ca

Toronto Housing and Shelter
toronto.ca/community-people/housing-shelter/

Toronto Mental Health & Addictions Supportive Housing Network  
416-640‐1934  
tosupportivehousing.ca

Turning Point Youth Services 
416-925-9250

Residence and and programs for youth 12-24 and their families.

YMCA of Greater Toronto 
416-928-9622

Emergency shelter, drop-in, and programs for youth.

YMCA Sprott House – Walmer Road Centre 
647-438-8383

LGBTQ2S transitional housing program for youth.

Yonge Street Mission 
416-929-9614

Drop-ins and programs.

Youth Without Shelter 
416-748-0110

Shelter and referrals for youth.

YWCA Toronto 
416-923-8454

Shelter, housing, and services for women and girls.

CLEO Legal Resources Catalouge

Cleo (roommates): Web Tool for Renters with Roommates: Sharing Rental Housing?

Cleo (Renting): Renting a Place to Live 

Cleo (Rental): Information regarding rent Increases and extra charges, and guidelines to deal with it. 

Cleo (Moving out): Rules about moving out. 

Cleo: Does your Landlord want you to Move Out? 

Cleo: Can your Landlord take your Stuff? Different situations given. 

York University
Glendon Women & Trans Centre

The Glendon Women and Trans Centre is dedicated to providing a positive space where no person is judged based on their gender, race, religion, or sexual orientation. We work to promote the preservation of all human rights with a special emphasis on celebrating the many voices of the women and trans community at Glendon. They offer emergency shelter services of all York Students

Email: glendonwtc@gmail.com

For emergency use of the Food Bank or Shelter please contact Security. (416-487-6808)

Hours: 9am - 6pm

The Centre for Sexual Violence Response, Support and Education (The Centre)
416-736-5211 
thecentre.yorku.ca                                                                                                           thecentre@yorku.ca                                                                                                                                 301 York Lanes

York Housing Services
416-736-5152  
studenthousing.info.yorku.ca
undergradres@yorku.ca  

                                                                                

Toronto & GTA
City of Toronto - Tenant Rights & Responsibilities
416-921-9494  
https://www.toronto.ca/311/knowledgebase/kb/docs/articles/municipal-licensing-and-standards/investigation-services/renting-in-toronto-101-tenant-rights-responsibilities.html

https://www.toronto.ca/community-people/housing-shelter/housing-at-risk/

Arrabon House 
416-536-7037
arrabonhouse.org
29 Wilson Park Road  

Residential treatment, supportive housing, aftercare support and counseling services to young women 13-24.

Assessment and Referral Centre
416-338-4766
1-877-338-3398 (Toll Free)
toronto.ca/housing/index.htm  
sharc@toronto.ca  
129 Peter St  

Shelter services for single adults, youth, and couples.

Central Family Intake
416-397-5637

Shelter services for families with children.

Covenant House Toronto
416-598-4898
1-800-435-7308 (Toll Free)
covenanthousetoronto.ca/homeless-youth/Home.aspx
general@covenanthouse.ca  
20 Gerrard St. E  

Shelter, transitional housing, and programs for homeless youth.

Dixon Hall
416-863-0499
dixonhall.org
info@dixonhall.org
58 Sumach St.  

Shelter and programs for people experiencing homelessness.

Eva’s Phoenix
416-364-4716

Transitional housing for youth 16-24.

Eva’s Place
416-441-1414 

Emergency shelter for youth 16-24.

Eva’s Satellite 
416-642-2581

Emergency shelter for youth 16-24 dealing with substance use and/or mental health.

Horizons for Youth 
416-781-9898

Youth shelter.

Humewood House 
416-651-5657

Residence and programs for single and young parents.

Street Helpline
416-392-3777

Family Hostel Central Intake Line
416-397-5637

Social Assistance
416-392-8623
After Hours Emergency: 416-392-8600

Advocacy Centre for Tenants Ontario (ACTO)
https://www.acto.ca/  

ACTO works for the advancement of human rights and justice in housing for low- income Ontarians through legal advice & representation, law reform, community organizing, training and education.

Kennedy House Youth Services 
416-421-7776

Shelter and services for homeless youth.

Massey Centre for Women 
416-425-6348

Transitional housing and programs for pregnant and parenting youth. 

Native Child and Family Services of Toronto 
416-969-8510

Transitional housing and programs for Aboriginal communities.

Sancta Maria House 
416-925-7333

Residence and programs for young women.

Street Helpline 
1-866-392-3777
1-877-848-8481 (Peele Region)

Help for people who are homeless to get a safer place to sleep and find long-term housing.

St. Stephen’s Community House 
416-925-2103 ext. 2240

Drop-ins, programs and services for people experiencing homelessness.

Toronto Community Housing
416-981-5500 (24/7)
torontohousing.ca

Toronto Housing and Shelter
toronto.ca/community-people/housing-shelter/

Toronto Mental Health & Addictions Supportive Housing Network  
416-640‐1934  
tosupportivehousing.ca

Turning Point Youth Services 
416-925-9250

Residence and and programs for youth 12-24 and their families.

YMCA of Greater Toronto 
416-928-9622

Emergency shelter, drop-in, and programs for youth.

YMCA Sprott House – Walmer Road Centre 
647-438-8383

LGBTQ2S transitional housing program for youth.

Yonge Street Mission 
416-929-9614

Drop-ins and programs.

Youth Without Shelter 
416-748-0110

Shelter and referrals for youth.

YWCA Toronto 
416-923-8454

Shelter, housing, and services for women and girls.

CLEO Legal Resources Catalouge

Cleo (roommates): Web Tool for Renters with Roommates: Sharing Rental Housing?

Cleo (Renting): Renting a Place to Live 

Cleo (Rental): Information regarding rent Increases and extra charges, and guidelines to deal with it. 

Cleo (Moving out): Rules about moving out. 

Cleo: Does your Landlord want you to Move Out? 

Cleo: Can your Landlord take your Stuff? Different situations given. 

York University
Glendon Women & Trans Centre

The Glendon Women and Trans Centre is dedicated to providing a positive space where no person is judged based on their gender, race, religion, or sexual orientation. We work to promote the preservation of all human rights with a special emphasis on celebrating the many voices of the women and trans community at Glendon. They offer emergency shelter services of all York Students

Email: glendonwtc@gmail.com

For emergency use of the Food Bank or Shelter please contact Security. (416-487-6808)

Hours: 9am - 6pm

The Centre for Sexual Violence Response, Support and Education (The Centre)
416-736-5211 
thecentre.yorku.ca                                                                                                           thecentre@yorku.ca                                                                                                                                 301 York Lanes

York Housing Services
416-736-5152  
studenthousing.info.yorku.ca
undergradres@yorku.ca  

                                                                                

Toronto & GTA
City of Toronto - Tenant Rights & Responsibilities
416-921-9494  
https://www.toronto.ca/311/knowledgebase/kb/docs/articles/municipal-licensing-and-standards/investigation-services/renting-in-toronto-101-tenant-rights-responsibilities.html

https://www.toronto.ca/community-people/housing-shelter/housing-at-risk/

Arrabon House 
416-536-7037
arrabonhouse.org
29 Wilson Park Road  

Residential treatment, supportive housing, aftercare support and counseling services to young women 13-24.

Assessment and Referral Centre
416-338-4766
1-877-338-3398 (Toll Free)
toronto.ca/housing/index.htm  
sharc@toronto.ca  
129 Peter St  

Shelter services for single adults, youth, and couples.

Central Family Intake
416-397-5637

Shelter services for families with children.

Covenant House Toronto
416-598-4898
1-800-435-7308 (Toll Free)
covenanthousetoronto.ca/homeless-youth/Home.aspx
general@covenanthouse.ca  
20 Gerrard St. E  

Shelter, transitional housing, and programs for homeless youth.

Dixon Hall
416-863-0499
dixonhall.org
info@dixonhall.org
58 Sumach St.  

Shelter and programs for people experiencing homelessness.

Eva’s Phoenix
416-364-4716

Transitional housing for youth 16-24.

Eva’s Place
416-441-1414 

Emergency shelter for youth 16-24.

Eva’s Satellite 
416-642-2581

Emergency shelter for youth 16-24 dealing with substance use and/or mental health.

Horizons for Youth 
416-781-9898

Youth shelter.

Humewood House 
416-651-5657

Residence and programs for single and young parents.

Street Helpline
416-392-3777

Family Hostel Central Intake Line
416-397-5637

Social Assistance
416-392-8623
After Hours Emergency: 416-392-8600

Advocacy Centre for Tenants Ontario (ACTO)
https://www.acto.ca/  

ACTO works for the advancement of human rights and justice in housing for low- income Ontarians through legal advice & representation, law reform, community organizing, training and education.

Kennedy House Youth Services 
416-421-7776

Shelter and services for homeless youth.

Massey Centre for Women 
416-425-6348

Transitional housing and programs for pregnant and parenting youth. 

Native Child and Family Services of Toronto 
416-969-8510

Transitional housing and programs for Aboriginal communities.

Sancta Maria House 
416-925-7333

Residence and programs for young women.

Street Helpline 
1-866-392-3777
1-877-848-8481 (Peele Region)

Help for people who are homeless to get a safer place to sleep and find long-term housing.

St. Stephen’s Community House 
416-925-2103 ext. 2240

Drop-ins, programs and services for people experiencing homelessness.

Toronto Community Housing
416-981-5500 (24/7)
torontohousing.ca

Toronto Housing and Shelter
toronto.ca/community-people/housing-shelter/

Toronto Mental Health & Addictions Supportive Housing Network  
416-640‐1934  
tosupportivehousing.ca

Turning Point Youth Services 
416-925-9250

Residence and and programs for youth 12-24 and their families.

YMCA of Greater Toronto 
416-928-9622

Emergency shelter, drop-in, and programs for youth.

YMCA Sprott House – Walmer Road Centre 
647-438-8383

LGBTQ2S transitional housing program for youth.

Yonge Street Mission 
416-929-9614

Drop-ins and programs.

Youth Without Shelter 
416-748-0110

Shelter and referrals for youth.

YWCA Toronto 
416-923-8454

Shelter, housing, and services for women and girls.

CLEO Legal Resources Catalouge

Cleo (roommates): Web Tool for Renters with Roommates: Sharing Rental Housing?

Cleo (Renting): Renting a Place to Live 

Cleo (Rental): Information regarding rent Increases and extra charges, and guidelines to deal with it. 

Cleo (Moving out): Rules about moving out. 

Cleo: Does your Landlord want you to Move Out? 

Cleo: Can your Landlord take your Stuff? Different situations given. 
''';

final String academicResources = '''
York University
YFS Student Advocacy Centre
416 736-2100 x44869  
yfs.ca/students-rights-cheatsheet  
advocacycentre@yfs.ca  
Second Student Centre, Room 339

No-cost, confidential service providing, assistance, advocacy and advice in regards to academic and financial petitions, appeals, Senate appeals, academic hearings, while facilitating dispute resolution and mediation in regards to non-academic conflicts.      

York University Graduate Students Association  
 416-736-5865 
yugsa.ca/services/academic-and-individual-advocacy/  
info@yugsa.ca  
First Student Centre, Room 325

Advocates on behalf of individual graduate students helping them navigate York’s administration, deal with issues and solve problems. 

Glendon Writing Centre

La Salon Francophone

ESL Open Learning Centre

Ontario
OSAP: Ontario Student Assistance Program
1-888-449-4478
1-800-465-3958 (TTY) 
ontario.ca/page/osap-ontario-student-assistance-program

Grants and loans available from the province to help pay for post-secondary education. Restrictions apply.
''';

final String financialResources = '''
 Funding, Scholarship & Project Grant Opportunities

Please note some of these links will not work on Safari.
Student Grants/Scholarships/Bursaries
Many grants and scholarships are accessible through sites such as

Student Financial Profile
Many scholarships and bursaries are available to York students through the Student Financial Profile, which is a multi-purpose online application form that gives you access to financial support as well as on campus job opportunities. The SFP can be accessed through https://sfs.yorku.ca/aid/sfp

Scholarships Canada
www.scholarshipscanada.com/Index.aspx

Yconic
http://www.yconic.com/

UnivCan
https://www.univcan.ca/programs-and-scholarships/

Public Grants/Funding
Canadian Women’s Foundation: Violence Prevention Grant

Guidelines: https://www.canadianwomen.org/our-work/learn-about-funding/ 

Apply: https://www.canadianwomen.org/our-work/annual-violence-prevention-grants-2019/ 

Carthy Foundation Grants

Guidelines: http://www.carthyfoundation.org/fund.html 

Apply: http://www.carthyfoundation.org/apply.html 

Ontario Trillium Grant

Register & Apply: https://otf.ca/apply-grant 

Deadline: https://otf.ca/apply-grant/registration-application-deadlines 

Community Support, Multiculturalism, and Anti-Racism Initiatives Program. Projects

https://fundsuite.fundingportal.com/Fundingforms/viewformbox/eng/MTA0NzM4 

Apply:https://www.canada.ca/en/canadian-heritage/services/funding/community-multiculturalism-anti-racism/projects.html 

Deadline: Ongoing

Youth Take Charge:

https://fundsuite.fundingportal.com/Fundingforms/viewformbox/eng/MTAzMTg3

Apply:https://www.canada.ca/en/canadian-heritage/services/funding/youth-take-charge.html 

Multicultural Community Capacity Grant Program

Apply:https://www.ontario.ca/page/multicultural-community-capacity-grant-program

Preventing Gender-Based Violence: the Health Perspective

https://fundsuite.fundingportal.com/Fundingforms/viewformbox/eng/MTA1MTk0

Apply:www.canada.ca/en/public-health/services/health-promotion/stop-family-violence/call-proposals-precenting-addressing-gender-based-violence-health-perspective-teen-youth-dating-violence-prevention.html

Harm Reduction Fund

Apply:https://www.canada.ca/en/public-health/services/funding-opportunities/harm-reduction-fund.html 

Paul Yuzyk Youth Initiative for Multiculturalism

https://fundsuite.fundingportal.com/Fundingforms/viewformbox/eng/MTA0NzQx
Apply:https://www.canada.ca/en/canadian-heritage/services/funding/community-multiculturalism-anti-racism/paul-yuzyk-initiative.html

Victims Fund. Project Funding

https://fundsuite.fundingportal.com/Fundingforms/viewformbox/eng/MTA0MjMx
Apply:https://canada.justice.gc.ca/eng/fund-fina/cj-jp/fund-fond/proj.html

Youth Innovations SCALE Grant

Apply: https://otf.ca/yof/youth-innovations-stream

The System Innovations Stream 

Apply: https://otf.ca/yof/system-innovations-stream

Partnership Development Grants :

https://fundsuite.fundingportal.com/Fundingforms/viewformbox/eng/MTA0NDU0

Apply: http://www.sshrc-crsh.gc.ca/funding-financement/programs-programmes/partnership_development_grants-subventions_partenariat_developpement-eng.aspx

Grow Grants:

https://fundsuite.fundingportal.com/Fundingforms/viewformbox/eng/NTc0MA==

Apply:https://otf.ca/what-we-fund/investment-streams/grow-grants

Private Grants/Funding
The Safe Community Grant

https://fundsuite.fundingportal.com/Fundingformsprivates/viewformbox/eng/MTQ0NzM=

Apply: https://www.hydroone.com/login?EC=

Google Ad Grants

https://fundsuite.fundingportal.com/Fundingformsprivates/viewformbox/eng/MTIwMzI=

Apply: https://www.google.ca/intl/en/grants/

Deadline: Ongoing

Rainbow Grant

https://fundsuite.fundingportal.com/Fundingformsprivates/viewformbox/eng/MTM2NjY=

Apply:http://communityone.ca/grants-awards/

Deadline: Opens February 2019

Walmart Canada Community Giving Grant 

Apply: https://www.walmartcanada.ca/community-giving/corporate-giving

Deadline: Ongoing

Shell Canada Funding 

Apply: https://www.shell.ca/en_ca/sustainability/communities/funding-guidelines-process.html

Deadline: Ongoing

Air Canada 

Apply: https://www.aircanada.com/ca/en/aco/home/about/corporate-responsibility/community.html

Deadline: Ongoing

Toronto Funding

''';

final String employmentResources = '''
York University
York Career Centre
416.736.5351  
careers.yorku.ca/
career@yorku.ca  
202 McLaughlin College
Monday – Thursday: 9am – 4pm
Friday: 10am – 4pm  

Career Development Centre (Glendon)

York Hall A118
Email: cdc@glendon.yorku.ca
https://www.yorku.ca/glendon/supports-and-services/career-development-centre/

September to April:
Monday – Friday
8:30 a.m. – 4:30 p.m.

May to August:
Monday – Thursday
8:30 a.m. – 4:30 p.m.

Friday
8:30 a.m. - 3:30 p.m.

Academic Positions at York
yorku.ca/academichiringviewer

Online job posting for academic positions at York University.

Non-academic Positions at York
yorku.ca/nonacademicpostings 

Online job posting for non-academic positions at York University.  

Toronto & GTA
Hire Up
416-483-6191 ext. 25

Connects youth who have barriers to employment to meaningful work.

Jobs in GTA
416-907-6978  
jobsingta.com
Support@JobsInGTA.com
35 Woodbine Downs Blvd, Suite 6

A shared platform that connects employers and job seekers in the GTA to be able to hire and get hired.

Acces Employment
416-921-1800 (Toronto)
489 College Street, Suite 100  
416-431-5326  (Scarborough)
2100 Ellesmere Road, Suite 250   
905-361-2522  (Mississauga)
151 City Centre Drive, Suite 600    
416-443-9008  (North York)
2001 Sheppard Avenue East, Suite 201  
905-454-2316  (Brampton)
44 Peel Centre Drive, Suite 201   
accesemployment.ca

YMCA Employment and Immigration Services
416-928-9622  
ymcagta.org/employment-and-immigrant-services  
ymcagta.org/contact-us  
2200 Yonge St., Unit 300 

Whether you’re looking for a new job, career or starting a new life in Canada, we’ll provide you with all the support and help you need to establish yourself in your new environment.  

Humber Career Centre
416-631-7600  
ces.humber.ca/  
1700 Wilson Ave., N2 North York Sheridan Mall 

Humber offers free employment services for all job seekers and employers across the Greater Toronto Area (GTA). These services are open to anyone in the community, including students. 

Toronto Jobs
416-488-0084  
toronto-jobs.org/  
service@tces.on.ca  

Online destination for job postings in Toronto.

The Career Foundation  
Central Toronto: 416-920-5144   
Weston: 416-243-0066   
Scarborough: 416-264-2100 
Lawrence Square: 416-789-4862  
Etobicoke:  416-235-1091  
Mississauga: 905-361-1134 
North York: 416-789-4862  
careerfoundation.com/  

The Career Foundation offers employment services and HR solutions at no cost to job seekers and employers.  

Charity Village  
1-800-610-8134  
charityvillage.com
help@charityvillage.com  
8170 Lawson Road Milton

Non-profit and Public sector job search.  

Student Summer Company
www.ontario.ca/page/start-summer-company-students 

Summer company student Grant. Up to 3000 dollars of funding rewarded to each student.   


  

Ontario
Canadajobs.com: Canada's source for job search "how-to" articles and tips.

CareerBuilder: Search for jobs in Canada and around the world.

Career Edge: Search for paid internships in non-regulated professions. Career Edge partner with employers to connect them with qualified candidates, including recent graduates, recent graduates with disabilities, newcomers to Canada, and members of the Canadian Armed Forces.

Eluta.ca: Search for new jobs in Canada.

Government of Canada Job Bank: Search for jobs by province.

Indeed: Search jobs, upload resume and research companies.

JobGurus: Job search engine to discover jobs from thousands of employer and career sites across Canada.

Job Search Canada: Search for careers by field or degree with Canada's National Career Education and Planning tool.

Job Postings Magazine: Student jobs, entry level jobs, internships across Canada.

Neuvoo: Job postings across Canada, with over 40,000 postings in Ontario alone.

Ontario WorkInfoNET: See links to work- and career-related websites in Ontario. There are also WorkInfoNets for each province and territory across Canada.

Resume Target: includes a job board that allows you to set up daily job alerts and compiles a list of suitable job postings from major and niche job boards across North America.

TalentEgg: Search for co-op, internship, entry level positions, summer jobs, student jobs, full-time and part-time work. Access career guides to explore various career paths and related resources.

Working.com: Search for jobs across Canada, get career advice, and read about current labour market trends.

Workopolis.com: Lists a variety of job opportunities.

Wowjobs: Search more than 100,000 jobs from thousands of job boards, classifieds and company sites in Canada.


Cleo: Your Rights at Work  

Cleo:  Information regarding workers’ compensation. Instructions on making a claim for injuries and sickness you got from work.

Cleo: Taking time off Work: For New and Expecting Parents 

Cleo: Information regarding payday Loans. 

Cleo: Employment Insurance 

Cleo: Have you been Fired or Laid Off?
''';

final String videoResources = '''
Online Learning and Education
Apps & Extensions for School Productivity
Time Management for Students
Preparing for School & online classes
A Survival Guide to online Schooling
and more!
WATCH ONLINE LEARNING VIDEOS- HERE
 Mental Health
Seasonal Affective Disorder & Wellness
WATCH MENTAL HEALTH VIDEOS- HERE
Physical Health & Wellness
Yoga & Movement
WATCH YOGA VIDEOS HERE
Food and Nutrition
Food Prep Hacks
Making Peace with Food
Eating on a Budget
WATCH NUTRITION VIDEOS HERE
''';

final String otherResources = '''
York University
Community & Legal Aid Services Program (CLASP)
416-736 -5029  
osgoode.yorku.ca/community-clinics/welcome-community-legal-aid-services-program-clasp/  
4700 Keele Street, Osgoode Hall Law School

Assistance in Administrative Law, Criminal Law, Family Law, Immigrant Law and Social Support (financial, emotional, housing).

Office of Student Community Relations (OSCR)  
416-736-5231  
oscr.students.yorku.ca  
oscr@yorku.ca  
Bennett Centre for Student Services, Room W128 

Supports students, parent/guardians and the community in its role as the University liaison in the management of critical incident cases. Website has compliant form available.  

                                                                                

Toronto & GTA
Black Creek Community Health Centre
416-736-5029  
osgoode.yorku.ca/community-clinics/welcome-community-legal-aid-services-program-clasp/
1 Yorkgate Boulevard (Yorkgate Mall), Unit 202

Assistance in Administrative Law, Criminal Law, Family Law, Immigrant Law and Social Support (financial, emotional, housing).

The Advocacy Centre for the Elderly  
416-598-2656   
advocacycentreelderly.org/  
2 Carlton Street, Suite 701 

The Advocacy Centre for the Elderly is a community based legal clinic for low income senior citizens.   

Sound Times
416-979-1700  
soundtimes.com 
280 Parliament St

Sound Times is a member-driven consumer/survivor initiative providing mental health and addiction services in downtown Toronto, Ontario and is operated by people who have experiential knowledge of the mental health, addiction and criminal justice systems.  

Gerstein Crisis Centre  
Charles St.: 416-929-0149 
Bloor St.: 416-604-2337        
Crisis Workers are available 24 hours a day, 7 days a week at 416-929-5200.   
gersteincentre.org/our-crisis-services/  
admin@gersteincentre.org  
Gerstein on Charles 
100 Charles Street East                                                                     Gerstein on Bloor 
1045 Bloor Street West   

We are a 24-hour community based crisis service for adults 16+ in the City of Toronto, who are dealing with a serious mental health issue, concurrent or substance use issue and are currently in crisis. Telephone crisis intervention, mobile team, follow team, residential crisis beds.  

Toronto Drop-in Network
416-824-4172  
tdin.ca  
206 Augusta Avenue  

The Toronto Drop-In Network (TDIN) is an active coalition of over 50 drop-in centers throughout the City of Toronto that work with people who are homeless, marginally housed or socially isolated. Our Network includes drop-ins of all sizes and with a diversity philosophies that serve men, women, transgender and non-binary people, youth and seniors.  

2-1-1 Toronto
2-1-1
211toronto.ca

211 service provides Information and Referral for callers to community and social services 24/7 for Central Region (Toronto, Peel Region, York Region and Durham Region), and overnight and on weekends for the rest of Ontario.  

PovNet
povnet.org/find-an-advocate/on/toronto-area

PovNet provides online tools that facilitate communication, community and access to information around poverty-related issues in British Columbia and Canada.  

Ontario
Dawn Ontario: Disabled Women’s Network Ontario                                                                                                                 dawncanada.net

Information for women with disabilities that are being abused by partners; links provided for several areas such as legal help, housing help, financial assistance help, etc.

Cleo: Helpful information that helps to understand credit score and credit report. 

Cleo:  Credit Counselling and Debt Settlement Services. 

Cleo: Credit Repair

Cleo: Motor Vehicle Repairs
''';
