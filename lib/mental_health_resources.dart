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
////////////////////////////////////MENTAL HEALTH//////////////////////////////////////////
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
                        "Lumenus Mental Health Developmental & Community Services",
                        ["416-222-1153"],
                        "https://www.lumenus.ca/",
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
                        "Distress Centre of Toronto",
                        ["416-408-4357", "416-408-0007 (TTY)"],
                        "",
                        "",
                        "",
                        "Phone line for people in emotional distress or in need of crisis intervention and suicide prevention; multiple languages."),
                  ]);

///////////////////////////////////////////////////PHYSICAL HEALTH///////////////////////////////////
            case "Physical Health":
              return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle("York"),
                    ResourceCard(
                        "YFS Health & Dental Plan",
                        ["416-736-2100 ext. 58066"],
                        "https://www.yfs.ca/healthplan",
                        "healthplan@yfs.ca",
                        "336 First Student Centre",
                        ""),
                    ResourceCard(
                        "Appletree Medical Clinic",
                        ["647-722-2370"],
                        "https://appletreemedicalgroup.com/clinic-locations/4700-keele-st-york-lanes-on-campus-keele-entrance/",
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
                    ResourceCard("Toronto Public Health", ["416-392-0658"],
                        "https://www.toronto.ca/", "", "", ""),
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
                        [],
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
                        "https://aim-academy.ca/",
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
                        "https://www.planetfitness.ca/gyms/north-york-yorkgate-mall",
                        "",
                        "1 York Gate Boulevard",
                        "Private gym with fitness classes."),
                    ResourceCard(
                        "Women's Health in Women's Hands",
                        ["416-593-7655"],
                        "https://www.whiwh.com/",
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
                    ResourceCard("HIV411", [], "hiv411.ca", "", "",
                        "Website for those looking for HIV or Hepatitis C services in Canada. You can search for services by your location or by the type of service you are looking for."),
                  ]);

