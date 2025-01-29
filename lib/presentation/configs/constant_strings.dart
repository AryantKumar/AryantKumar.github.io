import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:aryant/data/model/activity.dart';
import 'package:aryant/data/model/certificate.dart';
import 'package:aryant/data/model/experience.dart';
import 'package:aryant/data/model/project_info.dart';
import 'package:aryant/data/model/quote.dart';
import 'package:aryant/data/model/route_model.dart';
import 'package:aryant/data/model/showcase_project.dart';
import 'package:aryant/data/model/social_media.dart';
import 'package:aryant/presentation/configs/configs.dart';
import 'package:aryant/presentation/route/routes.dart';

/// constant strings are prefixed with [ks]
const String ksFontFamily = "ShantellSans";

const String ksAndroidDeveloperAnd = "Android Dev &";
const String ksiOSDevinTraining = "iOS Dev in Training";
const String ksMobileMagician = "Mobile Magician";
const String ksTechNerd = "a  tech  nerd";
const String ksFlutterDev = "Code Conjurer";
const String coffeeAddict = "coffee addict";
const String ksIntrovert = "Exploring the intersection of AI and Mobile";
const String ksIm = "I'm";
const String ksIntro = """
  Namaste(){ 
    - val name = "Aryant Kumar"!
    - val platforms = listOf("Android", "iOS (learning)")
    - val interests = listOf(" Exploring the intersection of AI and Mobile", "ML",)
  """;
const String ksSeeMyWork = "See my work";
const String ksBrowseProjects = "Dive into my code cauldron";
const String ksWhatElse =
    "What else? I have freelanced on several side projects.";
const String ksSayHello = "SAY Hello and Let's build the future of Android together.";
const String ksHome ="const val HOME =";
const String ksAbout = "const val About";
const String ksExperience = "const val Experience";
const String ksCertificates = "const valCertificates";
const String ksProject = "const val My Projects";
const String ksViewProject = "View Project";
const String ksCraftedWithLove = "Crafted with Love";
const String ksRecentProjects = "Here are a selection of my recent projects";
const String ksCraftedProjects =
    'Here are some of my carefully crafted projects';
const String ksContact = "Contact Me";
const String ksAboutMe = "About Me";
const String ksBgStory = "Background Story";
const String ksTools = "Tools & Technology";
const String ksAllAboutMe = "All About Me";
const String ksGithub = "Github";
const String ksLinkedIn = "LinkedIn";
const String ksSendMessage = 'Send Message';

const String ksSlash = "/";
const String ksLetsWork = "Let's work together!";
const String ksFreelanceAvailability = "I'm available for Freelancing";
const String ksContactInfo = "- Contact Info";
const String ksWorkEmail = "mynamearyant34@gmail.com";
const String ksWorkPhone = "+91 9608944651";
const String ksCreditTo = "- Inspired From";
const String ksDavidCobbina = "David Cobbina";
const String ksDavidCobbinaWebsite = "https://davidcobbina.com/";
const String ksJuliusG = "Design by Julius G";
const String ksJuliusGWebsite =
    "https://www.behance.net/gallery/63574251/Personal-Portfolio-Website-Design";
const String ksBuildUsing = "Build using ";
const String ksWithMuch = " with much ";
const String ksCC = "©️ 2025 Aryant Kumar";
const String ksYoung = "When I was young, I was a kid!";
const String ksNobody = "Cross-platform coder";
const String ksSpecialization =
   "I specialize in Mobile Technologies and am highly passionate about developing quality applications, ontributing to open-source projects, and exploring the possibilities of AI integration.";
const String ksWhoAmI = 'Who Am I?';
const String ksWhatILove = "What I Love To Do";
const String ksBriefAboutMe =
    "I am a Computer Science Engineering student with a keen interest in Full Stack Application Development. Currently, I am expanding my expertise by learning iOS development and exploring the integration of AI and emerging technologies into modern applications. I am passionate about delivering innovative, high-quality solutions and actively contribute to impactful projects..";
const String ksMyLife =
    "I am a final-year Computer Science Engineering student from Bengal College of Engineering and Technology, Durgapur, Indin.";
const String ksProfession =
    "I started working as a Android App Developer since 2022. Later, I fell in love with it. I'm eager to contribute in App Developer community. Recently, I've started learning about iOS developmet and app development with AI";

const String ksMyTools =
    "I use a bunch of tools and technologies to make design and implementation process easier. ";
const String ksWeapon = "My favorite choice of weapon is ";
const String ksFlutter = "Flutter & Dart";
const String ksAndroid = "Android Studio";

