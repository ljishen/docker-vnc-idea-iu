# docker-vnc-idea-iu [![](https://images.microbadger.com/badges/version/ljishen/docker-vnc-idea-iu.svg)](https://microbadger.com/images/ljishen/docker-vnc-idea-iu "Get your own version badge on microbadger.com")


## Usage

1. Download and extract the [IntelliJ IDEA tarball](https://www.jetbrains.com/idea/download/#section=linux)
   ```bash
   mkdir $HOME/idea-IU && tar -xf ideaIU-XXXX.X.X.tar.gz --strip 1 -C $HOME/idea-IU
   ```

2. Start the VNC server by running the `run` script
   ```bash
   ./run
   ```

3. Now, you can connect to the remote host via any VNC viewer,

   `[HOST_IP]:5900`

   or access the noVNC client via browsing

   `http://[HOST_IP]:6080`

4. You should able to see the IntelliJ IDEA have started. If not, you can start the IDEA by typing in the command line
   ```bash
   idea.sh
   ```

## Credit

This image is built based on dorowu/ubuntu-desktop-lxde-vnc. You can find more options from [fcwu/docker-ubuntu-vnc-desktop](https://github.com/fcwu/docker-ubuntu-vnc-desktop).