///////////////////////////////////////////////Sexual Violence///////////////////////////////
            case "Sexual Violence":
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionTitle("York University"),
                  ResourceCard(
                      "The Centre for Sexual Violence Response, Support and Education (The Centre)",
                      ["416-736-5211"],
                      "thecentre.yorku.ca",
                      "thecentre@yorku.ca",
                      "301 York Lanes",
                      ""),
                  ResourceCard(
                      "goSAFE",
                      ["416-736-5454 or Ext. 55454"],
                      "",
                      "goSAFE@yorku.ca",
                      "",
                      "goSAFE accompanies York community members to and from any on-campus location. Upon request, goSAFE staff will wait with you until your bus or transportation arrives or your car starts, and will meet you at your pick-up location"),
                  ResourceCard("York Security (Urgent)", ["416-736-5333"], "",
                      "", "", ""),
                  ResourceCard("York Security (Non-Urgent)", ["416-650-8000"],
                      "", "", "", "details"),
                  SectionTitle("Toronto & GTA"),
                  ResourceCard(
                      "Assaulted Woman’s Helpline",
                      [
                        "416-863-0511 (Toronto)",
                        "416-408-0007 (TTY)",
                        "1-866-863-0511 (Toll Free)",
                        "Text #SAFE (7233)"
                      ],
                      "awhl.org",
                      "",
                      "",
                      "Interpreters in 154 languages are available to respond to callers."),
                  ResourceCard(
                      "Victim Support Line",
                      ["1-888-579-2888 (Toll Free)", "416-314-2447 (Toronto)"],
                      "",
                      "",
                      "",
                      ""),
                  ResourceCard(
                      "Kid’s Helpline",
                      ["1-800-668-6868"],
                      "kidshelpphone.ca",
                      "",
                      "",
                      "English and French services."),
                  ResourceCard("Good2Talk Student Crisis Line",
                      ["1-866-925-5454 (24/7)"], "", "", "", ""),
                  ResourceCard(
                      "Barbra Schlifer Commemorative Clinic",
                      ["416-323-9149"],
                      "schliferclinic.com",
                      "info@schliferclinic.com",
                      "",
                      "Offers counseling, legal and interpreter services for women who have been physically or sexually abused."),
                  ResourceCard(
                      "Women’s College Hospital",
                      ["416-323-6400"],
                      "womenscollegehospital.ca",
                      "",
                      "76 Grenville Street",
                      "The Sexual Assault/Domestic Violence Care Centre (SA/DVCC) at Women’s College Hospital is a comprehensive service that assists women, men, and trans people who are survivors of sexual assault and domestic and intimate partner violence."),
                  ResourceCard(
                      "Crisis & Referral Services for Survivors That Are Men ",
                      ["1-866-887-0015"],
                      "https://www.ontario.ca/page/get-help-if-you-are-experiencing-violence#:~:text=Survivors%20also%20have%20access%20to,when%20I%20was%20a%20child",
                      "",
                      "",
                      "Provides help for male survivors of sexual abuse; recent or historical. The program is the first of its kind in Canada and is delivered by agencies across the province."),
                  ResourceCard("Gerstein Crisis Centre",
                      ["416-929-5200 (24/7)"], "", "", "", ""),
                  ResourceCard("Trans Lifeline Canada ", ["877-330-6366"], "",
                      "", "", ""),
                  ResourceCard(
                      "Durham Rape Crisis Centre (Whitby)",
                      ["905-668-9200"],
                      "durhamrapecrisiscentre.com",
                      "",
                      "",
                      ""),
                  ResourceCard("Sherbourne Health Centre", ["416-324-4103"], "",
                      "", "", "Services for Lesbian, Gay and Trans People"),
                  ResourceCard(
                      "Woman Abuse Council of Toronto",
                      [],
                      "https://womanact.ca/",
                      "",
                      "",
                      "The Woman Abuse Council of Toronto (WomanACT) is a policy development and planning body that coordinates an efficient and effective approach to providing services for assaulted women and their families."),
                  ResourceCard(
                      "All Saints Toronto",
                      ["416-368-7768"],
                      "allsaintstoronto.com/our-programs",
                      "",
                      "",
                      "Safe and support resource for women (trans-inclusive) engaged in sex work."),
                  ResourceCard(
                      "Street Health",
                      ["416-921-8668"],
                      "https://streethealth.ca/",
                      "",
                      "",
                      "Street Health offers many resources, mainly for the homeless and under-housed."),
                  ResourceCard(
                      "Toronto Police Sex Crimes Unit",
                      ["416-808-7474"],
                      "torontopolice.on.ca/sexcrimes/",
                      "",
                      "",
                      ""),
                  ResourceCard(
                      "Sexual Assault Care Centre, Scarborough Grace Hospital",
                      ["416-95-2555"],
                      "",
                      "",
                      "",
                      ""),
                  ResourceCard(
                      "Sexual Assault Care Centre, York Central Hospital",
                      ["905-883-2383"],
                      "",
                      "",
                      "",
                      ""),
                  SectionTitle("Ontario"),
                  ResourceCard("Need Help Now", [], "NeedHelpNow.ca", "", "",
                      "Helps teens and adults stop the spread of sexual pictures or videos and provides support along the way. If you or someone you know has been negatively impacted by a self/peer exploitation incident, they are here to help offer guidance on the steps you can take to get through it."),
                  ResourceCard(
                      "Cyber Tip",
                      ["1-866-658-9022"],
                      "cybertip.ca",
                      "",
                      "",
                      "Canada’s tipline to report the online sexual exploitation of children."),
                  ResourceCard("Dawn Ontario", [], "dawncanada.net", "", "",
                      "Information for women with disabilities that are being abused by partners; links provided for several areas such as legal help, housing help, financial assistance help, etc."),
                  ResourceCard(
                      "Immigrant Women Services (Ottawa)",
                      ["613-729-1393"],
                      "immigrantwomenservices.com",
                      "",
                      "",
                      ""),
                  ResourceCard(
                      "Metropolitan Action Committee on Violence Against Women",
                      [],
                      "metrac.org",
                      "",
                      "",
                      "Information via facts sheets on violence against women including sexual assaults, stalking and criminal harassment"),
                  ResourceCard(
                      "Ontario Coalition of Rape Crisis Centres (OCRCC)",
                      [],
                      "sexualassaultsupport.ca/support/",
                      "",
                      "",
                      "Provides links to helplines, shelters, and supports in your region."),
                  ResourceCard(
                      "Ontario Association of Interval and Transition Houses (OAITH)",
                      [],
                      "oaith.ca",
                      "",
                      "",
                      ""),
                  ResourceCard(
                      "Ontario Women’s Directorate",
                      [],
                      "",
                      "ontario.ca/page/womens-issues",
                      "",
                      "The Ontario Women’s Directorate promotes women’s equality with a focus on ending violence against women and increasing women’s economic security."),
                  ResourceCard(
                      "Ontario Network of Sexual Assault/Domestic Violence care and Treatment Centres",
                      ["416-323-6400"],
                      "satcontario.com",
                      "",
                      "",
                      ""),
                  ResourceCard(
                      "Support Services for Male Survivors of Sexual Abuse",
                      ["1-866-887-0015"],
                      "",
                      "",
                      "",
                      ""),
                  ResourceCard(
                      "Talk4Healing",
                      ["1-855-554-HEAL (24/7)"],
                      "https://www.beendigen.com/programs/talk4healing/",
                      "",
                      "",
                      "A culturally grounded, fully confidential helpline for Indigenous women available in 14 languages all across Ontario."),
                  ResourceCard(
                      "Ontario Women’s Justice Network",
                      [],
                      "owjn.org",
                      "",
                      "",
                      "Legal information and advice for women who are looking for help with family law or trying to understand legal terminology"),
                  ResourceCard("Ottawa Rape Crisis", ["613-562-2333"],
                      "orcc.net", "", "", ""),
                  ResourceCard(
                      "Chinese Family Services of Ontario",
                      ["416-979-8299"],
                      "chinesefamilyso.com/en/programs.asp",
                      "info@chinesefamilyso.com",
                      "",
                      "")
                ],
              );

