![alt text](https://s3.eu-central-1.amazonaws.com/abapkoans/ABAPKoans.jpg)

# ABAP Koans
ABAP Koans source code.

# What are Koans?

Essentially a Koan is a problem to solve.

Or from the Wikipedia article I think the most relevant explanation is:

> Insight has to be demonstrated. A mere "answer" to a koan is not sufficient. The teacher is not looking for a specific answer, but for evidence that the disciple has grasped the state of mind expressed by the koan itself.
> I think this is particularly relevant to the field of programming.
> For this I am borrowing from the idea of the original Ruby Koans which involves the practitioner fixing a number of broken unit tests. Using a unit test framework allows for rapid feedback of the topics being discussed and using an IDE we can easily insert breakpoints to explore the code at run-time.

# System requirements
* ABAP 7.4+

# Within it you'll find:
* $ABAP_KOANS: this package contains everything and is the main entrypoint.
* Navigate to the the global classes and go to the 'local Testclass section'. Run the ABAP Unit Tests with the shortcut CTRL+SHIFT+F10 and solve step by step the ongoing challenges.

# Installation
* Download this repository as a zip
* Create a package `$ASE_KOANS`
* Install [abapGit](https://github.com/larshp/abapGit). How to:
    * Create a program `ZABAPGIT` in transaction SE38
    * Copy and paste the content from [latest abapGit build](https://raw.githubusercontent.com/larshp/abapGit/build/zabapgit.abap)
* Run ZABAPGIT
  * Create an offline project by click `+Offline`
    * Name: ABAP Koans
    * Package: $ABAP_KOANS
  * Click on `Import zip` and import the downloaded repository ZIP
