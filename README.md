# Xournal Plugin BulletJournalGraphs

## Introduction
[Xournalpp](https://github.com/xournalpp/xournalpp) plugin to make bullet journal graphics.

  * **BulletJournalGraphs** The plugin directory.
  * **makedeb** This directory contains the script to generate the `xournalpp-plugin-bulletjournalgraphs.deb` binary file.

## Download and Install

Go to the [release page](https://github.com/trucomanx-xournalpp-plugins/BulletJournalGraphs/releases) and download the latest VERSION, then run:

    sudo apt install ./xournalpp-plugin-bulletjournalgraphs-{VERSION}.deb

## Manual Install

To install the plugin, follow any of these methods:

  * Copy the directory `BulletJournalGraphs` into the path `/usr/share/xournalpp/plugins/`, or
  * Create the `xournalpp-plugin-bulletjournalgraphs.deb` binary file by executing the script in the `makedeb` directory, following these commands:

        git clone https://github.com/trucomanx-xournalpp-plugins/BulletJournalGraphs.git
        cd BulletJournalGraphs/makedeb
        ./makedeb.sh
        sudo apt install ./xournalpp-plugin-bulletjournalgraphs-{VERSION}.deb

## Usage

### Arrow Bullet `<Ctrl><Alt>a`
![Arrow Bullet](screenshot/screenshot1.png)

### Title Round `<Ctrl><Alt>r`
![Title Round](screenshot/screenshot2.png)

