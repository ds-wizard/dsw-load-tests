import os
import pathlib

from tools.makefile_template import create_content

makefile_path = pathlib.Path(__file__).parent.parent / 'Makefile'
if os.path.exists(makefile_path):
    os.remove(makefile_path)
with (makefile_path.open(encoding='utf-8', mode='w+') as makefile):
    makefile.write(create_content())
