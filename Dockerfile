FROM 172.30.187.6:5000/cicd/centos-java
EXPOSE 8080
# Add configuration files, bashrc and other tweaks
COPY ./s2i/bin/ $STI_SCRIPTS_PATH
# Add tfs-cli
COPY ./TEE-CLC-11.0.0 /tmp/
RUN chown -R 1001:0 ./
USER 1001

CMD echo "test"