/////////////////////////////////////////HARM REDUCTION////////////////////////////////////////////
            case "Harm Reduction":
              return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle("York"),
                    ResourceCard(
                        "Health Education & Promotion",
                        ["(416) 736-2100, ext. 55196"],
                        "healthed.scld.yorku.ca/",
                        "",
                        "",
                        "Health Education And Promotion is a team of York Students and Staff that collaboratively work with on and off campus stakeholders to provide physical and sexual health information."),
                    ResourceCard(
                        "Toronto Eating Disorder Resources",
                        ["416-340-3041 (Intake Coordinator)"],
                        "https://www.uhn.ca/",
                        "",
                        "Eaton Building in Toronto General - Floor 7/8",
                        "Monday – Friday 9AM–5PM\nToronto General Hospital provides comprehensive information, assessment and intensive treatment to individuals 17 years or older with anorexia nervosa, bulimia nervosa or other forms of disordered eating."),
                    ResourceCard(
                        "North York General Hospital",
                        ["416-756-6642"],
                        "https://www.nygh.on.ca/areas-care/mental-health/eating-disorders-program?cid=1230&lang=1",
                        "",
                        "North York General Hospital, 7th floor, 4001 Leslie Street",
                        "North York General Hospital's Adult Eating Disorders program for those aged 17+ is a collaborative initiative with Toronto General Hospital. They offer partial hospitalization program for patients with diagnosed anorexia and bulimia nervosa, and group-based aftercare for patients who have completed the partial hospitalization program."),
                    SectionTitle("Toronto & GTA"),
                    ResourceCard(
                        "Harm Reduction Supplies and Locations",
                        [],
                        "https://www.toronto.ca/community-people/health-wellness-care/",
                        "",
                        "",
                        ""),
                    ResourceCard(
                        "“The Works” Supervised Injection Site",
                        ["416-338-7600", "416-392-0520"],
                        "https://www.toronto.ca/community-people/health-wellness-care/",
                        "theworks@toronto.ca",
                        "",
                        "Monday - Saturday: 10AM-10PM"),
                    ResourceCard(
                        "Trip! Project",
                        ["(647) 822-6435"],
                        "http://tripproject.ca/",
                        "",
                        "",
                        "Did a line? Don’t think you’re fine? Need to enquire? Just text the TRIP!wire (647) 822-6435\nThe Trip! Project provides safer sex and drug information and supplies to party people in Toronto’s electronic music communities. We neither condone nor condemn the use of any drug, and provide factual information to help partiers make informed decisions that directly affect their long-term health."),
                    ResourceCard(
                        "Black Coalition for Aids Prevention (Black CAP)",
                        ["(416) 977 - 9955", "Fax: (416) 977 - 7664"],
                        "www.blackcap.ca",
                        "info@black-cap.com",
                        "20 Victoria St. 4th floor",
                        "Since 1989, Black CAP has worked to reduce the spread of HIV infection within Toronto’s African, Caribbean and Black communities while enhancing the quality of life of those living with or affected by HIV/AIDS."),
                    ResourceCard(
                        "Street Health Toronto",
                        ["416-921-8668"],
                        "streethealth.ca/",
                        "info@streethealth.ca",
                        "338 Dundas Street East",
                        ""),
                    ResourceCard(
                        "South Riverdale Community Health Centre - Supervised Consumption Service ",
                        ["416-461-1925"],
                        "srchc.ca/programs/harm-reduction/supervised-consumption-service/",
                        "srchc@srchc.com, nkallio@srchc.com",
                        "955 Queen St East",
                        ""),
                    ResourceCard(
                        "Regent Park Community Health Centre",
                        ["416-364-2261"],
                        "https://regentparkchc.org/",
                        "",
                        "",
                        "The overdose prevention program provides free acess to laundry, housing, showers, doctors and nurses. They also have an ID program that runs every Wednesday morning where they help folks apply for passports, healthcard and birth certificate for free. There is no age limit to these services."),
                    ResourceCard(
                        "Canadian Association of People Who Use Drugs (CAPUD)",
                        ["778-991-8490 "],
                        "https://capud.ca/",
                        "",
                        "",
                        ""),
                    ResourceCard(
                        "Black CAP Toronto",
                        ["416-977-995"],
                        "https://blackcap.ca/",
                        "k.martin@black-cap.com",
                        "",
                        "Workshops and drop-in offered on harm reduction for users. Services tailored for black folks."),
                    ResourceCard(
                        "Eva’s Satellite",
                        ["416-229-1874"],
                        "https://www.evas.ca/",
                        "info@evas.ca",
                        "401 Richmond St W, Suite 245",
                        "Emergency shelter for youth aged 16-24 with mental health and substance use support."),
                    ResourceCard(
                        "All Saints Church Community Centre - Downtown Toronto, East",
                        ["416-368-7768"],
                        "allsaintstoronto.com/",
                        "admin@allsaintstoronto.com",
                        "315 Dundas Street East",
                        "Needle exchange and harm reduction materials available."),
                    ResourceCard("Toronto Harm Reduction Alliance", [],
                        "torontoharmreductionalliance.ca/", "", "", ""),
                    ResourceCard(
                        "2 Spirited People of the First Nations Toronto",
                        ["416-944-9300"],
                        "2spirits.com",
                        "info@2spirits.com",
                        "Suite 105, 145 Front St E",
                        "“We provide prevention education and support for 2-Spirit, including First Nations, metis and Inuit people living with or at risk for HIV and related co-infections in the Greater Toronto Area. We base our work on indigenous philosophies of wholistic health and wellness.”"),
                    ResourceCard(
                        "Agincourt Community Services Association ",
                        ["416-321-6912"],
                        "agincourtcommunityservices.com",
                        "4155reception@agincourtcommunityservices.com",
                        "",
                        "4155 Sheppard Ave. East")
                  ]);

