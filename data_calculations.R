# Import data
# recoding for CBCL and totals done in SPSS before bringing data in to R
data <- read_sav("data_prep.sav")
names(data) <- tolower(names(data))

# keep relevant demographic and outcome variables

data <- data %>%
  dplyr::select(id:treatment_time_mins, dobchild, sexchild, numbhousehold, incfamily,
                #DPICS Labelled Praise
                parent_lp_perc_total_time_1, parent_lp_perc_total_time_2, parent_lp_perc_total_time_3,
                #DPICS Negative Talk
                parent_nta_perc_total_time_1, parent_nta_perc_total_time_2, parent_nta_perc_total_time_3,
                #BCAP
                prebcap_risk, post_bcap_risk, fu_bcap_risk,
                #BCAP Lie scale
                prebcap_lie, post_bcap_lie, fu_bcap_lie,
                
                # Child Ext Behav
                cbclext_pre_total,cbclext_post_total,cbclext_fu_total,

                # CBCL Internalising Behav
                cbclint_pre_total,cbclint_post_total,cbclint_fu_total,
                
                #Child Compliance
                total_co_perc_time_1,total_co_perc_time_2,total_co_perc_time_3
                
                # others, but not essential for paper
                #3. Child Temperament (ECBQ)
                #4. Child social-emotional functioning - #1: Brief Infant Toddler Social Emotional Assessment (BITSEA)
                #5. Child social-emotional functioning - #2: Child Devereux Early Childhood Assessment (DECA)
                
                )


