#############################################################################
##  
##  PackageInfo.g for the package `PrimGrp'
##
##  (created from the template file in the `Example' package)
##  

SetPackageInfo( rec(

##  This is case sensitive, use your preferred spelling.
##
PackageName := "PrimGrp",

##  This may be used by a default banner or on a Web page, should fit on
##  one line.
Subtitle := "GAP Primitive Permutation Groups Library",

##  See '?Extending: Version Numbers' in GAP help for an explanation
##  of valid version numbers. For an automatic package distribution update
##  you must provide a new version number even after small changes.
Version := "3.1.2",
##  Release date of the current version in dd/mm/yyyy format.
##
Date := "08/09/2017",
##  Optional: if the package manual uses GAPDoc, you may duplicate the 
##  version and the release date as shown below to read them while building
##  the manual using GAPDoc facilities to distibute documents across files.
##  <#GAPDoc Label="PKGVERSIONDATA">
##  <!ENTITY VERSION "3.1.2">
##  <!ENTITY RELEASEDATE "8 September 2017">
##  <!ENTITY RELEASEYEAR "2017">
##  <#/GAPDoc>

PackageWWWHome :=
  Concatenation( "https://gap-packages.github.io/",
      LowercaseString( ~.PackageName ), "/" ),

SourceRepository := rec(
    Type := "git",
    URL := Concatenation( "https://github.com/gap-packages/", LowercaseString(~.PackageName) ),
),
IssueTrackerURL := Concatenation( ~.SourceRepository.URL, "/issues" ),

##  URL of the archive(s) of the current package release, but *without*
##  the format extension(s), like '.tar.gz' or '-win.zip', which are given next.
##  The archive file name *must be changed* with each version of the archive
##  (and probably somehow contain the package name and version).
##  The paths of the files in the archive must begin with the name of the
##  directory containing the package (in our "example" probably:
##  example/init.g, ...    or example-3.3/init.g, ...  )
# 
ArchiveURL      := Concatenation( ~.SourceRepository.URL,
                                 "/releases/download/v", ~.Version,
                                 "/", LowercaseString(~.PackageName), "-", ~.Version ),

##  All provided formats as list of file extensions, separated by white
##  space or commas.
##  Currently recognized formats are:
##      .tar.gz    the UNIX standard
##      .tar.bz2   compressed with 'bzip2', often smaller than with gzip
##      -win.zip   zip-format for DOS/Windows, text files must have DOS 
##                 style line breaks (CRLF)
##  
##  In the future we may also provide .deb or .rpm formats which allow
##  a convenient installation and upgrading on Linux systems.
##  
# ArchiveFormats := ".tar.gz", # the others are generated automatically
ArchiveFormats := ".tar.gz",

##  If not all of the archive formats mentioned above are provided, these 
##  can be produced at the GAP side. Therefore it is necessary to know which
##  files of the package distribution are text files which should be unpacked
##  with operating system specific line breaks. 
##  The package wrapping tools for the GAP distribution and web pages will
##  use a sensible list of file extensions to decide if a file 
##  is a text file (being conservative, it may miss a few text files). 
##  These rules may be optionally prepended by the application of rules 
##  from the PackageInfo.g file. For this, there are the following three
##  mutually exclusive possibilities to specify the text files:
##  
##    - specify below a component 'TextFiles' which is a list of names of the 
##      text files, relative to the package root directory (e.g., "lib/bla.g"),
##      then all other files are taken as binary files.
##    - specify below a component 'BinaryFiles' as list of names, then all other
##      files are taken as text files.
##    - specify below a component 'TextBinaryFilesPatterns' as a list of names
##      and/or wildcards, prepended by 'T' for text files and by 'B' for binary
##      files.
##  
##  (Remark: Just providing a .tar.gz file will often result in useful
##  archives)
##  
##  These entries are *optional*.
#TextFiles := ["init.g", ......],
#BinaryFiles := ["doc/manual.dvi", ......],
#TextBinaryFilesPatterns := [ "TGPLv3", "Texamples/*", "B*.in", ......],


##  Information about authors and maintainers is contained in the `Persons'
##  field which is a list of records, one record for each person; each 
##  person's record should be as per the following example: 
##  
##     rec(
##     # these are compulsory, the strings can be encoded in UTF-8 or latin1,
##     # so using German umlauts or other special characters is ok:
##     LastName := "Müller",
##     FirstNames := "Fritz Eduard",
##  
##     # At least one of the following two entries must be given and set 
##     # to 'true' (an entry can be left out if value is not 'true'):
##     IsAuthor := true;
##     IsMaintainer := true;
##  
##     # At least one of the following three entries must be given 
##     # for each maintainer of the package:
##     # - preferably email address and WWW homepage
##     # - postal address not needed if email or WWW address available
##     # - if no contact known, specify postal address as "no address known"
##     Email := "Mueller@no.org",
##     # complete URL, starting with protocol
##     WWWHome := "http://www.no.org/~Mueller",
##     # separate lines by '\n' (*optional*)
##     PostalAddress := "Dr. F. Müller\nNo Org Institute\nNo Place 13\n\
##     12345 Notown\nNocountry"
##     
##     # If you want, add one or both of the following entries (*optional*)
##     Place := "Notown",
##     Institution := "Institute for Nothing"
##     )
##  
Persons := [
  rec(
    LastName     := "Hulpke",
    FirstNames   := "Alexander",
    IsAuthor     := true,
    IsMaintainer := true,
    Email        := "hulpke@math.colostate.edu",
    WWWHome      := "http://www.math.colostate.edu/~hulpke",
    Place        := "Fort Collins, CO",
    Institution  := Concatenation( [
      "Department of Mathematics, ",
      "Colorado State University",
      ] )
    ),
  rec( 
    LastName      := "Konovalov",
    FirstNames    := "Alexander",
    IsAuthor      := false,
    IsMaintainer  := true,
    Email         := "alexk@mcs.st-andrews.ac.uk",
    WWWHome       := "http://www.cs.st-andrews.ac.uk/~alexk/",
    PostalAddress := Concatenation( [
                     "School of Computer Science\n",
                     "University of St Andrews\n",
                     "Jack Cole Building, North Haugh,\n",
                     "St Andrews, Fife, KY16 9SX, Scotland" ] ),
    Place         := "St Andrews",
    Institution   := "University of St Andrews"
     ),  
  rec( 
    LastName      := "Roney-Dougal",
    FirstNames    := "Colva M.",
    IsAuthor      := true,
    IsMaintainer  := false,
    Email         := "colva@mcs.st-andrews.ac.uk",
    WWWHome       := "http://www-groups.mcs.st-and.ac.uk/~colva/",
    PostalAddress := Concatenation( [
                     "School of Mathematics and Statistics\n",
                     "University of St Andrews\n",
                     "North Haugh, St Andrews\n",
                     "Fife, KY16 9SS, Scotland" ] ),
    Place         := "St Andrews",
    Institution   := "University of St Andrews"
     ),  
  rec( 
    LastName      := "Russell",
    FirstNames    := "Christopher",
    IsAuthor      := true,
    IsMaintainer  := true,
    Email         := "cr66@st-andrews.ac.uk",
    Place         := "St Andrews",
    Institution   := "University of St Andrews"
     ),  
],

##  Status information. Currently the following cases are recognized:
##    "accepted"      for successfully refereed packages
##    "submitted"     for packages submitted for the refereeing
##    "deposited"     for packages for which the GAP developers agreed 
##                    to distribute them with the core GAP system
##    "dev"           for development versions of packages 
##    "other"         for all other packages
##
# Status := "accepted",
Status := "deposited",

##  You must provide the next two entries if and only if the status is 
##  "accepted" because is was successfully refereed:
# format: 'name (place)'
# CommunicatedBy := "Mike Atkinson (St. Andrews)",
#CommunicatedBy := "",
# format: mm/yyyy
# AcceptDate := "08/1999",
#AcceptDate := "",

##  For a central overview of all packages and a collection of all package
##  archives it is necessary to have two files accessible which should be
##  contained in each package:
##     - A README file, containing a short abstract about the package
##       content and installation instructions.
##     - The PackageInfo.g file you are currently reading or editing!
##  You must specify URLs for these two files, these allow to automate 
##  the updating of package information on the GAP Website, and inclusion
##  and updating of the package in the GAP distribution.
#
README_URL := 
  Concatenation( ~.PackageWWWHome, "README.md" ),
PackageInfoURL := 
  Concatenation( ~.PackageWWWHome, "PackageInfo.g" ),

##  Here you  must provide a short abstract explaining the package content 
##  in HTML format (used on the package overview Web page) and an URL 
##  for a Webpage with more detailed information about the package
##  (not more than a few lines, less is ok):
##  Please, use '<span class="pkgname">GAP</span>' and
##  '<span class="pkgname">MyPKG</span>' for specifing package names.
##  
# AbstractHTML := "This package provides  a collection of functions for \
# computing the Smith normal form of integer matrices and some related \
# utilities.",
AbstractHTML := 
  "The <span class=\"pkgname\">PrimGrp</span> package provides the library \
  of primitive permutation groups which includes, up to permutation isomorphism \
  (i.e., up to conjugacy in the corresponding symmetric group), all primitive \
  permutation groups of degree &lt; 4096.",

##  Here is the information on the help books of the package, used for
##  loading into GAP's online help and maybe for an online copy of the 
##  documentation on the GAP website.
##  
##  For the online help the following is needed:
##       - the name of the book (.BookName)
##       - a long title, shown by ?books (.LongTitle, optional)
##       - the path to the manual.six file for this book (.SixFile)
##  
##  For an online version on a Web page further entries are needed, 
##  if possible, provide an HTML- and a PDF-version:
##      - if there is an HTML-version the path to the start file,
##        relative to the package home directory (.HTMLStart)
##      - if there is a PDF-version the path to the .pdf-file,
##        relative to the package home directory (.PDFFile)
##      - give the paths to the files inside your package directory
##        which are needed for the online manual (as a list 
##        .ArchiveURLSubset of names of directories and/or files which 
##        should be copied from your package archive, given in .ArchiveURL 
##        above (in most cases, ["doc"] or ["doc","htm"] suffices).
##  
##  For links to other GAP or package manuals you can assume a relative 
##  position of the files as in a standard GAP installation.
##  
# in case of several help books give a list of such records here:
PackageDoc := rec(
  # use same as in GAP            
  BookName  := "primgrp",
  # format/extension can be one of .tar.gz, .tar.bz2, -win.zip, .zoo.
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0.html",
  PDFFile   := "doc/manual.pdf",
  # the path to the .six file used by GAP's help system
  SixFile   := "doc/manual.six",
  # a longer title of the book, this together with the book name should
  # fit on a single text line (appears with the '?books' command in GAP)
  # LongTitle := "Elementary Divisors of Integer Matrices",
  LongTitle := "GAP Primitive Permutation Groups Library",
),


##  Are there restrictions on the operating system for this package? Or does
##  the package need other packages to be available?
Dependencies := rec(
  # GAP version, use the version string for specifying a least version,
  # prepend a '=' for specifying an exact version.
  GAP := "4.9.0",

  # list of pairs [package name, version], package name is case
  # insensitive, exact version denoted with '=' prepended to version string.
  # without these, the package will not load
  # NeededOtherPackages := [["GAPDoc", "1.5"]],
  NeededOtherPackages := [["GAPDoc", "1.5"]],

  # list of pairs [package name, version] as above,
  # these package are will be loaded if they are available,
  # but the current package will be loaded if they are not available
  # SuggestedOtherPackages := [],
  SuggestedOtherPackages := [],

  # *Optional*: a list of pairs as above, denoting those needed packages
  # that must be completely loaded before loading of the current package
  # is started (if this is not possible due to a cyclic dependency
  # then the current package is regarded as not loadable);
  # this component should be used only if functions from the needed packages
  # in question are called (or global lists or records are accessed)
  # while the current package gets loaded
  # OtherPackagesLoadedInAdvance := [],

  # needed external conditions (programs, operating system, ...)  provide 
  # just strings as text or
  # pairs [text, URL] where URL  provides further information
  # about that point.
  # (no automatic test will be done for this, do this in your 
  # 'AvailabilityTest' function below)
  # ExternalConditions := []
  ExternalConditions := []
                      
),

##  Provide a test function for the availability of this package.
##  For packages containing nothing but GAP code, just say 'ReturnTrue' here.
##  For packages which may not work or will have only partial functionality,
##  use 'LogPackageLoadingMessage( PACKAGE_WARNING, ... )' statements to
##  store messages which may be viewed later with `DisplayPackageLoadingLog'.
##  Do not call `Print' or `Info' in the `AvailabilityTest' function of the 
##  package.
##
##  With the package loading mechanism of GAP >=4.4, the availability
##  tests of other packages, as given under .Dependencies above, will be 
##  done automatically and need not be included in this function.
##
AvailabilityTest := ReturnTrue,

##  *Optional*: path relative to package root to a file which 
##  shall be read immediately before the package is loaded.
#PreloadFile := "...",

##  *Optional*, but recommended: path relative to package root to a file which 
##  contains as many tests of the package functionality as sensible.
##  The file can either consist of 'Test' calls or be a test file to be read
##  via 'Test' itself; it is assumed that the latter case occurs if and only
##  if the file contains the string 'gap> START_TEST('.
##  For deposited packages, these tests are run regularly, as a part of the
##  standard GAP test suite.
TestFile := "tst/testall.g",

##  *Optional*: Here you can list some keyword related to the topic 
##  of the package.
# Keywords := ["Smith normal form", "p-adic", "rational matrix inversion"]
Keywords := ["primitive permutation group"]

));

