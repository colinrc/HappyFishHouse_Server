== Release 1 models

# Initial capture of the models to be used for the first release.

## User
 [] Name
 [] User_Name
 [] Email
 [] Phone_Number
 
## Tank
 [] Material { glass, acrylic }
 [] width_mm
 [] height_mm
 [] length_mm
 [] volume_l
 [] number
 [] name
 [] is_second_hand? 
 [] bought_from { supplier }
 [] bought_date { datetime } 
 [] price { number }
 [] tank_age_years
 [] brand { tank_brand_ID } 
 [] water_type {tropical, fresh, marine, reef, african}
 [] target_pH
 [] target_temperature
 [] target_nA
 *This may become normalised with a lookup, suspect the answer is EAV for temperature, with the rest as a row*
 
## supplier
 [] Name
 [] Company Name
 [] Contact Number
 [] Email
 [] Address
 [] website
 
## water_change 
 [] Percentage_Water_Changed
 [] Notes
 [] Date { datetime }
 
## measurement
 [] Datetime
 [] pH
 [] Salinity
 [] Magnesium
 [] Phosphate
 [] Ammonia
 [] Alkalinity
 [] Calcium
 
## measurement_type
 [] name
 [] tank_type
 [] measurement_label
 [] maximum
 [] minimum
 
 ## measurement_label
 [] label
 [] name
 [] chemical_formula
 
 ## tank_type (code as drop down with user enterable; not a normalised table)
 [] marine
 [] coral
 [] tropical
 
### Less important
 [] Silica
 [] Iodine
 [] Nitrate
 [] Nitrite
 [] Strontium
 [] ORP
 [] Boron
 [] Iron
 
 [Marine Depot Recommendations](http://www.marinedepot.com/reef-tank-parameters.html)
 [Reefkeeping Recommendations](http://reefkeeping.com/issues/2004-05/rhf/)
 
## temperature
 Seperate to other measurements as it is likely to occur far more often with automated sensors.
 [] datetime
 [] reading
 
## fish_reference
 [] common_name
 [] scientific_name
 [] picture
 [] link
 
## fish
 [] bought {datetime}
 [] supplier
 [] characteristics { long text }
 [] fish_reference
 [] notes { long text }
 
 