library(naniar)
# REplace 999 & 888 with missings.
data <- data %>% 
  replace_with_na_at(.vars = c("precbcl5","precbcl6","precbcl56","precbcl59","precbcl95", "precbcl8", "precbcl15","precbcl16","precbcl18",
                               "precbcl20","precbcl27","precbcl29","precbcl35","precbcl40","precbcl42","precbcl44","precbcl53",
                               "precbcl58","precbcl66","precbcl69","precbcl81","precbcl85","precbcl88","precbcl96"),
                     condition = ~.x == 999) %>%
  replace_with_na_at(.vars = c("post_cbcl5","post_cbcl6","post_cbcl56","post_cbcl59","post_cbcl95", "post_cbcl8", "post_cbcl15","post_cbcl16","post_cbcl18","post_cbcl20","post_cbcl27","post_cbcl29",
                               "post_cbcl35","post_cbcl40","post_cbcl42","post_cbcl44","post_cbcl53",
                               "post_cbcl58","post_cbcl66","post_cbcl69","post_cbcl81","post_cbcl85",
                               "post_cbcl88","post_cbcl96"),
                     condition = ~.x == 999)  %>%
  replace_with_na_at(.vars = c("fu_cbcl5","fu_cbcl6","fu_cbcl56","fu_cbcl59","fu_cbcl95", "fu_cbcl8", "fu_cbcl15","fu_cbcl16","fu_cbcl18","fu_cbcl20","fu_cbcl27","fu_cbcl29",
                               "fu_cbcl35","fu_cbcl40","fu_cbcl42","fu_cbcl44","fu_cbcl53",
                               "fu_cbcl58","fu_cbcl66","fu_cbcl69","fu_cbcl81","fu_cbcl85",
                               "fu_cbcl88","fu_cbcl96"),
                     condition = ~.x == 999) %>%
  replace_with_na_at(.vars = c("precbcl21","precbcl46","precbcl51","precbcl79","precbcl82","precbcl83","precbcl92","precbcl97",
                               "precbcl99","precbcl10","precbcl33","precbcl37","precbcl43","precbcl47","precbcl68","precbcl87",
                               "precbcl90","precbcl1","precbcl7","precbcl12","precbcl19","precbcl24","precbcl39","precbcl45",
                               "precbcl52","precbcl78","precbcl86","precbcl93","precbcl2","precbcl4","precbcl23","precbcl62",
                               "precbcl67","precbcl70","precbcl71","precbcl98"),
                     condition = ~.x == 999) %>% 
  replace_with_na_at(.vars = c("post_cbcl21","post_cbcl46","post_cbcl51","post_cbcl79","post_cbcl82","post_cbcl83","post_cbcl92","post_cbcl97",
                               "post_cbcl99","post_cbcl10","post_cbcl33","post_cbcl37","post_cbcl43","post_cbcl47","post_cbcl68","post_cbcl87",
                               "post_cbcl90","post_cbcl1","post_cbcl7","post_cbcl12","post_cbcl19","post_cbcl24","post_cbcl39","post_cbcl45",
                               "post_cbcl52","post_cbcl78","post_cbcl86","post_cbcl93","post_cbcl2","post_cbcl4","post_cbcl23","post_cbcl62",
                               "post_cbcl67","post_cbcl70","post_cbcl71","post_cbcl98"),
                     condition = ~.x == 999) %>% 
  replace_with_na_at(.vars = c("fu_cbcl21","fu_cbcl46","fu_cbcl51","fu_cbcl79","fu_cbcl82","fu_cbcl83","fu_cbcl92","fu_cbcl97",
                               "fu_cbcl99","fu_cbcl10","fu_cbcl33","fu_cbcl37","fu_cbcl43","fu_cbcl47","fu_cbcl68","fu_cbcl87",
                               "fu_cbcl90","fu_cbcl1","fu_cbcl7","fu_cbcl12","fu_cbcl19","fu_cbcl24","fu_cbcl39","fu_cbcl45",
                               "fu_cbcl52","fu_cbcl78","fu_cbcl86","fu_cbcl93","fu_cbcl2","fu_cbcl4","fu_cbcl23","fu_cbcl62",
                               "fu_cbcl67","fu_cbcl70","fu_cbcl71","fu_cbcl98"),
                     condition = ~.x == 999) %>% 
  replace_with_na_at(.vars = c("precbcl5","precbcl6","precbcl56","precbcl59","precbcl95", "precbcl8", "precbcl15","precbcl16","precbcl18",
                               "precbcl20","precbcl27","precbcl29","precbcl35","precbcl40","precbcl42","precbcl44","precbcl53",
                               "precbcl58","precbcl66","precbcl69","precbcl81","precbcl85","precbcl88","precbcl96"),
                     condition = ~.x == 888) %>%
  replace_with_na_at(.vars = c("post_cbcl5","post_cbcl6","post_cbcl56","post_cbcl59","post_cbcl95", "post_cbcl8", "post_cbcl15","post_cbcl16","post_cbcl18","post_cbcl20","post_cbcl27","post_cbcl29",
                               "post_cbcl35","post_cbcl40","post_cbcl42","post_cbcl44","post_cbcl53",
                               "post_cbcl58","post_cbcl66","post_cbcl69","post_cbcl81","post_cbcl85",
                               "post_cbcl88","post_cbcl96"),
                     condition = ~.x == 888)  %>%
  replace_with_na_at(.vars = c("fu_cbcl5","fu_cbcl6","fu_cbcl56","fu_cbcl59","fu_cbcl95", "fu_cbcl8", "fu_cbcl15","fu_cbcl16","fu_cbcl18","fu_cbcl20","fu_cbcl27","fu_cbcl29",
                               "fu_cbcl35","fu_cbcl40","fu_cbcl42","fu_cbcl44","fu_cbcl53",
                               "fu_cbcl58","fu_cbcl66","fu_cbcl69","fu_cbcl81","fu_cbcl85",
                               "fu_cbcl88","fu_cbcl96"),
                     condition = ~.x == 888) %>%
  replace_with_na_at(.vars = c("precbcl21","precbcl46","precbcl51","precbcl79","precbcl82","precbcl83","precbcl92","precbcl97",
                               "precbcl99","precbcl10","precbcl33","precbcl37","precbcl43","precbcl47","precbcl68","precbcl87",
                               "precbcl90","precbcl1","precbcl7","precbcl12","precbcl19","precbcl24","precbcl39","precbcl45",
                               "precbcl52","precbcl78","precbcl86","precbcl93","precbcl2","precbcl4","precbcl23","precbcl62",
                               "precbcl67","precbcl70","precbcl71","precbcl98"),
                     condition = ~.x == 888) %>% 
  replace_with_na_at(.vars = c("post_cbcl21","post_cbcl46","post_cbcl51","post_cbcl79","post_cbcl82","post_cbcl83","post_cbcl92","post_cbcl97",
                               "post_cbcl99","post_cbcl10","post_cbcl33","post_cbcl37","post_cbcl43","post_cbcl47","post_cbcl68","post_cbcl87",
                               "post_cbcl90","post_cbcl1","post_cbcl7","post_cbcl12","post_cbcl19","post_cbcl24","post_cbcl39","post_cbcl45",
                               "post_cbcl52","post_cbcl78","post_cbcl86","post_cbcl93","post_cbcl2","post_cbcl4","post_cbcl23","post_cbcl62",
                               "post_cbcl67","post_cbcl70","post_cbcl71","post_cbcl98"),
                     condition = ~.x == 888) %>% 
  replace_with_na_at(.vars = c("fu_cbcl21","fu_cbcl46","fu_cbcl51","fu_cbcl79","fu_cbcl82","fu_cbcl83","fu_cbcl92","fu_cbcl97",
                               "fu_cbcl99","fu_cbcl10","fu_cbcl33","fu_cbcl37","fu_cbcl43","fu_cbcl47","fu_cbcl68","fu_cbcl87",
                               "fu_cbcl90","fu_cbcl1","fu_cbcl7","fu_cbcl12","fu_cbcl19","fu_cbcl24","fu_cbcl39","fu_cbcl45",
                               "fu_cbcl52","fu_cbcl78","fu_cbcl86","fu_cbcl93","fu_cbcl2","fu_cbcl4","fu_cbcl23","fu_cbcl62",
                               "fu_cbcl67","fu_cbcl70","fu_cbcl71","fu_cbcl98"),
                     condition = ~.x == 888)