///////////////////////////////////////////Housing///////////////////////////////////////////////
            case "Housing":
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionTitle("York"),
                  ResourceCard(
                      "Glendon Women & Trans Centre",
                      ["416-487-6808"],
                      "",
                      "glendonwtc@gmail.com",
                      "",
                      "The Glendon Women and Trans Centre is dedicated to providing a positive space where no person is judged based on their gender, race, religion, or sexual orientation. We work to promote the preservation of all human rights with a special emphasis on celebrating the many voices of the women and trans community at Glendon. They offer emergency shelter services of all York Students.\nHours: 9am - 6pm"),
                  ResourceCard(
                      "The Centre for Sexual Violence Response, Support and Education (The Centre)",
                      ["416-736-5211"],
                      "thecentre.yorku.ca",
                      "",
                      "",
                      ""),
                  ResourceCard(
                      "York Housing Services",
                      ["416-736-5152"],
                      "studenthousing.info.yorku.ca",
                      "undergradres@yorku.ca",
                      "",
                      ""),
                  SectionTitle("Toronto & GTA"),
                  ResourceCard(
                      "City of Toronto - Tenant Rights & Responsibilities",
                      ["416-921-9494"],
                      "https://www.toronto.ca/home/311-toronto-at-your-service/",
                      "",
                      "",
                      ""),
                  ResourceCard(
                      "Arrabon House",
                      ["416-536-7037"],
                      "https://streetvoices.ca/shelters/arrabon-house",
                      "kennedy@boostforkids.org",
                      "29 Wilson Park Road",
                      "Residential treatment, supportive housing, aftercare support and counseling services to young women 13-24."),
                  ResourceCard(
                      "Assessment and Referral Centre",
                      ["416-338-4766", "1-877-338-3398 (Toll Free)"],
                      "https://www.toronto.ca/community-people/housing-shelter/",
                      "sharc@toronto.ca",
                      "129 Peter St",
                      "Shelter services for single adults, youth, and couples."),
                  ResourceCard("Central Family Intake", ["416-397-5637"], "",
                      "", "", "Shelter services for families with children."),
                  ResourceCard(
                      "Covenant House Toronto",
                      ["416-598-4898", "1-800-435-7308 (Toll Free)"],
                      "covenanthousetoronto.ca/homeless-youth/Home.aspx",
                      "general@covenanthouse.ca",
                      "20 Gerrard St. E",
                      "Shelter, transitional housing, and programs for homeless youth."),
                  ResourceCard(
                      "Dixon Hall",
                      ["416-863-0499"],
                      "dixonhall.org",
                      "info@dixonhall.org",
                      "58 Sumach St.",
                      "Shelter and programs for people experiencing homelessness."),
                  ResourceCard("Eva’s Phoenix", ["416-364-4716"], "", "", "",
                      "Transitional housing for youth 16-24."),
                  ResourceCard("Eva’s Place", ["416-441-1414"], "", "", "",
                      "Emergency shelter for youth 16-24 dealing with substance use and/or mental health."),
                  ResourceCard("Eva’s Satellite", ["416-642-2581"], "", "", "",
                      "Emergency shelter for youth 16-24 dealing with substance use and/or mental health."),
                  ResourceCard("Horizons for Youth", ["416-781-9898"], "", "",
                      "", "Youth shelter."),
                  ResourceCard("Humewood House", ["416-651-5657"], "", "", "",
                      "Residence and programs for single and young parents."),
                  ResourceCard(
                      "Street Helpline", ["416-392-3777"], "", "", "", ""),
                  ResourceCard("Family Hostel Central Intake Line",
                      ["416-397-5637"], "", "", "", ""),
                  ResourceCard(
                      "Social Assistance",
                      ["416-392-8623", "After Hours Emergency: 416-392-8600"],
                      "",
                      "",
                      "",
                      ""),
                  ResourceCard(
                      "Advocacy Centre for Tenants Ontario (ACTO)",
                      [],
                      "https://www.acto.ca/",
                      "",
                      "",
                      "ACTO works for the advancement of human rights and justice in housing for low- income Ontarians through legal advice & representation, law reform, community organizing, training and education."),
                  ResourceCard("Kennedy House Youth Services", ["416-421-7776"],
                      "", "", "", "Shelter and services for homeless youth."),
                  ResourceCard(
                      "Massey Centre for Women",
                      ["416-425-6348"],
                      "",
                      "",
                      "",
                      "Transitional housing and programs for pregnant and parenting youth."),
                  ResourceCard(
                      "Native Child and Family Services of Toronto",
                      ["416-969-8510"],
                      "",
                      "",
                      "",
                      "Transitional housing and programs for Aboriginal communities."),
                  ResourceCard("Sancta Maria House", ["416-925-7333"], "", "",
                      "", "Residence and programs for young women."),
                  ResourceCard(
                      "Street Helpline",
                      ["1-866-392-3777", "1-877-848-8481 (Peele Region)"],
                      "",
                      "",
                      "",
                      "Help for people who are homeless to get a safer place to sleep and find long-term housing."),
                ],
              );

