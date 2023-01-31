{% docs salurbal_var_name_raw %}

original variable name in the dataset. For example SECLABPARTF or SECLABPARTM.

{% enddocs %}

{% docs salurbal_var_name %}

Within the scope of the project, our primary concern is that each variable has a unique identifier which we term var_name. For example the data item of the variable SALURBAL Life Expectancy is assigned a var_name of LEAEA. Within SALURBAL no other variable/data-item has this identifier. var_name follows a few rules. 

1. A string containing only upper case letters and numbers and does not have spaces or special characters.

2. var_name is a variable level identifier that should not contain strata information. For example SECLABPARTM and SECLABPARTF are invalid because they indicate that the variable SECLABPART is for sex (male) and sex (female) strata; the correct var_name in this case is just SECLABPART. var_name is strictly for the variable and strata is captured in supplementary identifiers detaile

{% enddocs %}


{% docs salurbal_iso2 %}

Two character country ISO2 code.

| salid0 | id0 | iso2 |
|--------|-----|------|
| 101    | 514 | AR   |
| 102    | 562 | BR   |
| 103    | 278 | CL   |
| 104    | 625 | CO   |
| 105    | 294 | PE   |
| 201    | 917 | CR   |
| 202    | 217 | SV   |
| 203    | 398 | GT   |
| 204    | 328 | MX   |
| 205    | 343 | NI   |
| 206    | 113 | PA   |
| 206    | 113 | PA   |

{% enddocs %}



{% docs salurbal_strata_id %}

This is a summary of all strata information for each data point. This is operationalized by the concatenationf of strata_1_name, strata_1_value, strata_2_name, strata_2_value cell values when available seperated by an underdash. 

Examples of the three possible scenarios and the correct strata_id value.
  - No stratafication:  empty cell
  - Single stratification: "Sex_Male"
  - Double stratafication: "Sex_Male_Age_45"

{% enddocs %}


{% docs salurbal_geo %}

Geographic level of data.

Categorical
   - L1AD
   - L2

{% enddocs %}


{% docs salurbal_salid %}

SALURBAL Identifier for this particular data point. Expand later. 

{% enddocs %}

{% docs salurbal_year %}

Year for the specific data point. This could be either an integer or a year range (e.g. "2015" or "2012-2016").

{% enddocs %}

{% docs salurbal_value %}

Value for this particular data point.

{% enddocs %}

{% docs salurbal_dataset_id %}

dataset id  e.g. APSL1AD. This should just be the name of the folder on the UHC server (minus the date appendix)

{% enddocs %}


{% docs salurbal_domain %}

Highest level of variable categorization. A list of these can be found at https://data.lacurbanhealth.org/data/about.

Variables have at least one domain but can also be in multiple domains. Code domains as a string of domain names seperated by commas. For example:
   - "Demographics" (single domain variable
   - "Demographics, Mortality" (multiple domain variable)

{% enddocs %}

{% docs salurbal_subdomain %}

Lower level of variable categorization. A list of these can be found at https://data.lacurbanhealth.org/data/about.

Variables have at least one subdomain but can also be in multiple subdomains. Code domains as a string of domain names seperated by commas. For example:
   - "Population" (single subdomain variable
   - "Population, Migration" (multiple subdomain variable)

{% enddocs %}


{% docs salurbal_var_label %}

Short human readable variable label.

Character. Aim to be less than 30 characters. Hard limit at 75 characters.

{% enddocs %}

{% docs salurbal_var_def %}

Details definition of what the variable is about. If categorical include coding here.

Character. No length limit.

{% enddocs %}

{% docs salurbal_value_type %}

What type of data is the value.

Must be one of the following: 

- double (continuous values) 
- discrete (integer values ) 
- categorical (non-numeric groups or categories)

{% enddocs %}

{% docs salurbal_units %}

This is the short label to be appended to the data value. It will be used for annotating text or visualizations with a unit label (e.g. cases per 100k).

{% enddocs %}



{% docs salurbal_coding %}

This is an optional internal field that describes in details the measurement

{% enddocs %}

{% docs salurbal_strata_description %}

This should describe in detail what strata are available for this variable. Please include details about each strata if applicable.

Character. Try to be as details as possible. If variable is not stratafied the value should be NA.

{% enddocs %}


{% docs salurbal_source  %}

Data source

{% enddocs %}


{% docs salurbal_dataset_notes  %}

Any additional information can be added here. For example some dataset or file specific notes could be added here.

{% enddocs %}

{% docs salurbal_limitations %}

Place to describe any limitaitons for this variable.


{% enddocs %}


{% docs salurbal_acknowledgements %}

Any acklowdgements for this variable

{% enddocs %}


{% docs salurbal_file_data %}

File name of the data file used for this dataset

{% enddocs %}


{% docs salurbal_file_codebook %}

File name of the codebook file used for this dataset

{% enddocs %}



{% docs salurbal_longitudinal %}

Is this variable qualified for longitudinal analysis or visualizations?

Categorical: 
   1 - yes 
   0 - no  

{% enddocs %}


{% docs salurbal_public %}

Is it okay to make the data and metadata for this variable publicly available for visualization and download?

Categorical: 
   1 - yes. This data and metadata will made available for public access. 
   0 - no. This data will not be made vailaable for public access.  But metadata will be made available. 
   9 - Uknown. A placeholder indicicating uncertainty, this data will not be made vailable for public access.  But metadata will be made available. 
   
{% enddocs %}

{% docs salurbal_censor %}

If the data is not public. Can we show the metadata (e.g. show the data is avilable to be searched but not visualizaed or downloaded). This way others can request data if needed.

Categorical: 
   1 - yes. Metadata and data will made not be available for public access. 
   0 - no. Then refer to 'public' to determine about access level. 


{% enddocs %}


{% docs salurbal_license %}

What is the license for this variable

Options include "CC BY" or TBD by Kari and Goro.

{% enddocs %}

{% docs salurbal_fair %}


Has this metadata for this variable been updated for FAIR principles. If renovated as per new standards then yes.

Categorical: 
   1 - yes 
   0 - no  

{% enddocs %}