const String ksMobile = 'Mobile Technologies';
const String ksWebAndOther = 'Web & Other Technologies';
final List<String> ksMobileTech = ['Flutter', 'Dart','Kotlin', 'Swift', 'Android Studio', 'Xcode'];
final List<String> ksWebTech = [
  'HTML',
  'CSS',
  'C',
  'Java',
];
final List<String> ksOtherTech = [
  'Firebase',
  'MongoDB',
  'SQL',
  'Python',
];

const String ksCoding = "Full Stack App Developer";
const String ksCodingMobile = "App\nDeveloper";
const String ksCoffee = "Coffee";
const String ksReading = "Reading";
const String ksMusic = "Music";
const String ksMusicMobile = "Music";
const String ksMovie = "Movies";
const String ksExplore = "Exploring more...";
const String ksExploreMobile = "Exploring\nmore...";

final List<RouteModel> ksMenu = [
  RouteModel(label: ksHome, route: Routes.home),
  RouteModel(label: ksProject, route: Routes.projects),
  RouteModel(label: ksExperience, route: Routes.experience),
  RouteModel(label: ksCertificates, route: Routes.certificates),
  RouteModel(label: ksAbout, route: Routes.about),
  RouteModel(label: ksContact, route: Routes.contact),
];

const String ksCertificateAndProjetcs = "Awards & Activities";
const String ksAward = "Certificate I've";
const String ksAwardName = "Play Academy Google play Store Listing Certificate";
const String ksAwardLink = "https://www.credential.net/4686976e-66d3-4880-b4dd-377baf43d259#acc.KkArbtH4";
const String ksAwardDetails =
    """
- The Google Play Listing Certificate is a professional credential offered by Google Play Academy. It is designed to help app developers, marketers, and business owners master the art of creating high-quality Google Play Store listings. 
""";
const String ksActivities = "Projects";
final List<Activity> ksActivityList = [
  Activity(
    title: ksAward,
    name: ksAwardName,
    icon: kiTrophy,
    details: ksAwardDetails,
    link: ksAwardLink,
  ),
  Activity(
    title: ksActivities,
    name:
        "Music App ",
    icon: kiActivity,
    details:
        "This is a five-week Exchange Program with Singapore Polytechnic ( 3-weeks in Singapore and 2-weeks in Myanmar Learnt data analytics, design thinking and co-operation skills and applied them on the Coffee Farm ProjectSrif Music is an Android app designed to provide an enhanced music listening experience. It integrates YouTube for streaming music and Musixmatch for displaying lyrics in real-time, offering users a seamless combination of audio and lyrics while they enjoy their favorite songs",
  ),
  Activity(
    name:
    "Programming Language Learning App",
    icon: kiActivity,
    details:
        "Learnify is a dynamic programming language learning app designed for both beginners and professionals. Built with Java and Kotlin in Android Studio, it integrates Firebase for user authentication, real-time database, and cloud storage. Learnify features an intuitive user panel, an admin panel for managing content, engaging quizzes, and a real-time code editor. Users can practice coding directly within the app, view live outputs, and enhance their skills with an experience similar to platforms like Mimo.",)
];

final List<Experience> ksExperiences = [
  Experience(
    company: "Accenture",
    position: " Coding: Development and Advanced Engineering",
    responsibilities: [
      "Client Support for Code Growth: Supported a client with a small development team overwhelmed by codebase expansion.",
      "Search Functionality in Java: Developed a search functionality class for an interactive website using Java and Spring Boot.",
      "Automated Builds with Jenkins: Configured Jenkins for automated builds to validate code changes on every pushs",
      "Agile Planning and Workload Management: Managed team workload by writing user stories and planning sprints for efficient project development.",
    ],
    startDate: DateTime(2024, 11),
    endDate: DateTime.now(),
  ),
  Experience(
    company: "J.P. Morgan Chase and Co.",
    position: " Software Engineering Virtual Experience",
    responsibilities: [
      "Local Development Environment Setup: Set up a local development environment by downloading the necessary files, tools, and dependencies.",
      "Repository Fixes : Fixed broken files in the repository to ensure the web application outputs correctly.",
      "Perspective Library Integration : Integrated JPMorgan Chase’s open-source library, Perspective, to generate a livegraph", 
     " https://forage-uploads-prod.s3.amazonaws.com/completion-certificates/J.P.%20Morgan/R5iK7HMxJGBgaSbvk_J.P.%20Morgan_P7BQTgLeCdqNfNkxg_1716631256091_completion_certificate.pdf",
    ],
    startDate: DateTime(2024, 5),
    endDate: DateTime(2024, 5),
  ),
  Experience(
    company: "Tech Chefz Digital Pvt Ltd",
    position: "Android Developer Intern",
    responsibilities: [
      "Developed Android UIs: Used Kotlin and Jetpack Compose to create interfaces with modern design Principles.",
      "MVVM Architecture: Structured projects with MVVM for maintainable code, ensuring efficient UI data interaction.",
      "API Integration: Integrated RESTful APIs with Retrofit and managed task with real time Data handling",
    ],
    startDate: DateTime(2024, 2),
    endDate: DateTime(2024, 5),
  ),
];

