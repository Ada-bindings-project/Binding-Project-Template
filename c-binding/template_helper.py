import subprocess
import GPS
import sys


class Project_Template_Project:

    def __init__(self):
        pass
        # self.assistant = None

    def write(self, item):

        GPS.Console().write('"%s"' % item)

    def on_apply(self):
        try:
            # Initialize the project as a git project
            #
            self.write(str(self) + "\n")
            self.write(str(dir(self)) + "\n")
            self.write(subprocess.check_output(["git", "init", "."]))
            self.write(subprocess.check_output
                       (["git", "add",  "."]))
            self.write(subprocess.check_output
                       (["git", "commit",
                         "-mInitial commit in project creation."]))

            GPS.Project.recompute()
        except:
            print("Unexpected error:", sys.exc_info()[0])


def get_object():
    return Project_Template_Project()
