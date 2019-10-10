####################################################################################################
What does the Area Job Search program do?

The Area Job Search program is a command line program that searches craigslist for software jobs.
The user will be prompted to input the desired zip code and search radius.
The program will give the user a list of jobs in the specified area.
The user can then select a job number to get more details about that job.
The program will display all the attributes of the selected job.
The user will be prompted to enter another job number, view the list of jobs, or exit the program.
This will loop until the user enters exit.
####################################################################################################

1). Take inputs from user in CLI
      - Zip code
      - Search Radius (must be restricted to <200 miles)
2). Generate the url that will be scraped
      - Uses the zip code and search radius input to call the right page on craigslist
3). Make a list of the jobs
      - Add jobs to an @@all array
4). Print the whole list
5). Display the selected job


