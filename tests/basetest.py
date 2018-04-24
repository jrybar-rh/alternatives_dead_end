from avocado import Test
from tempfile import mkdtemp, mkstemp
import os
from random import randint

from avocado.utils import process


class Link(object):
    """Serves as a dummy Slave Link for testing"""
    def __init__(self, bin_dir):
        self.name = 'prog' + str(randint(0, 9999))
        self.path = mkstemp()[1]
        self.program_dir = mkdtemp()
        self.link = os.path.join(bin_dir, self.name)

    def __str__(self):
        """Convert Link info to command line format used by alternatives"""
        cmd = ' '.join(['--slave', self.link, self.name, self.path])
        return cmd


class MasterLink(Link):
    """Serves as a dummy Master Link for testing"""
    def __init__(self, bin_dir, priority=randint(1, 9999)):
        super(MasterLink, self).__init__(bin_dir)
        self.priority = priority

    def __str__(self):
        """Convert Master Link info to command line format used by alternatives"""
        cmd = ' '.join([self.link, self.name, self.path, str(self.priority)])
        return cmd


class BaseTest(Test):

    def setUp(self):
        self.alt_dir = mkdtemp()
        self.admin_dir = mkdtemp()
        self.bin_dir = mkdtemp()
        self.alternatives_path = os.environ['ALTERNATIVES_BINARY']

        self.log.info("BaseTest setup() executed")

    def alternative_install(self, cmd):
        try:
            process.run("{} --install {} --altdir {} --admindir {}".format(self.alternatives_path,
                                                                           cmd,
                                                                           self.alt_dir,
                                                                           self.admin_dir))
        except process.CmdError as details:
            self.fail("Command failed: %s" % details)
        return True
