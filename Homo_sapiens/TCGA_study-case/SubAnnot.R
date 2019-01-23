## Function assigning class to TCGA breast cancer subtypes 
## based on the state of the markers PR, ER and HER
## input clinical matrix of breast cancer downloaded from Shamir paper
SubAnnot <- function (clinical){
  
  clinical_s<-clinical[which(!is.na(clinical[,8])),c(1,8,22,10)]
  clinical_s<-clinical_s[which(!is.na(clinical_s[,4])),]
  clinical_s<-clinical_s[which(!is.na(clinical_s[,3])),]
  subtypes<-numeric(0)
  
  for(i in 1:dim(clinical_s)[1]){
    if(clinical_s[i,2]=='Positive'){
        if(clinical_s[i,4]=='Positive'){
          subtypes<-rbind(subtypes,t(c(clinical_s[i,1],'Luminal B')))
        }else if(clinical_s[i,4]=='Negative'){
          subtypes<-rbind(subtypes,t(c(clinical_s[i,1],'Luminal A')))
        }
    }else if(clinical_s[i,2]=='Negative' && clinical_s[i,3]=='Negative'){
      if(clinical_s[i,4]=='Positive'){
        subtypes<-rbind(subtypes,t(c(clinical_s[i,1],'HER-2')))
      }else if(clinical_s[i,4]=='Negative'){
        subtypes<-rbind(subtypes,t(c(clinical_s[i,1],'Basal')))
      }
    }
    
  }
  
  return(subtypes);
}



