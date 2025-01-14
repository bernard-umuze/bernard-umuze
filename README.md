# Data Analysis Portfolio: Bernard Umuze

This repository showcases my data analysis skills and experience through various projects. Each project demonstrates my ability to:

**Collect and Clean Data:** Source and extract data from diverse formats, apply data cleaning techniques to ensure accuracy and consistency.

**Perform Exploratory Data Analysis (EDA):** Conduct in-depth analysis to uncover trends, patterns, and relationships within the data.

**Data Visualization:** Create compelling visualizations (charts, graphs, dashboards) to effectively communicate insights.

**Actionable Recommendations:** Translate data-driven insights into actionable recommendations for business stakeholders.

## Project 1- **Cyclistic Bike-Share: Analyzing User Behavior for Increased Membership Strategies.** ##

**Project Description:**
This project analyzes historical bike trip data from Cyclistic, a Chicago-based bike-share program, to understand the distinct riding patterns of annual members and casual riders. By identifying key differences in user behavior, this analysis aims to inform the development of targeted marketing strategies to convert casual riders into annual members, ultimately driving revenue growth for Cyclistic.

**Methodology Used:**
## Data Acquisition:
    * **Source:** Cyclistic bike-share company's publicly available dataset 
    * **Period:** October 2023,November 2023,December 2023 ,January 2024, February 2024, March 2024, and Apri 2024
    * **Format:** CSV file
    * **Key Columns:** 
        * `ride_id`
        * `rideable_type`
        * `started_at`
        * `ended_at`
        * `start_station_name`
        * `start_station_id`
        * `end_station_name`
        * `end_station_id`
        * `start_lat`
        * `start_lng`
        * `end_lat`
        * `end_lng`
        * `member_casual` 
## Data Cleaning & Preparation
* **Data Type Conversion:** Converted  ride time at `started_at` and `ended_at` columns from  timestamps (date and time) format to seconds to allow for time-based calculations and analyses (e.g., ride duration, time of day trends).
* **Missing Value Handling:** 
    * Missing values in key columns (e.g., `ride_id`, `started_at`, `ended_at`)  were retained in their original state (represented as NULL) throughout the analysis.
* **Data Consistency Checks:**
    * Standardized date and time formats across the dataset.
    * Removed invalid location coordinates (e.g., locations outside of Chicago).
    * Removed duplicate ride entries.
* **Feature Engineering:**
    * Created a new column, `ride_duration`, by calculating the difference between `started_at` and `ended_at`.
    * Extracted `day_of_week`, `hour_of_day`, `month`, and `year` from the `started_at` column.
    * Converted `ride_duration` from seconds to minutes.
* **Outlier Handling:**
    * Removed outliers in `ride_duration` (e.g., rides with durations less than a minute or exceeding 60 minutes). 
## Exploratory Data Analysis (EDA)
The EDA process involved a comprehensive analysis of the Divvy bike-share trip data to uncover usage patterns and trends. Key statistics and summaries derived from the EDA include:

* **Descriptive Statistics:**
    * **Overall:** 
        * Total number of rides
        * Minimum ride duration
        * Maximum ride duration
        * Mean ride duration
        * Median ride duration
      * **By User Type (Member vs. Casual):**
        * Total number of rides for each user type
        * Mean and median of ride duration for members and casual riders
* **Ride Frequency and Patterns:**
    * **Daily Ride Frequency:** 
        * Number of rides per day of the week (Sunday - Saturday) for all users and segmented by user type (member vs. casual)
    * **Hourly Ride Frequency:** 
        * Number of rides per hour of the day (00:00 - 23:59) for all users and segmented by user type
    * **Monthly Ride Frequency:** 
        * Total number of rides per month (if data spans multiple months)
* **Usage Patterns:**
    * **Peak Ride Hours:** Identification of peak usage hours for both members and casual riders.
    * **Weekday vs. Weekend Usage:** Comparison of ride frequency and duration between weekdays and weekends for both user types.
 * **Seasonal Trends (if applicable):** 
        * Segmentation of data into seasons (e.g., Spring, Summer, Fall, Winter)
        * Calculation of total rides and average ride duration for each season
        * Identification of seasonal variations in ride usage patterns
* **Outlier Detection:**
    * Identification and handling of outliers in ride duration (e.g., extremely short or long rides).
These calculated statistics were effectively visualized using various charts and graphs (e.g., bar charts, line graphs, histograms) to facilitate pattern recognition, trend analysis, and communication of insights. 
By thoroughly examining these EDA outputs, we gained a deeper understanding of user behavior, usage patterns, and potential areas for improvement within the Divvy bike-share program. 
* **Data Visualization:** 
    * Created informative visualizations (e.g., bar charts, line graphs, histograms) to communicate key findings effectively.
    * Utilized data visualization tools such as Tableau to create interactive dashboards.
