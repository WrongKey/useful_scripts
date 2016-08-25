#!/bin/bash

sudo service mesos-slave stop
echo manual | sudo tee /etc/init/mesos-slave.override
