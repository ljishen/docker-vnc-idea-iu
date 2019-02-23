# docker-vnc-ideaiu

## Usage

1. Download and extract the [IntelliJ IDEA tarball](https://www.jetbrains.com/idea/download/#section=linux)
   ```bash
   mkdir $HOME/idea-IU && tar -xf ideaIU-XXXX.X.X.tar.gz --strip 1 -C $HOME/idea-IU
   ```

2. Start the VNC server with the `run` script
   ```bash
   ./run
   ```

3. Connect to the remote host via any VNC viewer

   `[HOST_IP]:5900`

   You can also connect via browsing

   `http://[HOST_IP]:6080`

4. You should able to see IntelliJ IDEA started on the desktop, otherwise you can launch it via command line
   ```bash
   idea.sh
   ```
