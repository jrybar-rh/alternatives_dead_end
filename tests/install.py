from basetest import BaseTest, MasterLink, Link
import os


class Install(BaseTest):

    """
    Network performance tests

    :avocado: recursive
    """

    def test_install_master_link_only(self):
        """Tests whether the link installed to bin_dir is linked to path where master is located"""
        master = MasterLink(self.bin_dir)
        self.assertTrue(self.alternative_install(master))
        self.assertTrue(os.path.exists(master.link))
        self.assertEqual(master.path, os.path.realpath(master.link))

    def test_install_master_and_slave_link(self):
        """Tests whether master and slave link are linked to paths of the real files"""
        master = MasterLink(self.bin_dir)
        slave = Link(self.bin_dir, master)
        self.assertTrue(self.alternative_install(' '.join([str(master), str(slave)])))

        self.assertTrue(os.path.exists(master.link))
        self.assertTrue(os.path.exists(slave.link))

        self.assertEqual(master.path, os.path.realpath(master.link))
        self.assertEqual(slave.path, os.path.realpath(slave.link))
