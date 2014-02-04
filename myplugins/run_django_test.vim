if !has('python')
    echo "Error: Required vim compiled with +python"
    finish
endif


function! RunTest()

" Python code

python << endPython

import re
import vim


def get_app_name():
    return vim.current.buffer.name.split('/')[-2]


def get_class_name(line_number):
    class_regex = re.compile(r"^class (?P<class_name>.+)\(")
    for line in xrange(line_number - 1, -1, -1):
        if class_regex.search(vim.current.buffer[line]) is not None:
            class_name = class_regex.search(vim.current.buffer[line])
            return class_name.group(1)

    return False


def get_method_name(line_number):
    class_regex = re.compile(r"^class (?P<class_name>.+)\(")
    method_regex = re.compile(r"def (?P<method_name>.+)\(")
    for line in xrange(line_number - 1, -1, -1):
        if class_regex.search(vim.current.buffer[line]) is not None:
            return False
        if method_regex.search(vim.current.buffer[line]) is not None:
            method_name = method_regex.search(vim.current.buffer[line])
            return method_name.group(1)
    return False


def main():
    line_number = vim.current.window.cursor[0]
    project_root = '/'.join(vim.current.buffer.name.split('/')[:-2])
    vim.command(":!python " + project_root + "/manage.py test " + get_app_name() + ".tests" + ":" + get_class_name(line_number) + "." + get_method_name(line_number))
    return True


main()

endPython
endfunction

command! DjangoRunTest call RunTest()
