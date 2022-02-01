# Descriptives

desctable <- data %>%
  group_by(group) %>%
  mutate(score1 = case_when( 
    parent_lp_perc_total_time_1 == -9 ~ NA_real_,                                #assign missing values to zeros
    TRUE ~ parent_lp_perc_total_time_1)) %>%
  mutate(score2 = case_when( 
    parent_lp_perc_total_time_2 == -9 ~ NA_real_,                                #assign missing values to zeros
    TRUE ~ parent_lp_perc_total_time_2)) %>%
  mutate(score3 = case_when( 
    parent_lp_perc_total_time_3 == -9 ~ NA_real_,                                #assign missing values to zeros
    TRUE ~ parent_lp_perc_total_time_3)) %>%
  summarise(DPICSlp_n1 = sum(!is.na(score1)) , DPICSlp_mean1=mean(parent_lp_perc_total_time_1, na.rm = T ),
            DPICSlp_sd1=sd(parent_lp_perc_total_time_1, na.rm = T ),
            DPICSlp_median1=median(parent_lp_perc_total_time_1, na.rm = T ),
            DPICSlp_min1=min(parent_lp_perc_total_time_1, na.rm = T ),
            DPICSlp_max1=max(parent_lp_perc_total_time_1, na.rm = T ),
            
            DPICSlp_n2 = sum(!is.na(score2)) , DPICSlp_mean2=mean(parent_lp_perc_total_time_2, na.rm = T ),
            DPICSlp_sd2=sd(parent_lp_perc_total_time_2, na.rm = T ),
            DPICSlp_median2=median(parent_lp_perc_total_time_2, na.rm = T ),
            DPICSlp_min2=min(parent_lp_perc_total_time_2, na.rm = T ),
            DPICSlp_max2=max(parent_lp_perc_total_time_2, na.rm = T ),
            
            DPICSlp_n3 = sum(!is.na(score3)) , DPICSlp_mean3=mean(parent_lp_perc_total_time_3, na.rm = T ) ,
            DPICSlp_sd3=sd(parent_lp_perc_total_time_3, na.rm = T ),
            DPICSlp_median3=median(parent_lp_perc_total_time_3, na.rm = T ),
            DPICSlp_min3=min(parent_lp_perc_total_time_3, na.rm = T ),
            DPICSlp_max3=max(parent_lp_perc_total_time_3, na.rm = T )
  )


write.csv(desctable,"DPICSlp/desctable.csv", row.names = TRUE)



# Histograms
# plot
p <- data %>%
  dplyr::select(id,group, parent_lp_perc_total_time_1, parent_lp_perc_total_time_2, parent_lp_perc_total_time_3) %>%
  pivot_longer( cols = starts_with("parent_lp_perc_total_time_"), names_prefix = "parent_lp_perc_total_time_", 
                names_to="time", values_to="outcome") 

  
hist<-ggplot(p, aes(x=outcome) )+
  geom_histogram(alpha=0.6, binwidth = 5) +
  xlab("DPICS LP %") +
  ylab("Frequency") +
  facet_wrap(group~time)

# New facet label names for group variable
group.labs <- c("PCIT-T", "COS-P", "Waitlist")
names(group.labs) <- c("1", "2", "3")

# New facet label names for time variable
time.labs <- c("Pre", "Post","FollowUp")
names(time.labs) <- c("1", "2","3")
# Create the plot
hist + theme_minimal() +
  facet_grid(
  group ~ time, 
  labeller = labeller(group = group.labs, time = time.labs) )




logdesctable <- data %>%
  group_by(group) %>%
  mutate(score1 = case_when( 
    parent_lp_perc_total_time_1 == -9 ~ NA_real_,                                #assign missing values to zeros
    TRUE ~ parent_lp_perc_total_time_1)) %>%
  mutate(score2 = case_when( 
    parent_lp_perc_total_time_2 == -9 ~ NA_real_,                                #assign missing values to zeros
    TRUE ~ parent_lp_perc_total_time_2)) %>%
  mutate(score3 = case_when( 
    parent_lp_perc_total_time_3 == -9 ~ NA_real_,                                #assign missing values to zeros
    TRUE ~ parent_lp_perc_total_time_3)) %>%
  mutate(parent_lp_perc_total_time_1=log(parent_lp_perc_total_time_1+1),
         parent_lp_perc_total_time_2=log(parent_lp_perc_total_time_2+1),
         parent_lp_perc_total_time_3=log(parent_lp_perc_total_time_3+1)) %>%
  summarise(DPICSlp_n1 = sum(!is.na(score1)) , DPICSlp_mean1=mean(parent_lp_perc_total_time_1, na.rm = T ),
            DPICSlp_sd1=sd(parent_lp_perc_total_time_1, na.rm = T ),
            DPICSlp_median1=median(parent_lp_perc_total_time_1, na.rm = T ),
            DPICSlp_min1=min(parent_lp_perc_total_time_1, na.rm = T ),
            DPICSlp_max1=max(parent_lp_perc_total_time_1, na.rm = T ),
            
            DPICSlp_n2 = sum(!is.na(score2)) , DPICSlp_mean2=mean(parent_lp_perc_total_time_2, na.rm = T ),
            DPICSlp_sd2=sd(parent_lp_perc_total_time_2, na.rm = T ),
            DPICSlp_median2=median(parent_lp_perc_total_time_2, na.rm = T ),
            DPICSlp_min2=min(parent_lp_perc_total_time_2, na.rm = T ),
            DPICSlp_max2=max(parent_lp_perc_total_time_2, na.rm = T ),
            
            DPICSlp_n3 = sum(!is.na(score3)) , DPICSlp_mean3=mean(parent_lp_perc_total_time_3, na.rm = T ) ,
            DPICSlp_sd3=sd(parent_lp_perc_total_time_3, na.rm = T ),
            DPICSlp_median3=median(parent_lp_perc_total_time_3, na.rm = T ),
            DPICSlp_min3=min(parent_lp_perc_total_time_3, na.rm = T ),
            DPICSlp_max3=max(parent_lp_perc_total_time_3, na.rm = T )
  )


write.csv(desctable,"DPICSlp/logdesctable.csv", row.names = TRUE)



# Histograms
# plot
p <- data %>%
  dplyr::select(id,group, parent_lp_perc_total_time_1, parent_lp_perc_total_time_2, parent_lp_perc_total_time_3) %>%
  pivot_longer( cols = starts_with("parent_lp_perc_total_time_"), names_prefix = "parent_lp_perc_total_time_", 
                names_to="time", values_to="outcome") %>%
  mutate(outcome=log(outcome+1))


hist<-ggplot(p, aes(x=outcome) )+
  geom_histogram(alpha=0.6, binwidth = 5) +
  xlab("DPICS LP %") +
  ylab("Frequency") +
  facet_wrap(group~time)

# New facet label names for group variable
group.labs <- c("PCIT-T", "COS-P", "Waitlist")
names(group.labs) <- c("1", "2", "3")

# New facet label names for time variable
time.labs <- c("Pre", "Post","FollowUp")
names(time.labs) <- c("1", "2","3")
# Create the plot
hist + theme_minimal() +
  facet_grid(
    group ~ time, 
    labeller = labeller(group = group.labs, time = time.labs) )


