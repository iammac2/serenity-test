FROM gitpod/workspace-java-17

USER gitpod

RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh &&     sdk install java 17.0.3-ms &&     sdk default java 17.0.3-ms"

RUN pwd
RUN mkdir -p /workspace/serenity-test/tmp
RUN ls -la /workspace/serenity-test/tmp

# Install Google Chrome Latest Stable
RUN sudo apt-get update
RUN sudo apt-get install -y wget
RUN sudo wget -O /workspace/serenity-test/tmp/google-chrome-stable_current_amd64.deb -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN sudo apt-get install /workspace/serenity-test/tmp/google-chrome-stable_current_amd64.deb
RUN google-chrome --version
RUN ls -la /workspace/serenity-test/tmp

# Install Chrome WebDriver
RUN CHROMEDRIVER_VERSION=`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE` && \
    mkdir -p /workspace/serenity-test/tmp && \
    curl -sS -o /workspace/serenity-test/tmp/chromedriver_linux64.zip http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip && \
    unzip -qq /workspace/serenity-test/tmp/chromedriver_linux64.zip -d /workspace/serenity-test/tmp/chromedriver-$CHROMEDRIVER_VERSION && \
    #rm /tmp/chromedriver_linux64.zip && \
    chmod +x /workspace/serenity-test/tmp/chromedriver-$CHROMEDRIVER_VERSION/chromedriver && \
    ln -fs /opt/chromedriver-$CHROMEDRIVER_VERSION/chromedriver /usr/local/bin/chromedriver
