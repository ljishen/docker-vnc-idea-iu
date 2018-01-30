# docker-vnc-ideaui

## Usage

1. Download and extract the [IntelliJ IDEA tarball](https://www.jetbrains.com/idea/download/#section=linux)
   ```bash
   mkdir $HOME/ideaUI && tar -xf ideaIU-XXXX.X.X.tar.gz --strip 1 -C $HOME/ideaUI
   ```

2. Start the VNC server with the `run` script
   ```bash
   ./run
   ```

3. Connect to the remote host via any VNC viewer

   `[HOST_IP]:5901`, default password: `vncpassword`

4. Launch IntelliJ IDEA via command line
   ```bash
   idea.sh
   ```
