library(ggplot2)

Condition=c("Heart Attack", "Heart Failure", "Pneumonia", 
            "Heart Attack", "Heart Failure", "Pneumonia")
Measure=c("Mortality","Mortality", "Mortality", 
          "Readmission","Readmission", "Readmission"  )
Rate=c(15.9, 11.3, 11.9, 19.8, 24.8, 18.4)

CareMeasures=data.frame(Condition, Measure, Rate)

qplot(x=Condition, data=CareMeasures, geom="bar", 
      weight=Rate, facets=Measure~., fill=Measure)

ggplot(CareMeasures, aes(fill=Measure, x=Condition, y=Rate)) 
+ geom_bar(position="dodge", stat="identity")
+ggtitle(" Outcome of care measures")

