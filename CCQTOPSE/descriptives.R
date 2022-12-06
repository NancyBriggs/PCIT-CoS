# Descriptives
# cbclext_pre_total,cbclext_post_total,cbclext_fu_total


desctable <- data %>%
  group_by(group) %>%
  mutate(score1 = case_when( 
    cbclext_pre_total == -9 ~ NA_real_,                                #assign missing values to zeros
    TRUE ~ cbclext_pre_total)) %>%
  mutate(score2 = case_when( 
    cbclext_post_total == -9 ~ NA_real_,                                #assign missing values to zeros
    TRUE ~ cbclext_pre_total)) %>%
  mutate(score3 = case_when( 
    cbclext_fu_total == -9 ~ NA_real_,                                #assign missing values to zeros
    TRUE ~ cbclext_pre_total)) %>%
  summarise(n1 = sum(!is.na(score1)) , 
            mean1=mean(cbclext_pre_total, na.rm = T ),
            sd1=sd(cbclext_pre_total, na.rm = T ),
            median1=median(cbclext_pre_total, na.rm = T ),
            min1=min(cbclext_pre_total, na.rm = T ),
            max1=max(cbclext_pre_total, na.rm = T ),
            
            n2 = sum(!is.na(score2)) , 
            mean2=mean(cbclext_post_total, na.rm = T ),
            sd2=sd(cbclext_post_total, na.rm = T ),
            median2=median(cbclext_post_total, na.rm = T ),
            min2=min(cbclext_post_total, na.rm = T ),
            max2=max(cbclext_post_total, na.rm = T ),
            
            n3 = sum(!is.na(score3)) , 
            mean3=mean(cbclext_fu_total, na.rm = T ),
            sd3=sd(cbclext_fu_total, na.rm = T ),
            median3=median(cbclext_fu_total, na.rm = T ),
            min3=min(cbclext_fu_total, na.rm = T ),
            max3=max(cbclext_fu_total, na.rm = T ),
            
  )


write.csv(desctable,"CBCLExt/desctable.csv", row.names = TRUE)



# Histograms
# plot
p <- data %>%
  dplyr::select(id,group, cbclext_pre_total,cbclext_post_total,cbclext_fu_total) %>%
  pivot_longer( cols = starts_with("cbclext_"), names_prefix = "cbclext_", 
                names_to="t", values_to="outcome") %>%
  mutate(time = ifelse(t == "pre_total",  1,
                ifelse(t == "post_total", 2, 3))) 
  

  
hist<-ggplot(p, aes(x=outcome) )+
  geom_histogram(alpha=0.6, binwidth = 5) +
  xlab("CBCL Externalising") +
  ylab("Frequency") +
  facet_wrap(group~time)

group.labs <- c("PCIT-T", "COS-P", "Waitlist")
names(group.labs) <- c("1", "2", "3")

# New facet label names for group variable
time.labs <- c("Pre", "Post","FollowUp")
names(time.labs) <- c("1", "2","3")
# Create the plot
hist + theme_minimal() +
  facet_grid(
  group ~ time, 
  labeller = labeller(group = group.labs, time = time.labs) )


