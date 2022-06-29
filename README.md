# serenity-test
Serenity Testing on GitPod example

Open project in gitpod:

`https://gitpod.io/#https://github.com/iammac2/serenity-test/tree/develop`

`.gitpod.yml` builds the Dockerfile which does the following:
- Dockerfile pulls the gitpod java image and installs java
- Dockerfile adds & installs google-chrome latest
- Dockerfile adds & installs chromedriver latest

The project has chrome set to headless mode so chromedriver can start Chrome without needing it's UI. Chrome UI does not work as the gitpod workspace is command line only i.e. no graphics driver.

Currently the code needs to be built and run in the integrated VSCode terminal:
`mvn verify`
All chrome settings are in serenity.conf
