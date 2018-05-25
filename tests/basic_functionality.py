import os

from configtest import ConfigTest, MasterLink, Link


class Install(ConfigTest):

    """
    Tests installing of alternatives

    :avocado: recursive
    """

    def test_install_master_link_only(self):
        """Tests whether the link installed to bin_dir is linked to path where master is located"""
        master = MasterLink(self.bin_dir)
        self.assertTrue(self.alternatives_install([master]))
        self.assertTrue(os.path.exists(master.link))
        self.assertEqual(master.path, os.path.realpath(master.link))

    def test_install_master_and_slave_link(self):
        """Tests whether master and slave link are linked to paths of the real files"""
        master = MasterLink(self.bin_dir)
        slave = Link(self.bin_dir, master)
        self.assertTrue(self.alternatives_install([master, slave]))

        self.assertTrue(os.path.exists(master.link))
        self.assertTrue(os.path.exists(slave.link))

        self.assertEqual(master.path, os.path.realpath(master.link))
        self.assertEqual(slave.path, os.path.realpath(slave.link))

    def test_fail_when_name_unset(self):
        """Tests whether fails when master name is unset"""
        master = MasterLink(self.bin_dir)
        master.name = ''
        slave = Link(self.bin_dir, master)
        self.assertFalse(self.alternatives_install([master, slave]))

    def test_fail_when_master_path_unset(self):
        """Tests whether fails when master path is unset"""
        master = MasterLink(self.bin_dir)
        master.path = ''
        slave = Link(self.bin_dir, master)
        self.assertFalse(self.alternatives_install([master, slave]))

    def test_fail_when_priority_unset(self):
        """Tests whether fails when master priority is unset"""
        master = MasterLink(self.bin_dir)
        master.priority = None
        slave = Link(self.bin_dir, master)
        self.assertFalse(self.alternatives_install([master, slave]))

    def test_fail_when_slave_name_unset(self):
        """Tests whether fails when slave name is unset"""
        master = MasterLink(self.bin_dir)
        slave = Link(self.bin_dir, master)
        slave.name = ''
        self.assertFalse(self.alternatives_install([master, slave]))

    def test_fail_when_slave_path_unset(self):
        """Tests whether fails when slave path is unset"""
        master = MasterLink(self.bin_dir)
        slave = Link(self.bin_dir, master)
        slave.path = ''
        self.assertFalse(self.alternatives_install([master, slave]))


class RemoveAll(ConfigTest):

    """
    Tests removing all alternatives of a given facility

    :avocado: recursive
    """

    def test_remove_all(self):
        """Tests whether all links from master and its slaves disappeared"""
        master = MasterLink(self.bin_dir)
        slave = Link(self.bin_dir, master)
        self.assertTrue(self.alternatives_install([master, slave]))
        self.assertTrue(self.alternatives_remove_all(master.name))

        self.assertFalse(os.path.exists(master.link))
        self.assertFalse(os.path.exists(master.name))
        self.assertFalse(os.path.exists(slave.link))
        self.assertFalse(os.path.exists(slave.name))
