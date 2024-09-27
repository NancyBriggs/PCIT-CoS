#  analysis

dat <- data %>%
  dplyr::select(id,group, cbclext_pre_total,cbclext_post_total,cbclext_fu_total) %>%
  pivot_longer( cols = starts_with("cbclext_"), names_prefix = "cbclext_", 
                names_to="t", values_to="outcome") %>%
  mutate(time = ifelse(t == "pre_total",  1,
                       ifelse(t == "post_total", 2, 3))) 

result0<-lme(outcome ~1  , random =~ 1|id, data=dat, na.action=na.exclude)
result1<-lme(outcome ~ time , random =~ 1|id, data=dat, na.action=na.exclude)
result2<-lme(outcome ~ time + group, random =~ 1|id, data=dat, na.action=na.exclude)
result3<-lme(outcome ~ group*time, random =~ 1|id, data=dat, na.action=na.exclude)

```{r}
plot(result3)

qqnorm(residuals(result3))
qqline(residuals(result3), col="red")

# plot residuals against predictors
ggplot(data.frame(x1=data$group,pearson=residuals(result3,type="pearson")),
       aes(x=x1,y=pearson)) +
  geom_point() +
  theme_bw()

ggplot(data.frame(x2=data$time,pearson=residuals(result3,type="pearson")),
       aes(x=x2,y=pearson)) +
  geom_point() +
  theme_bw()


```