////////////////////////////////////////////ACADEMIC///////////////////////////////////////////////
            case "Academic":
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionTitle("York"),
                  ResourceCard(
                      "YFS Student Advocacy Centre",
                      ["416 736-2100 x44869"],
                      "",
                      "advocacycentre@yfs.ca",
                      "Second Student Centre, Room 339",
                      "No-cost, confidential service providing, assistance, advocacy and advice in regards to academic and financial petitions, appeals, Senate appeals, academic hearings, while facilitating dispute resolution and mediation in regards to non-academic conflicts."),
                  ResourceCard(
                    "York University Graduate Students Association",
                    ["416-736-5865"],
                    "https://www.yugsa.ca/services/academic-and-individual-advocacy/",
                    "info@yugsa.ca",
                    "First Student Centre, Room 325",
                    "Advocates on behalf of individual graduate students helping them navigate York’s administration, deal with issues and solve problems.",
                  ),
                  ResourceCard(
                      "Glendon Writing Centre",
                      [],
                      "https://www.yorku.ca/glendon/supports-and-services/welcome-to-the-glendon-writing-centre/",
                      "",
                      "",
                      ""),
                  ResourceCard(
                      "ESL Open learning Center",
                      [],
                      "https://www.yorku.ca/glendon/language-resources/esl-open-learning-centre/",
                      "",
                      "",
                      ""),
                  SectionTitle("Ontario"),
                  ResourceCard(
                    "OSAP: Ontario Student Assistance Program",
                    ["1-888-449-4478", "1-800-465-3958 (TTY) "],
                    "ontario.ca/page/osap-ontario-student-assistance-program",
                    "",
                    "",
                    "Grants and loans available from the province to help pay for post-secondary education. Restrictions apply.",
                  )
                ],
              );

//////////////////////////////////////////FINANCIAL/////////////////////////////////////////
            case "Financial":
              return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle("Student Grants/Scholarships/Bursaries"),
                    ResourceCard(
                      "Student Financial Profile",
                      [],
                      "https://sfs.yorku.ca/aid/sfp",
                      "",
                      "",
                      "Many scholarships and bursaries are available to York students through the Student Financial Profile, which is a multi-purpose online application form that gives you access to financial support as well as on campus job opportunities.",
                    ),
                    ResourceCard(
                        "Scholarships Canada",
                        [],
                        "https://www.scholarshipscanada.com/Index.aspx",
                        "",
                        "",
                        ""),
                    ResourceCard(
                        "Yconic", [], "https://www.yconic.com/", "", "", ""),
                    ResourceCard(
                        "UnivCan",
                        [],
                        "https://www.univcan.ca/programs-and-scholarships/",
                        "",
                        "",
                        ""),
                    SectionTitle("Public Grants/Funding"),
                    ResourceCard(
                        "Canadian Women’s Foundation: Violence Prevention Grant",
                        [],
                        "https://www.canadianwomen.org/our-work/learn-about-funding/",
                        "",
                        "",
                        ""),
                    ResourceCard("Ontario Trillium Grant", [],
                        "https://otf.ca/apply-grant", "", "", ""),
                    ResourceCard(
                        "Canadian Heritage",
                        [],
                        "https://www.canada.ca/en/canadian-heritage/services/funding",
                        "",
                        "",
                        ""),
                    ResourceCard(
                        "Youth Take Charge",
                        [],
                        "https://www.canada.ca/en/canadian-heritage/services/funding/youth-take-charge.html",
                        "",
                        "",
                        ""),
                    ResourceCard(
                        "Multicultural Community Capacity Grant Program",
                        [],
                        "https://www.ontario.ca/page/multicultural-community-capacity-grant-program",
                        "",
                        "",
                        ""),
                    ResourceCard(
                        "Public Health Agency of Canada",
                        [],
                        "https://www.canada.ca/en/public-health/services/funding-opportunities/grant-contribution-funding-opportunities.html",
                        "",
                        "",
                        ""),
                    ResourceCard(
                        "Canadian Department of Justice",
                        [],
                        "https://canada.justice.gc.ca/eng/fund-fina/index.html",
                        "",
                        "",
                        ""),
                    SectionTitle("Private Grants/Funding"),
                    ResourceCard("Google Ad Grants", [],
                        "https://www.google.ca/intl/en/grants/", "", "", ""),
                    ResourceCard("Community One", [],
                        "https://communityone.ca/grants-awards/", "", "", ""),
                    ResourceCard(
                        "Shell Canada Funding",
                        [],
                        "https://www.shell.ca/en_ca/sustainability/communities/funding-guidelines-process.html",
                        "",
                        "",
                        ""),
                    ResourceCard(
                        "Air Canada",
                        [],
                        "https://www.aircanada.com/ca/en/aco/home/about/corporate-responsibility/community.html",
                        "",
                        "",
                        ""),
                  ]);