## Key Findings & Insights
**Usage Patterns:**
* **Casual Riders:**
    * **Longer Rides:** Generally have longer average ride durations, suggesting recreational use.
    * **Higher Weekend Usage:** Increased recreational use on weekends.
* **Annual Members:**
    * **Higher Ride Frequency:** More frequent usage, likely for regular transportation (commuting).
    * **Weekday Focus:** Higher weekday usage, aligning with commuting patterns.
* **Seasonal Variations:** 
    * Both member and casual riders tend to have longer average ride durations during warmer months.
    * Ride duration fluctuations across months, potentially influenced by weather.
## Insights for Cyclistic:**
* **Targeted Marketing:**
    * **Focus on Commuters:** Tailor annual membership marketing towards commuters.
    * **Promote Recreational Use:** Target casual riders with weekend and seasonal promotions.
    * **Flexible Membership Options:** Offer options like weekend passes or flexible plans.
* **Service Optimization:**
    * **Improve Infrastructure:** Enhance bike availability and docking station infrastructure in high-traffic commuter areas.
    * **Expand Service Areas:** Explore options to expand service areas to cater to recreational riders and tourists.
## Recommendations
Based on the findings and insights, here are some recommendations for Cyclistic:
**1. Enhance Commuting Appeal for Annual Members:**
* **Targeted Marketing Campaigns:** 
    * Focus marketing efforts on individuals who commute to work or school, highlighting the cost-effectiveness and convenience of annual memberships. 
    * Utilize platforms like LinkedIn, professional networks, and commuter-focused publications.
* **Employer Partnerships:** 
    * Collaborate with local employers to offer corporate discounts or subsidized memberships for employees.
    * Host on-site events to promote Cyclistic as a commuting option.
**2. Boost Recreational Ridership for Casual Riders:**
* **Weekend and Seasonal Promotions:** 
    * Offer discounted rides or special packages during weekends, holidays, and peak tourist seasons.
    * Partner with local businesses (restaurants, attractions) for exclusive deals for Cyclistic riders.
* **Recreational Route Marketing:** 
    * Develop and promote popular cycling routes for leisure activities, such as scenic paths, parks, and waterfront areas. 
    * Utilize social media and online platforms to showcase these routes and encourage exploration.
**3. Introduce Flexible Membership Options:**
* **Weekend Passes:** Offer discounted weekend passes for recreational riders who primarily use the service on weekends.
* **Pay-as-You-Go Options:** Provide more flexible pay-as-you-go options for occasional riders who may not require a full annual membership.
* **"Day Passes" or "Hour Bundles:** Introduce options for short-term usage, catering to tourists or those with infrequent needs.
**4. Optimize Service Infrastructure:**
* **Strategic Station Placement:** 
    * Analyze ridership data to identify areas with high demand and strategically place new stations in those locations.
    * Ensure adequate station density in key commuter areas and popular recreational destinations.
* **Improve Bike Availability:** 
    * Implement real-time bike availability tracking and rebalancing strategies to ensure bikes are readily available when and where needed.
    * Consider using electric bikes or e-assist options to improve accessibility and encourage longer rides.
**5. Expand Service Area (if feasible):**
* **Explore new neighborhoods and areas with high potential for ridership growth.**
* **Consider expanding into surrounding suburbs or connecting with regional transportation networks.**
**6. Continuous Data Analysis and Iteration:**
* **Regularly analyze ridership data to identify emerging trends and adjust strategies accordingly.**
* **Utilize customer feedback to improve service quality and address any concerns.**
* **Conduct A/B testing on marketing campaigns and membership options to optimize results.**
By implementing these recommendations, Cyclistic can effectively cater to the diverse needs of both casual and annual riders, increase ridership, and solidify its position as a leading bike-sharing provider in the city.
## Tools & Technologies:
* **Programming Languages:**  R Programming
* **Data Visualization Tools:** Tableau
* **Other Tools:** Excel, Google Sheets, SQL
## Conclusion
This analysis provides valuable insights into Cyclistic's ridership behavior. By implementing the recommended strategies, Cyclistic can effectively increase annual memberships and improve overall customer satisfaction.
## Next Steps
* **Further Analysis:** Conduct more in-depth analysis, such as customer segmentation and churn analysis.
* **A/B Testing:** Implement A/B testing on marketing campaigns and membership options to evaluate their effectiveness.
* **Continuous Monitoring:** Continuously monitor ridership data and adjust strategies based on evolving trends.
## Important Considerations
* **Data Limitations:**: The analysis is based on a limited time frame and may not capture long-term trends or seasonal variations accurately.
* ****External Factors:** Factors like weather conditions, local events, and holidays can significantly impact ridership patterns and should be considered in further analysis.

