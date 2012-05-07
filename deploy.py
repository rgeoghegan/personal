import os

IGNORE_FILES = set(["colours.sh", "deploy.py", "deploy.pyc"])

def ignore(filename):
    if filename in IGNORE_FILES:
        return True
    if filename.startswith("."):
        return True
    return False

if __name__ == "__main__":
    dest = os.getenv("HOME")
    for filename in os.listdir("."):
        if not ignore(filename):
            real_dest = os.path.join(
                dest,
                "." + filename
            )
            if os.path.exists(real_dest):
                print "File %r already exists" % (filename,)
            else:
                print "Symlinking %r" % (filename,)
                os.symlink(filename, real_dest)