///////////////////////////////////////////EMPLOYMENT RESOURCES////////////////////////////////
            case "Employment":
              return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle("York University"),
                    ResourceCard(
                      "York Career Centre",
                      ["416-736-5351"],
                      "https://careers.yorku.ca/",
                      "career@yorku.ca",
                      "202 McLaughlin College ",
                      "Monday – Thursday: 9am – 4pm, Friday: 10am – 4pm",
                    ),
                    ResourceCard(
                      "Career Development Centre (Glendon)",
                      [],
                      "https://www.yorku.ca/glendon/supports-and-services/career-development-centre/",
                      "cdc@glendon.yorku.ca",
                      "York Hall A118",
                      '''

September to April:
Monday – Friday
8:30 a.m. – 4:30 p.m.

May to August:
Monday – Thursday
8:30 a.m. – 4:30 p.m.

Friday
8:30 a.m. - 3:30 p.m. ''',
                    ),
                    ResourceCard(
                        "Academic Positions at York",
                        [],
                        "yorku.ca/academichiringviewer",
                        "",
                        "",
                        "Online job posting for academic positions at York University."),
                    ResourceCard(
                        "Non-academic Positions at York",
                        [],
                        "https://jobs-ca.technomedia.com/yorkuniversity/",
                        "",
                        "",
                        "Online job posting for non-academic positions at York University. "),
                    SectionTitle("Toronto & GTA"),
                    ResourceCard(
                        "Hire Up",
                        ["416-483-6191 ext. 25"],
                        "https://hireupyouth.ca/",
                        "",
                        "",
                        "Connects youth who have barriers to employment to meaningful work."),
                    ResourceCard(
                        "Jobs In GTA",
                        ["416-907-6978 "],
                        "jobsingta.com",
                        "Support@JobsInGTA.com",
                        "35 Woodbine Downs Blvd, Suite 6",
                        "A shared platform that connects employers and job seekers in the GTA to be able to hire and get hired."),
                    ResourceCard(
                        "Acces Employment",
                        [
                          '''
416-921-1800 (Toronto)
489 College Street, Suite 100  
416-431-5326  (Scarborough)
2100 Ellesmere Road, Suite 250   
905-361-2522  (Mississauga)
151 City Centre Drive, Suite 600    
416-443-9008  (North York)
2001 Sheppard Avenue East, Suite 201  
905-454-2316  (Brampton)
44 Peel Centre Drive, Suite 201 ''',
                        ],
                        "accesemployment.ca",
                        "",
                        "",
                        ""),
                    ResourceCard(
                        "YMCA Employment and Immigration Services",
                        ["416-928-9622"],
                        "https://www.ymcagta.org/employment-services",
                        "",
                        "2200 Yonge St., Unit 300",
                        "Whether you’re looking for a new job, career or starting a new life in Canada, we’ll provide you with all the support and help you need to establish yourself in your new environment.  "),
                    ResourceCard(
                        "Humber Career Centre",
                        ["416-631-7600"],
                        "ces.humber.ca/",
                        "",
                        "1700 Wilson Ave., N2 North York Sheridan Mall ",
                        "Humber offers free employment services for all job seekers and employers across the Greater Toronto Area (GTA). These services are open to anyone in the community, including students. "),
                    ResourceCard(
                        "Toronto Jobs",
                        ["416-488-0084"],
                        "toronto-jobs.org/  ",
                        "service@tces.on.ca",
                        "",
                        "Online destination for job postings in Toronto."),
                    ResourceCard(
                        "The Career Foundation",
                        [
                          '''
Central Toronto: 416-920-5144   
Weston: 416-243-0066   
Scarborough: 416-264-2100 
Lawrence Square: 416-789-4862  
Etobicoke:  416-235-1091  
Mississauga: 905-361-1134 
North York: 416-789-4862 '''
                        ],
                        "https://careerfoundation.com/",
                        "",
                        "",
                        "The Career Foundation offers employment services and HR solutions at no cost to job seekers and employers.  "),
                    ResourceCard(
                        "Charity Village",
                        ["1-800-610-8134"],
                        "charityvillage.com",
                        "help@charityvillage.com  ",
                        "8170 Lawson Road Milton",
                        "Non-profit and Public sector job search.  "),
                    ResourceCard(
                        "Student Summer Company",
                        [],
                        "https://www.ontario.ca/page/start-summer-company-students",
                        "",
                        "",
                        "Summer company student Grant. Up to 3000 dollars of funding rewarded to each student."),
                    SectionTitle("Ontario"),
                    ResourceCard(
                        "Canada Jobs",
                        [],
                        "https://www.canadajobs.com/",
                        "",
                        "",
                        "Canada's source for job search how-to articles and tips."),
                    ResourceCard(
                        "Career Builder",
                        [],
                        "https://www.careerbuilder.com/",
                        "",
                        "",
                        "Search for jobs in Canada and around the world."),
                    ResourceCard(
                        "Career Edge",
                        [],
                        "https://www.careeredge.ca/",
                        "",
                        "",
                        "Search for paid internships in non-regulated professions. Career Edge partner with employers to connect them with qualified candidates, including recent graduates, recent graduates with disabilities, newcomers to Canada, and members of the Canadian Armed Forces."),
                    ResourceCard("Eluta", [], "https://www.eluta.ca/", "", "",
                        "Search for new jobs in Canada."),
                    ResourceCard(
                        "Government of Canada Job Bank",
                        [],
                        "https://www.jobbank.gc.ca/home",
                        "",
                        "",
                        "Search for jobs by province."),
                    ResourceCard("Indeed", [], "https://ca.indeed.com/", "", "",
                        "Search jobs, upload resume and research companies."),
                    ResourceCard(
                        "Job Postings Magazine",
                        [],
                        "https://www.jobpostings.ca/",
                        "",
                        "",
                        "Student jobs, entry level jobs, internships across Canada."),
                    ResourceCard(
                        "Ontario WorkInfoNET",
                        [],
                        "https://onwin.ca/",
                        "",
                        "",
                        "See links to work- and career-related websites in Ontario. There are also WorkInfoNets for each province and territory across Canada."),
                    ResourceCard(
                        "Resume Target",
                        [],
                        "https://www.resumetarget.ca/yorku/",
                        "",
                        "",
                        "Includes a job board that allows you to set up daily job alerts and compiles a list of suitable job postings from major and niche job boards across North America."),
                    ResourceCard(
                        "Talent Egg",
                        [],
                        "https://talentegg.ca/",
                        "",
                        "",
                        "Search for co-op, internship, entry level positions, summer jobs, student jobs, full-time and part-time work. Access career guides to explore various career paths and related resources."),
                    ResourceCard(
                        "Workopolis",
                        [],
                        "https://www.workopolis.com/",
                        "",
                        "",
                        "Search more than 100,000 jobs from thousands of job boards, classifieds and company sites in Canada."),
                    ResourceCard(
                        "Cleo: Your Rights at Work",
                        [],
                        "https://www.cleo.on.ca/en/publications/rightswrk",
                        "",
                        "",
                        "Information discussing your rights at work."),
                    ResourceCard(
                        "Cleo: Making A Claim",
                        [],
                        "https://www.cleo.on.ca/en/publications/makeclaim",
                        "",
                        "",
                        "Information regarding workers’ compensation. Instructions on making a claim for injuries and sickness you got from work."),
                    ResourceCard(
                        "Cleo: Taking Time Off Work",
                        [],
                        "https://www.cleo.on.ca/en/publications/pregparnt",
                        "",
                        "",
                        "Information regarding taking time off work, for new and expecting parents."),
                    ResourceCard(
                        "Cleo: Payday Loans",
                        [],
                        "https://www.cleo.on.ca/en/publications/payday",
                        "",
                        "",
                        "Information regarding payday Loans."),
                    ResourceCard(
                        "Cleo: Employment Insurance",
                        [],
                        "https://www.cleo.on.ca/en/publications/emplns",
                        "",
                        "",
                        "Information regarding employment insurance."),
                    ResourceCard(
                        "Cleo: Fired Or Laid Off",
                        [],
                        "https://www.cleo.on.ca/en/publications/beenfired",
                        "",
                        "",
                        "Information regarding when you are laid off or fired."),
                  ]);
