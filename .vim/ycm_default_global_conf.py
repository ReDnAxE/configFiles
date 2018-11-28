import sys
import os
from os.path import expanduser

homeDir = expanduser("~")
default_cfamily_flags = ['-Wall', '-Wextra', '-fexceptions', '-I', homeDir + "/local/include", '-I', '.']
all_flags = {
  "c": default_cfamily_flags + ['-std=c99', '-x', 'c'],
  "c++": default_cfamily_flags + ['-std=c++11', '-x', 'c++'],
  "": [],
}

def GetLanguage(filename):
  extension = os.path.splitext( filename )[ 1 ]
  if extension in [ '.h', '.hh', '.c', '.cc' ]:
    return "c"
  elif extension in [ '.hxx', '.hpp', '.cpp', '.cxx' ]:
    return "c++"
  else:
    return ""

def Settings(**kwargs):
  language = kwargs['language']
  if language == "cfamily":
    filename = kwargs['filename']
    return {
      'flags': all_flags[GetLanguage(filename)],
    }
  return {}
