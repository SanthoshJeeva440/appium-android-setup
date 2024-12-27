FROM ubuntu:20.04

# Install dependencies
RUN apt-get update -y && apt-get install -y \
    openjdk-11-jdk \
    wget \
    unzip \
    git \
    curl \
    lib32stdc++6 \
    lib32z1 \
    qemu-kvm \
    libvirt-bin \
    ubuntu-vm-builder \
    bridge-utils

# Set up Android SDK
RUN mkdir -p /opt/android-sdk
WORKDIR /opt/android-sdk
RUN wget https://dl.google.com/android/repository/commandlinetools-linux-7583922_latest.zip -O android-tools.zip
RUN unzip android-tools.zip && rm android-tools.zip

# Accept licenses
RUN yes | /opt/android-sdk/cmdline-tools/bin/sdkmanager --licenses

# Install required SDK packages
RUN /opt/android-sdk/cmdline-tools/bin/sdkmanager "platform-tools" "emulator" "system-images;android-30;google_apis;x86_64"

# Set environment variables
ENV ANDROID_SDK_ROOT /opt/android-sdk
ENV PATH $PATH:/opt/android-sdk/cmdline-tools/bin:/opt/android-sdk/platform-tools:/opt/android-sdk/emulator

# Start Android Emulator
CMD emulator -avd Pixel_3_API_30 -noaudio -no-window -gpu off
