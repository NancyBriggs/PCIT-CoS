
descriptive_table <- function(v1,v2,v3) {  

    desctable <- data %>%
      group_by(group) %>%
      summarise(n1 = sum(!is.na( {{v1}} )),
                mean1=mean({{v1}}, na.rm = T),
                sd1=sd({{v1}}, na.rm = T ),
                median1=median({{v1}}, na.rm = T ),
                min1=min({{v1}}, na.rm = T ),
                max1=max({{v1}}, na.rm = T ),
                
                n2 = sum(!is.na({{v2}})), 
                mean2=mean({{v2}}, na.rm = T ),
                sd2=sd({{v2}}, na.rm = T ),
                median2=median({{v2}}, na.rm = T ),
                min2=min({{v2}}, na.rm = T ),
                max2=max({{v2}}, na.rm = T ),
                
                n3 = sum(!is.na({{v3}})), 
                mean3=mean({{v3}}, na.rm = T ),
                sd3=sd({{v3}}, na.rm = T ),
                median3=median({{v3}}, na.rm = T ),
                min3=min({{v3}}, na.rm = T ),
                max3=max({{v3}}, na.rm = T )  ) %>%
      pivot_longer(cols = -group,  
                   names_to = c('.value', 'time'), 
                   names_pattern = '(.*)(\\d+)')
    return(desctable)
}


d<-descriptive_table(v1=pre_bitseacomp_sum, v2=post_bitseacomp_sum,v3=fu_bitseacomp_sum)
