* Encoding: UTF-8.
*PCIT-T Database syntax 6.5.19.
    
Key study variables.

1. DPICS.
*Positive parenting behaviours  (“Do skills”)  during CLP, PLP and CU combined.

*BL.
COMPUTE BL_DPICS_pos_skills=BL_CLP_RF_Final + BL_CLP_BD_Final + BL_CLP_LP_Final + BL_PLP_RF_Final + 
    BL_PLP_BD_Final + BL_PLP_LP_Final + BL_CU_RF_Final + BL_CU_BD_Final + BL_CU_LP_Final.
EXECUTE.

*PWL.
COMPUTE PWL_DPICS_pos_skills= PWL_CLP_RF_Final + PWL_CLP_BD_Final +  PWL_CLP_LP_Final +  PWL_PLP_RF_Final + 
    PWL_PLP_BD_Final +  PWL_PLP_LP_Final +  PWL_CU_RF_Final +  PWL_CU_BD_Final +  PWL_CU_LP_Final.
EXECUTE.

*FU1.
COMPUTE FU1_DPICS_pos_skills=  FU1_CLP_RF_Final + FU1_CLP_BD_Final +   FU1_CLP_LP_Final +   FU1_PLP_RF_Final + 
     FU1_PLP_BD_Final +   FU1_PLP_LP_Final +   FU1_CU_RF_Final +   FU1_CU_BD_Final +   FU1_CU_LP_Final.
EXECUTE.

*FU2.
COMPUTE FU2_DPICS_pos_skills=  FU2_CLP_RF_Final + FU2_CLP_BD_Final +   FU2_CLP_LP_Final +   FU2_PLP_RF_Final + 
     FU2_PLP_BD_Final +   FU2_PLP_LP_Final +   FU2_CU_RF_Final +   FU2_CU_BD_Final +   FU2_CU_LP_Final.
EXECUTE.

*Negative parenting behaviours (“Don’t skills”) during CLP.

*BL.
COMPUTE BL_DPICS_CLP_neg_skills=BL_CLP_QU_Final + BL_CLP_IC_CO_Final + BL_CLP_IC_NC_Final + 
    BL_CLP_IC_NOC_Final + BL_CLP_DC_CO_Final + BL_CLP_DC_NC_Final + BL_CLP_DC_NOC_Final + 
    BL_CLP_NTA_Final.  
 EXECUTE.

*PWL.
COMPUTE PWL_DPICS_CLP_neg_skills=PWL_CLP_QU_Final + PWL_CLP_IC_CO_Final +PWL_CLP_IC_NC_Final + 
    PWL_CLP_IC_NOC_Final + PWL_CLP_DC_CO_Final + PWL_CLP_DC_NC_Final + PWL_CLP_DC_NOC_Final + 
    PWL_CLP_NTA_Final.
EXECUTE.

*FU1.
COMPUTE FU1_DPICS_CLP_neg_skills=FU1_CLP_QU_Final + FU1_CLP_IC_CO_Final + FU1_CLP_IC_NC_Final + 
    FU1_CLP_IC_NOC_Final + FU1_CLP_DC_CO_Final + FU1_CLP_DC_NC_Final + FU1_CLP_DC_NOC_Final + 
    FU1_CLP_NTA_Final. 
EXECUTE.

*FU2.
COMPUTE FU2_DPICS_CLP_neg_skills=FU2_CLP_QU_Final + FU2_CLP_IC_CO_Final + FU2_CLP_IC_NC_Final + 
    FU2_CLP_IC_NOC_Final + FU2_CLP_DC_CO_Final + FU2_CLP_DC_NC_Final + FU2_CLP_DC_NOC_Final + 
    FU2_CLP_NTA_Final. 
EXECUTE.

*Parent negative talk during CLP, PLP and CU combined.

*BL.
COMPUTE BL_NTA=BL_CLP_NTA_Final + BL_PLP_NTA_Final + BL_CU_NTA_Final.
EXECUTE.

