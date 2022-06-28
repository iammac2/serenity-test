FROM gitpod/workspace-java-17

USER gitpod

RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh &&     sdk install java 17.0.3-ms &&     sdk default java 17.0.3-ms"

RUN pwd
RUN mkdir -p /workspace/serenity-test/support
RUN ls -la /workspace/serenity-test/support

# Install Chrome WebDriver
RUN CHROMEDRIVER_VERSION=`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE` && \
    mkdir -p /workspace/serenity-test/support && \
    curl -sS -o /workspace/serenity-test/support/chromedriver_linux64.zip http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip && \
    unzip -qq /workspace/serenity-test/support/chromedriver_linux64.zip -d /workspace/serenity-test/support/chromedriver-$CHROMEDRIVER_VERSION && \
    #rm /tmp/chromedriver_linux64.zip && \
    chmod +x /workspace/serenity-test/support/chromedriver-$CHROMEDRIVER_VERSION/chromedriver && \
    #sudo ln -fs /workspace/serenity-test/tmp/chromedriver-$CHROMEDRIVER_VERSION/chromedriver /usr/local/bin/chromedriver
    sudo mv /workspace/serenity-test/support/chromedriver-$CHROMEDRIVER_VERSION/chromedriver /usr/local/bin/

# Install Google Chrome Latest Stable
RUN sudo apt-get update
RUN sudo apt-get install -y wget
RUN sudo wget -O /workspace/serenity-test/support/google-chrome-stable_current_amd64.deb -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN sudo apt-get install -y /workspace/serenity-test/support/google-chrome-stable_current_amd64.deb
RUN google-chrome --version
RUN ls -la /workspace/serenity-test/support