data<- data %>%
  rowwise() %>%
  # re-calculate total scores for cbcl… with missing individual items replaced with mean subscale scores?
  # Ext Calculate pre mean
  mutate(cbclext_pre_mean = mean(precbcl5,precbcl6,precbcl56,precbcl59,precbcl95, precbcl8, precbcl15,precbcl16,precbcl18,
                   precbcl20,precbcl27,precbcl29,precbcl35,precbcl40,precbcl42,precbcl44,precbcl53,
                   precbcl58,precbcl66,precbcl69,precbcl81,precbcl85,precbcl88,precbcl96, na.rm = T)) %>%
  rowwise() %>%
  # Ext Calculate post mean
  mutate(cbclext_post_mean = mean(post_cbcl5,post_cbcl6,post_cbcl56,post_cbcl59,post_cbcl95, post_cbcl8, post_cbcl15,post_cbcl16,post_cbcl18,
                                  post_cbcl20,post_cbcl27,post_cbcl29,post_cbcl35,post_cbcl40,post_cbcl42,post_cbcl44,post_cbcl53,
                                  post_cbcl58,post_cbcl66,post_cbcl69,post_cbcl81,post_cbcl85,post_cbcl88,post_cbcl96, na.rm = T))%>%
  rowwise() %>%
  # Ext Calculate post mean
  mutate(cbclext_fu_mean = mean(fu_cbcl5,fu_cbcl6,fu_cbcl56,fu_cbcl59,fu_cbcl95, fu_cbcl8, fu_cbcl15,fu_cbcl16,fu_cbcl18,
                                fu_cbcl20,fu_cbcl27,fu_cbcl29,fu_cbcl35,fu_cbcl40,fu_cbcl42,fu_cbcl44,fu_cbcl53,
                                fu_cbcl58,fu_cbcl66,fu_cbcl69,fu_cbcl81,fu_cbcl85,fu_cbcl88,fu_cbcl96, na.rm = T)) %>%
  # Ext Calculate pre mean
  mutate(cbclint_pre_mean = mean(precbcl21,precbcl46,precbcl51,precbcl79,precbcl82,precbcl83,precbcl92,precbcl97,
                                 precbcl99,precbcl10,precbcl33,precbcl37,precbcl43,precbcl47,precbcl68,precbcl87,
                                 precbcl90,precbcl1,precbcl7,precbcl12,precbcl19,precbcl24,precbcl39,precbcl45,
                                 precbcl52,precbcl78,precbcl86,precbcl93,precbcl2,precbcl4,precbcl23,precbcl62,
                                 precbcl67,precbcl70,precbcl71,precbcl98, na.rm = T)) %>%
  rowwise() %>%
  # Int Calculate post mean
  mutate(cbclint_post_mean = mean(post_cbcl21,post_cbcl46,post_cbcl51,post_cbcl79,post_cbcl82,post_cbcl83,post_cbcl92,post_cbcl97,
                                  post_cbcl99,post_cbcl10,post_cbcl33,post_cbcl37,post_cbcl43,post_cbcl47,post_cbcl68,post_cbcl87,
                                  post_cbcl90,post_cbcl1,post_cbcl7,post_cbcl12,post_cbcl19,post_cbcl24,post_cbcl39,post_cbcl45,
                                  post_cbcl52,post_cbcl78,post_cbcl86,post_cbcl93,post_cbcl2,post_cbcl4,post_cbcl23,post_cbcl62,
                                  post_cbcl67,post_cbcl70,post_cbcl71,post_cbcl98, na.rm = T))%>%
  rowwise() %>%
  # Int Calculate FU mean
  mutate(cbclint_fu_mean = mean(post_cbcl21,post_cbcl46,post_cbcl51,post_cbcl79,post_cbcl82,post_cbcl83,post_cbcl92,post_cbcl97,
                                post_cbcl99,post_cbcl10,post_cbcl33,post_cbcl37,post_cbcl43,post_cbcl47,post_cbcl68,post_cbcl87,
                                post_cbcl90,post_cbcl1,post_cbcl7,post_cbcl12,post_cbcl19,post_cbcl24,post_cbcl39,post_cbcl45,
                                post_cbcl52,post_cbcl78,post_cbcl86,post_cbcl93,post_cbcl2,post_cbcl4,post_cbcl23,post_cbcl62,
                                post_cbcl67,post_cbcl70,post_cbcl71,post_cbcl98, na.rm = T))




  mutate(data,cbclext_pre_total= sum(precbcl5,precbcl6,precbcl56,precbcl59,precbcl95, precbcl8, precbcl15,precbcl16,precbcl18,
                            precbcl20,precbcl27,precbcl29,precbcl35,precbcl40,precbcl42,precbcl44,precbcl53,
                            precbcl58,precbcl66,precbcl69,precbcl81,precbcl85,precbcl88,precbcl96, na.rm = T))
  # Calculate pre mean 

mutate(cbclext_pre_total=mean(precbcl5,precbcl6, na.rm = T ) )

mutate(data,cbclext_pre_total=mean(precbcl5,precbcl6, na.rm = T ))
                              
1. Child Externalising behaviour: Child Behavior Checklist (CBCL/1.5–5)
Items 5,6,56,59,95,8,15,16,18,20,27,29,35,40,42,44,53,58,66,69,81,85,88,96

**NOTE: can you please re-calculate total scores for cbcl… with missing individual items replaced with mean subscale scores?
  
  2. Child Internalising behaviour: Child Behavior Checklist (CBCL/1.5–5)

Items 21,46,51,79,82,83,92,97,99,10,33,37,43,47,68,87,90,1,7,12,19,24,39,45,52,78,86,93,2,4,23,62,67,70,71,98

**NOTE: can you please re-calculate total scores for cbcl… with missing individual items replaced with mean subscale scores?