*PWL.
COMPUTE PWL_NTA=PWL_CLP_NTA_Final + PWL_PLP_NTA_Final + PWL_CU_NTA_Final.
EXECUTE.

*FU1.
COMPUTE FU1_NTA=FU1_CLP_NTA_Final + FU1_PLP_NTA_Final + FU1_CU_NTA_Final.
EXECUTE.

*FU2.
COMPUTE FU2_NTA=FU2_CLP_NTA_Final + FU2_PLP_NTA_Final + FU2_CU_NTA_Final.
EXECUTE.

*Child non-compliance to effective parental commands during PLP & CU.

*Baseline.
    COMPUTE BL_Total_DC_PLP_CU=BL_PLP_DC_CO_Final +  BL_PLP_DC_NC_Final + BL_CU_DC_CO_Final + BL_CU_DC_NC_Final.
EXECUTE.

COMPUTE BL_PercentTotal_ChildNC_PLP_CU=(BL_PLP_DC_NC_Final + BL_CU_DC_NC_Final) /  BL_Total_DC_PLP_CU.
EXECUTE.

*PWL.
COMPUTE PWL_Total_DC_PLP_CU=PWL_PLP_DC_CO_Final +  PWL_PLP_DC_NC_Final + PWL_CU_DC_CO_Final +PWL_CU_DC_NC_Final.
EXECUTE.

COMPUTE PWL_PercentTotal_ChildNC_PLP_CU=(PWL_PLP_DC_NC_Final + PWL_CU_DC_NC_Final) /  PWL_Total_DC_PLP_CU.
EXECUTE.

*FU1.
COMPUTE FU1_Total_DC_PLP_CU=FU1_PLP_DC_CO_Final + FU1_PLP_DC_NC_Final + FU1_CU_DC_CO_Final +FU1_CU_DC_NC_Final.
EXECUTE.

COMPUTE FU1_PercentTotal_ChildNC_PLP_CU=(FU1_PLP_DC_NC_Final + FU1_CU_DC_NC_Final) / FU1_Total_DC_PLP_CU.
EXECUTE.

*FU2.
COMPUTE FU2_Total_DC_PLP_CU=FU2_PLP_DC_CO_Final + FU2_PLP_DC_NC_Final + FU2_CU_DC_CO_Final +FU2_CU_DC_NC_Final.
EXECUTE.

COMPUTE FU2_PercentTotal_ChildNC_PLP_CU=(FU2_PLP_DC_NC_Final + FU2_CU_DC_NC_Final) / FU2_Total_DC_PLP_CU.
EXECUTE.



*Child non-compliance to effective parental commands during CU.

*Baseline.
    COMPUTE BL_Total_DC_CU=BL_CU_DC_CO_Final + BL_CU_DC_NC_Final.
EXECUTE.

COMPUTE BL_PercentTotal_ChildNC_CU=(BL_CU_DC_NC_Final) /  BL_Total_DC_CU.
EXECUTE.

*PWL.
COMPUTE PWL_Total_DC_CU=PWL_CU_DC_CO_Final +PWL_CU_DC_NC_Final.
EXECUTE.

COMPUTE PWL_PercentTotal_ChildNC_CU=(PWL_CU_DC_NC_Final) /  PWL_Total_DC_CU.
EXECUTE.

*FU1.
COMPUTE FU1_Total_DC_CU=FU1_CU_DC_CO_Final +FU1_CU_DC_NC_Final.
EXECUTE.

COMPUTE FU1_PercentTotal_ChildNC_CU=(FU1_CU_DC_NC_Final) / FU1_Total_DC_CU.
EXECUTE.

*FU2.
COMPUTE FU2_Total_DC_CU=FU2_CU_DC_CO_Final +FU2_CU_DC_NC_Final.
EXECUTE.

COMPUTE FU2_PercentTotal_ChildNC_CU=(FU2_CU_DC_NC_Final) / FU2_Total_DC_CU.
EXECUTE.




