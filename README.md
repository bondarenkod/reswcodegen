# reswcodegen
A Visual Studio Custom Tool for generating a strongly typed helper class for accessing localized resources from a .ResW file.

This is custom build of the https://github.com/christianhelle/reswcodegen because the author of the original package missed to do this for a long time.

List of changes:
- gitignore was added
- new packages.config with correct (at this moment) referenses instead of referensing dlls. 
- to build this sources you have to install corresponding VS feature. 
- I left only VS2017+ as the target.
- .net 4.6 as target

You could download the package from the "releases" section or build from the sources.

Plans:
- rename & publish to the store (I'll remove that package if author will fix her project)
- review and clean the code. I want to remove the old stuff (<=2015) and learn how to write such as this extensions.


