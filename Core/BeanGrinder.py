from bs4 import BeautifulSoup
import urllib.request,csv,os


def Page(school,program):
    school_program_location = str(school) + '+' + str(program)
    start_up = 'http://thegradcafe.com/survey/index.php?q='
    end_up = '&t=a&o=&pp=250'
    final_location = start_up + school_program_location + end_up
    page = urllib.request.urlopen(final_location).read()
    soup = BeautifulSoup(page, 'lxml')
    pagination=soup.body.find_all('div', attrs={'class': 'pagination'})
    Pagenumbercontainer = pagination[0]
    list = []
    for i in Pagenumbercontainer:
        list.append(i)
    pageinformation=list[2].split()
    page_number=int(pageinformation[1])
    return page_number

def Scraper(school,program):
    a = open('data.txt','w+')
    data = csv.writer(open('Data_table.csv','w+'),delimiter = ',', quoting = csv.QUOTE_ALL)
    school_program_location=str(school)+'+'+str(program)
    start_up = 'http://thegradcafe.com/survey/index.php?q='
    end_up = '&t=a&o=&pp=250'
    final_location = start_up+school_program_location+end_up
    page = urllib.request.urlopen(final_location).read()
    soup = BeautifulSoup(page, 'lxml')
    page_number_indicator = soup.body.find_all('div', attrs={'class': 'pagination'})
    Chunck = page_number_indicator[0]
    list = []
    for i in Chunck:
        list.append(i)
    mince = list[2]
    sauce = mince.split()
    page_number=int(sauce[1])
    if page_number == 1:
        soup = BeautifulSoup(page, 'lxml')
        table = soup.table
        table_rows = table.find_all('tr')
        for tr in table_rows:
            td = tr.find_all('td')
            row = [i.text for i in td]
            row_UTF =[x.encode('ascii','ignore').decode('ascii') for x in row] # This is used to solve the 'UnicodeEncodeError'
            a.write(str(row_UTF))
            data.writerow(row_UTF)
        a.close()
    else:
        for i in range(1, page_number+1):
            final_location = start_up + school_program_location + end_up + '&o=d&p=' + str(i)
            page = urllib.request.urlopen(final_location).read()
            soup = BeautifulSoup(page, 'lxml')
            table = soup.table
            table_rows = table.find_all('tr')
            for tr in table_rows:
                td = tr.find_all('td')
                row = [i.text for i in td]
                row_UTF =[x.encode('ascii',ignore).decode('ascii') for x in row] # This is used to solve the 'UnicodeEncodeError'
                a.write(str(row_UTF)) 
                data.writerow(row_UTF) 
        a.close()
