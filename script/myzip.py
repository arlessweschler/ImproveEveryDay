#!/usr/local/bin/python
# coding=utf-8
import commands
import sys

import datetime


def excuteCmd(cmd):
    (status, output) = commands.getstatusoutput(cmd)
    print cmd, status, output


def parseArgument():
    if (len(sys.argv) < 2):
        return
    patharg = sys.argv[1]
    time = datetime.datetime.now().strftime('_%y年%m月%d日_%H点%M分%S秒')
    cmd = 'zip -x "*/build/*" -x "*/.svn/*" -x "*.iml" -x "*.DS_Store" -r '
    zipName = '%s%s.zip ' % (patharg, time)
    excuteCmd(cmd + zipName + patharg)


excuteCmd('pwd')
parseArgument()
