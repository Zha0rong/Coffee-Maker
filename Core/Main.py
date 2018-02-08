from bs4 import BeautifulSoup
import requests
import DataGenerator,Function
iterator = 0
while iterator == 0:
    school_input = str(input('Please enter the school you are searching for: '))
    program_input = str(input('Please enter your program: '))
    from Function import school_input_processor, program_input_processor,renamer
    formatted_school=school_input_processor(school_input)
    formatted_program=program_input_processor(program_input)
    print(formatted_school)
    print(formatted_program)
    y_n=input("Are these the information you like to search (y/n): ")
    from DataGenerator import Scraper, Page
    if y_n == 'y':
        Results=Scraper(formatted_school, formatted_program)
        Page_number= Page(formatted_school,formatted_program)
    elif y_n == 'n':
        print('rerun the script')
        iterator = 0
    namechangeyn=input("Do you wish to change the name of the data table (y/n): ")
    if namechangeyn == 'y':
        newname = input("Enter the name for the data table (no space): ")
        result=renamer(newname)
    else:
        iterator = 0
