import os
def school_input_processor(school):
    sauce = school.split()
    if len(sauce) > 1:
        new_sauce=sauce[0]
        for i in range(1, len(sauce)-1):
            new_sauce+="+"
            new_sauce+=sauce[i]
        new_sauce+=('+'+sauce[-1])
        return new_sauce
    elif len(sauce) == 1:
        return sauce[0]
    elif len(sauce) == 0:
        return ''


def program_input_processor(program):
    source = program.split()
    if len(source) > 1:
        new_source = source[0]
        for i in range(1, len(source)-1):
            new_source += "+"
            new_source += source[i]
        new_source += ('+'+source[-1])
        return new_source
    elif len(source) == 1:
        return source[0]
    elif len(source) == 0:
        return ''


def renamer(file_name):
    filename = (str(file_name)+'.csv')
    os.rename('Data_table.csv',filename)