final List<Certificate> ksCertificateList = [
  Certificate(
    name: "Introduction to android mobile app development (coursera)",
    image: kaintrotoAD,
    link: "",
  ),
  Certificate(
    name: "Play store listing certificate",
    image: kaPlayStore,
    link: "",
  ),
];

const String _nikolaTesla = "Nikola Tesla";
const String _kentBeck = "Kent Beck";
const String _linusTorvalds = "Linus Torvalds";
const String _donaldKnuth = "Donald Knuth";
const String _albertEinstein = "Albert Einstein";
const String _alanTuring = "Alan Turing";
const String _johnLennon = "John Lennon";
const String _steveJobs = "Steve Jobs";
const String _kurtCobain = "Kurt Cobain";
const String _jamesClear = "James Clear";
final List<Quote> ksQuotes = [
  Quote(
    name:
        "Our virtues and our failings are inseparable, like force and matter. When they separate, man is no more.",
    author: _nikolaTesla,
  ),
  Quote(
    name:
        "I’m not a great programmer. I’m just a good programmer with great habits.",
    author: _kentBeck,
  ),
  Quote(
    name: "I'm generally a very pragmatic person: that which works, works.",
    author: _linusTorvalds,
  ),
  Quote(
    name: "Premature optimization is the root of all evil.",
    author: _donaldKnuth,
  ),
  Quote(
    name:
        "Everyday life is like programming, I guess. If you love something you can put beauty into it.",
    author: _donaldKnuth,
  ),
  Quote(
    name: "A person who never made a mistake never tried anything new.",
    author: _albertEinstein,
  ),
  Quote(
    name: "I have no special talent. I am only passionately curious.",
    author: _albertEinstein,
  ),
  Quote(
    name:
        "Sometimes it is the people who no one imagines anything of who do the things that no one can imagine.",
    author: _alanTuring,
  ),
  Quote(
    name: "Life is what happens when you're busy making other plans.",
    author: _johnLennon,
  ),
  Quote(
    name: "The duty of youth is to challenge corruption.",
    author: _kurtCobain,
  ),
  Quote(
    name: "Stay hungry, stay foolish.",
    author: _steveJobs,
  ),
  Quote(
    name: "It's hard to build momentum if you're dividing your attention.",
    author: _jamesClear,
  ),
  Quote(
    name: "Deconstruction creates knowledge. Recombination creates value.",
    author: _jamesClear,
  ),
];

const String ksGithubLink = 'https://github.com/AryantKumar';
const String ksLinkedInLink = 'https://www.linkedin.com/in/aryant-kumar-dev/';
final List<SocialMedia> ksSocialMedia = [
  SocialMedia(
    link: ksGithubLink,
    icon: FaIcon(
      FontAwesomeIcons.github,
      color: kSecondary,
      size: s18,
    ),
  ),
  SocialMedia(
    link: ksLinkedInLink,
    icon: FaIcon(
      FontAwesomeIcons.linkedin,
      color: kSecondary,
      size: s18,
    ),
  ),
];

const String _FLUTTER = 'Flutter';
const String _DART = 'Dart';
const String _FIREBASE = 'Firebase';
const String _HTML = 'Html';
const String _CSS = 'Css';
const String _JAVASCRIPT = 'Javascript';
const String _GRAPHQL = "GraphQL";
const String _ME = 'Aryant Kumar';
const String _KOTLIN = 'Kotlin';

