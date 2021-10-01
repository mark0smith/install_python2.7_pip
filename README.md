# install_python2.7_pip
bash script to install Pip on Python 2.7 in Linux, tested in Kali Linux.
Based on [Jonathan Rys](https://stackoverflow.com/users/6114445/jonathan-rys)'s answer on [How to install pip on Python 2.7 in 2021](https://stackoverflow.com/questions/68382662/how-to-install-pip-on-python-2-7-in-2021/68403027#68403027)

# Usage

1. clone or download this repo
2. run `bash install_only.sh`, last line of output shows version of pip.

<pre>
Traceback (most recent call last):
  File "./setuptools-44.1.1/setup.py", line 154, in <module>
    require_metadata()
  File "./setuptools-44.1.1/setup.py", line 22, in require_metadata
    raise RuntimeError(msg)
RuntimeError: Cannot build setuptools without metadata. Run `bootstrap.py`.
DEPRECATION: Python 2.7 reached the end of its life on January 1st, 2020. Please upgrade your Python as Python 2.7 is no longer maintained. pip 21.0 will drop support for Python 2.7 in January 2021. More details about Python 2 support in pip can be found at https://pip.pypa.io/en/latest/development/release-process/#python-2-support pip 21.0 will remove support for this functionality.
Defaulting to user installation because normal site-packages is not writeable
Looking in links: ./wheels/
Processing ./wheels/pip-20.3.4-py2.py3-none-any.whl
Installing collected packages: pip
<b>Successfully installed pip-20.3.4</b>
<b>pip 20.3.4 from /home/[username]/.local/lib/python2.7/site-packages/pip (python 2.7)</b>
</pre>

`install_pip_for_python_2.7.sh` suits for online environment and might be helpful.
