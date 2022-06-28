FROM gitpod/workspace-java-17

USER gitpod

RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh &&     sdk install java 17.0.3-ms &&     sdk default java 17.0.3-ms"

# Install Google Chrome Latest Stable
RUN sudo apt-get update
RUN sudo apt-get install -y wget
RUN sudo wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN sudo apt-get install ./google-chrome-stable_current_amd64.deb
RUN google-chrome --version

# Install Chrome WebDriver
RUN CHROMEDRIVER_VERSION=`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE` && \
    #mkdir -p /opt/chromedriver-$CHROMEDRIVER_VERSION && \
    curl -sS -o chromedriver_linux64.zip http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip && \
    unzip -qq chromedriver_linux64.zip -d /opt/chromedriver-$CHROMEDRIVER_VERSION && \
    #rm /tmp/chromedriver_linux64.zip && \
    chmod +x /opt/chromedriver-$CHROMEDRIVER_VERSION/chromedriver && \
    ln -fs /opt/chromedriver-$CHROMEDRIVER_VERSION/chromedriver /usr/local/bin/chromedriver
