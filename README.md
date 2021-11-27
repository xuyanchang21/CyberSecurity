# Data Management and Exploratory Data Analysis CSC8631 Coursework

Building a data analytics pipeline to process, query and gain insights into a dataset which is from the record of Cyber Security course called **FutureLearn MOOC Dataset**. 


## Before Data Analysis
With the development of society and science,data analysing becoming more and more complex and widely use. This project focus on **Data Management and Exploratory Data Analysis**(EDA) to find something from Cyber Security Online Course in Newcastle University by CRISP-DM model.

Data comes from last 7 terms of this course and some specific information of students will not be included, and the deadline is 23th Nov 2018, also during and after this analysising, information will be protected.


In this project, we use some data analysis technology to get well knows of this course in Newcastle, and at the final, we can successfuly get some summary and give some excellent advises to director to make this course better than before so it will attract more people and obtain the good reputation. This will be test in next terms of this course.


As this dataset, we can define some data mining goals:
1. As a international well konwn university, the course should design very well for all the students who comes from whole world, it is better for attracting more students whole world.

2. The level of difficulty of this course should be balance and appropriate for all students in order to keep the completion and help students to understand them.

3. The custom churn can be interpreted as students churn problem,it is very important to know the why students left this course, why they can't complete or why they don't want to continue. 

### Tools Used:
- MacOS
- Git and Github for the version control
- *R* and with the package: **ProjectTemplate**, and **RMarkdown**
- Rstuio


### Resource
- Cyber Security Online learning course Data


### Project Plan
1. Do some basic attempt on the raw data
2. Visualize and table the data to find some patterns
3. Extract, Merge and clean the data
4. Create some models
5. Test and evaluate the models
6. Summary, Report and Presentation


## Data Understanding
The data was collected from a online course in Newcastle University named :Cyber Security. And the data has the both type of ‘static data’ and ‘fluid data’. The ‘static data’ is the data collected traditionally by some institution, they can be the all kinds of records in university. The ‘fluid data’ is collected from daily activity like swiping the card, login to the virtual online learning classroom. There are seven Terms of this course data we have and was ordered as cyber-security-1 to cyber-security-7, each of term means a new loop of this course.

### Data Quality
- The learning ID is too mess and we won't use learner ID in this project
- There too many Unknown, NaN or the null values.
- Some variables should be labeled for modelling later

Randomly choose some data file, and check them in excel,there are many 'Unknown' and 'NaN', they will influence our data analysis, so the unusual value will be processed as :

|             Type             |      Solution       |
| :--------------------------: | :-----------------: |
|    NaN for not used data     |       Ignore        |
|     Unknown in Enrolment     |  Ignore and delete  |
| Unknown in question-response |       Ignore        |
| Unknown in leaving-response  | Delete after merged |



[^The categorical data from the table can be processed, the Unknown continuouse values will be replaced by median values of this column because of the robust poperty.And why some unusual value were just ignore because we won&#39;t use them.]: 


Data Type Table:

|      0 |                          1 |          2 |                        3 |                 4 |             5 |                                 6 |                                 7 |                                   |
| -----: | -------------------------: | ---------: | -----------------------: | ----------------: | ------------: | --------------------------------: | --------------------------------: | --------------------------------- |
| Term_1 | archetype-survey-responses | enrolments | leaving-survey-responses | question-response | step-activity | weekly-sentiment-survey-responses |                              None | None                              |
| Term_2 | archetype-survey-responses | enrolments | leaving-survey-responses | question-response | step-activity |                      team-members | weekly-sentiment-survey-responses | None                              |
| Term_3 | archetype-survey-responses | enrolments | leaving-survey-responses | question-response | step-activity |                      team-members |                       video-stats | weekly-sentiment-survey-responses |
| Term_4 | archetype-survey-responses | enrolments | leaving-survey-responses | question-response | step-activity |                      team-members |                       video-stats | weekly-sentiment-survey-responses |
| Term_5 | archetype-survey-responses | enrolments | leaving-survey-responses | question-response | step-activity |                      team-members |                       video-stats | weekly-sentiment-survey-responses |
| Term_6 | archetype-survey-responses | enrolments | leaving-survey-responses | question-response | step-activity |                      team-members |                       video-stats | weekly-sentiment-survey-responses |
| Term_7 | archetype-survey-responses | enrolments | leaving-survey-responses | question-response | step-activity |                      team-members |                       video-stats | weekly-sentiment-survey-responses |