const String _ANDROID = 'Android';
const String _IOS = 'Ios';
const String _WINDOWS = 'Windows';
const String _LINUX = 'Linux';
const String _MAC = 'MacOs';
const String _WEB = 'Web';
final List<ShowcaseProject> ksShowcaseProjects = [
  ShowcaseProject(
    title: 'Music App SrifMusic',
    image: kaSrifmusic,
    shortDescription:
        "Srif Music is an Android app that combines YouTube streaming and Musixmatch lyrics for an immersive music experience.",
    description: """
       Srif Music is an Android app that enhances the music experience with the following features::
          - YouTube music streaming integration
          - Real-time lyrics display from Musixmatch
          - Seamless user interface built with Jetpack Compose
        """,
    link: ProjectInfo(
      icon: kiLink,
      label: "Project Links",
      isLink: true,
      contents: [
        "https://github.com/AryantKumar",
      ],
    ),
    heroTag: 'SrifMusic',
    tags: ProjectInfo(
      icon: kiTag,
      label: 'Tags',
      isTag: true,
      contents: [
        'package',
        _ANDROID.toLowerCase(),
        _KOTLIN.toLowerCase(),
        'Can see lyrics',
      ],
    ),
    tech: ProjectInfo(
      icon: kiChip,
      label: 'Tools & Technologies',
      contents: [
        _KOTLIN.toUpperCase(),
      ],
    ),
    author: ProjectInfo(
      icon: kiPerson,
      label: 'Developer',
      contents: [
        _ME,
      ],
    ),
    platform: ProjectInfo(
      icon: kiLaptop,
      label: 'Available Platforms',
      contents: [
        _ANDROID,
      ],
    ),
  ),
  ShowcaseProject(
    title: 'Learnify',
    image: kaLearnify,
    shortDescription: "Learnify is a programing language learning app",
    description: """
        Notee is a personal management app that includes four parts :
          -Programming Lessons: Provides lessons in various programming languages.
          -Real-time Code Editor: Allows users to write and test code in real-time.
          -Quizzes: Includes quizzes to assess and enhance learning.
          -Firebase Integration: Uses Firebase for authentication, real-time database, and cloud storage.
        """,
    link: ProjectInfo(
        icon: kiLink,
        label: "Project Links",
        isLink: true,
        contents: [
          "https://github.com/AryantKumar",
        ]),
    heroTag: 'notee',
    tags: ProjectInfo(
      icon: kiTag,
      label: 'Tags',
      isTag: true,
      contents: [
        'app',
        _KOTLIN.toLowerCase(),
        _ANDROID.toLowerCase(),
      ],
    ),
    tech: ProjectInfo(
      icon: kiChip,
      label: 'Tools & Technologies',
      contents: [
        _ANDROID.toUpperCase(),
        _KOTLIN.toUpperCase(),
        _FIREBASE.toUpperCase(),
      ],
    ),
    author: ProjectInfo(
      icon: kiPerson,
      label: 'Developer',
      contents: [
        _ME,
      ],
    ),
    platform: ProjectInfo(
      icon: kiLaptop,
      label: 'Available Platforms',
      contents: [
        _ANDROID
      ],
    ),
  ),
  ShowcaseProject(
    title: 'Sirigem - An AI debugger for Android Studio and Xcode(Prototype)',
    image: kaSirigem,
    shortDescription:
        "SiriGem is an AI-powered debugger designed to assist developers by automatically detecting and fixing errors in Xcode and Android Studio, enhancing coding efficiency and reducing troubleshooting time.",
    description: """
        Here, I provide you with things:
          1. Real-time Error Detection
          2. Automated Bug Fix Suggestions
          3. Code Completion and Autofix
          4. Context-Aware Debugging
          5. Performance Optimization
          6. Cross-Platform Debugging
          7. Code Linting & Version Control Integration 
        """,
    link: ProjectInfo(
      icon: kiLink,
      label: "Project Links",
      isLink: true,
      contents: [
        "https://github.com/AryantKumar",
      ],
    ),
    heroTag: 'Sirigem',
    tags: ProjectInfo(
      icon: kiTag,
      label: 'Tags',
      isTag: true,
      contents: [
        'debugging',
        _ANDROID.toLowerCase(),
        _IOS.toLowerCase(),
      ],
    ),
    tech: ProjectInfo(
      icon: kiChip,
      label: 'Tools & Technologies',
      contents: [
        _KOTLIN.toUpperCase(),
        _ANDROID.toUpperCase(),
        'Swift',
      ],
    ),
    author: ProjectInfo(
      icon: kiPerson,
      label: 'Developer',
      contents: [
        _ME,
      ],
    ),
    platform: ProjectInfo(
      icon: kiLaptop,
      label: 'Available Platforms',
      contents: [
        _ANDROID,
        _IOS,
      ],
    ),
  ),
];