///////////////////////////////////////////////VIDEO/////////////////////////////////////////////////////

//////////////////////////////////////////////OTHER/////////////////////////////////////////////////////
            case "Other":
              return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle("York University"),
                    ResourceCard(
                      "Community & Legal Aid Services Program (CLASP)",
                      ["416-736 -5029"],
                      "osgoode.yorku.ca/community-clinics/welcome-community-legal-aid-services-program-clasp/  ",
                      "",
                      "4700 Keele Street, Osgoode Hall Law School",
                      "Assistance in Administrative Law, Criminal Law, Family Law, Immigrant Law and Social Support (financial, emotional, housing).",
                    ),
                    ResourceCard(
                      "Office of Student Community Relations (OSCR)",
                      ["416-736-5231"],
                      "https://oscr.students.yorku.ca/",
                      "oscr@yorku.ca",
                      "Bennett Centre for Student Services, Room W128",
                      "Supports students, parent/guardians and the community in its role as the University liaison in the management of critical incident cases. Website has compliant form available.  ",
                    ),
                    SectionTitle("Toronto & GTA"),
                    ResourceCard(
                        "Black Creek Community Health Centre",
                        ["416-736-5029"],
                        "https://www.osgoode.yorku.ca/community-legal-services/welcome-community-legal-aid-services-program-clasp/",
                        "",
                        "1 Yorkgate Boulevard (Yorkgate Mall), Unit 202",
                        "Assistance in Administrative Law, Criminal Law, Family Law, Immigrant Law and Social Support (financial, emotional, housing)."),
                    ResourceCard(
                        "The Advocacy Centre for the Elderly",
                        ["416-598-2656"],
                        "https://www.acelaw.ca/",
                        "Support@JobsInGTA.com",
                        "2 Carlton Street, Suite 701",
                        "The Advocacy Centre for the Elderly is a community based legal clinic for low income senior citizens. "),
                    ResourceCard(
                        "Sound Times",
                        ["416-979-1700"],
                        "https://soundtimes.com/",
                        "",
                        "280 Parliament St",
                        "Sound Times is a member-driven consumer/survivor initiative providing mental health and addiction services in downtown Toronto, Ontario and is operated by people who have experiential knowledge of the mental health, addiction and criminal justice systems.  "),
                    ResourceCard(
                        "YMCA Employment and Immigration Services",
                        ["416-928-9622"],
                        "https://www.ymcagta.org/employment-services",
                        "",
                        "2200 Yonge St., Unit 300",
                        "Whether you’re looking for a new job, career or starting a new life in Canada, we’ll provide you with all the support and help you need to establish yourself in your new environment.  "),
                    ResourceCard(
                        "Gerstein Crisis Centre",
                        [
                          '''
Charles St.: 416-929-0149 
Bloor St.: 416-604-2337
Crisis Workers: 416-929-5200  '''
                        ],
                        "https://gersteincentre.org/our-crisis-services/",
                        "admin@gersteincentre.org",
                        '''
Gerstein on Charles 
100 Charles Street East                                                                    
Gerstein on Bloor 
1045 Bloor Street West   ''',
                        "Crisis Workers are available 24 hours a day, 7 days a week. They are a 24-hour community based crisis service for adults 16+ in the City of Toronto, who are dealing with a serious mental health issue, concurrent or substance use issue and are currently in crisis. Telephone crisis intervention, mobile team, follow team, residential crisis beds.  "),
                    ResourceCard(
                        "Toronto Drop-in Network",
                        ["416-824-4172"],
                        "https://www.tdin.ca/",
                        "",
                        "206 Augusta Avenue",
                        "The Toronto Drop-In Network (TDIN) is an active coalition of over 50 drop-in centers throughout the City of Toronto that work with people who are homeless, marginally housed or socially isolated. Our Network includes drop-ins of all sizes and with a diversity philosophies that serve men, women, transgender and non-binary people, youth and seniors.  "),
                    ResourceCard(
                        "2-1-1 Toronto",
                        ["2-1-1"],
                        "https://211central.ca/",
                        "",
                        "",
                        "211 service provides Information and Referral for callers to community and social services 24/7 for Central Region (Toronto, Peel Region, York Region and Durham Region), and overnight and on weekends for the rest of Ontario. "),
                    ResourceCard(
                        "PovNet",
                        [],
                        "https://www.povnet.org/find-an-advocate/on/toronto-area",
                        "",
                        "",
                        "PovNet provides online tools that facilitate communication, community and access to information around poverty-related issues in British Columbia and Canada."),
                    SectionTitle("Ontario"),
                    ResourceCard(
                        "Dawn Ontario: Disabled Women’s Network Ontario",
                        [],
                        "https://dawncanada.net/",
                        "",
                        "",
                        "Information for women with disabilities that are being abused by partners; links provided for several areas such as legal help, housing help, financial assistance help, etc."),
                    ResourceCard(
                        "Cleo: Understand Your Credit Score",
                        [],
                        "https://www.cleo.on.ca/en/publications/credit",
                        "",
                        "",
                        "Helpful information that helps to understand credit score and credit report. "),
                    ResourceCard(
                        "Cleo: Credit Counselling and Debt Settlement Services.",
                        [],
                        "https://www.cleo.on.ca/en/publications/credebts",
                        "",
                        "",
                        "Credit Counselling and Debt Settlement Services."),
                    ResourceCard(
                        "Cleo: Credit Repair",
                        [],
                        "https://www.cleo.on.ca/en/publications/crrepair",
                        "",
                        "",
                        "Informaton on how to repair credit repair."),
                    ResourceCard(
                        "Cleo: Motor Vehicle Repairs",
                        [],
                        "https://www.cleo.on.ca/en/publications/vehiclerep",
                        "",
                        "",
                        "Information on Motor Vehicle Repairs"),
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
                    onTap: () => _launchUrlString(website),
                  ))
                ])
              ],
              if (email != "") ...[
                Row(children: [
                  Icon(
                    Icons.email,
                    size: iconSize,
                  ),
                  SizedBox(width: 5),
                  Flexible(
                    child: Text(
                      email,
                      softWrap: true,
                    ),
                  ),
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

  _launchUrlString(String url) async {
    String formattedURL = url
        .replaceAll('https://', '')
        .replaceAll('www.', '')
        .replaceAll('http://', '');
    String finalURL = 'https://' + formattedURL;
    try {
      await launchUrlString(finalURL);
    } catch (e) {
      throw 'Could not launch $finalURL';
    }
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
