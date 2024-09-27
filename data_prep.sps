* Encoding: UTF-8.
 * GET
  FILE='C:\Users\Nancy Briggs\OneDrive - UNSW\Documents\Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\PCITT RCT main dataset 4.1.22.sav'.
 * DATASET NAME DataSet1 WINDOW=FRONT.
GET 
  FILE='C:\Users\Nancy Briggs\OneDrive - UNSW\Documents\_Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\PCITT RCT main dataset 26.7.23 - DPCIS & MM entered_1.sav'. 
DATASET NAME DataSet1 WINDOW=FRONT.

FILTER OFF.
USE ALL.
SELECT IF (GROUP<999).
EXECUTE.



DATASET ACTIVATE DataSet1.
COMPUTE cbclext_pre_mean=mean(precbcl5,precbcl6,precbcl56,precbcl59,precbcl95, precbcl8, precbcl15,precbcl16,precbcl18,
                precbcl20,precbcl27,precbcl29,precbcl35,precbcl40,precbcl42,precbcl44,precbcl53,
                precbcl58,precbcl66,precbcl69,precbcl81,precbcl85,precbcl88,precbcl96).
COMPUTE cbclext_post_mean=mean(post_cbcl5,post_cbcl6,post_cbcl56,post_cbcl59,post_cbcl95, post_cbcl8, post_cbcl15,post_cbcl16,post_cbcl18,
                post_cbcl20,post_cbcl27,post_cbcl29,post_cbcl35,post_cbcl40,post_cbcl42,post_cbcl44,post_cbcl53,
                post_cbcl58,post_cbcl66,post_cbcl69,post_cbcl81,post_cbcl85,post_cbcl88,post_cbcl96).
COMPUTE cbclext_fu_mean=mean(fu_cbcl5,fu_cbcl6,fu_cbcl56,fu_cbcl59,fu_cbcl95, fu_cbcl8, fu_cbcl15,fu_cbcl16,fu_cbcl18,
                fu_cbcl20,fu_cbcl27,fu_cbcl29,fu_cbcl35,fu_cbcl40,fu_cbcl42,fu_cbcl44,fu_cbcl53,
                fu_cbcl58,fu_cbcl66,fu_cbcl69,fu_cbcl81,fu_cbcl85,fu_cbcl88,fu_cbcl96).

COMPUTE cbclint_pre_mean=mean(precbcl21,precbcl46,precbcl51,precbcl79,precbcl82,precbcl83,precbcl92,precbcl97,
                precbcl99,precbcl10,precbcl33,precbcl37,precbcl43,precbcl47,precbcl68,precbcl87,
                precbcl90,precbcl1,precbcl7,precbcl12,precbcl19,precbcl24,precbcl39,precbcl45,
                precbcl52,precbcl78,precbcl86,precbcl93,precbcl2,precbcl4,precbcl23,precbcl62,
                precbcl67,precbcl70,precbcl71,precbcl98).
COMPUTE cbclint_post_mean=mean(post_cbcl21,post_cbcl46,post_cbcl51,post_cbcl79,post_cbcl82,post_cbcl83,post_cbcl92,post_cbcl97,
                post_cbcl99,post_cbcl10,post_cbcl33,post_cbcl37,post_cbcl43,post_cbcl47,post_cbcl68,post_cbcl87,
                post_cbcl90,post_cbcl1,post_cbcl7,post_cbcl12,post_cbcl19,post_cbcl24,post_cbcl39,post_cbcl45,
                post_cbcl52,post_cbcl78,post_cbcl86,post_cbcl93,post_cbcl2,post_cbcl4,post_cbcl23,post_cbcl62,
                post_cbcl67,post_cbcl70,post_cbcl71,post_cbcl98).
COMPUTE cbclint_fu_mean=mean(fu_cbcl21,fu_cbcl46,fu_cbcl51,fu_cbcl79,fu_cbcl82,fu_cbcl83,fu_cbcl92,fu_cbcl97,
                fu_cbcl99,fu_cbcl10,fu_cbcl33,fu_cbcl37,fu_cbcl43,fu_cbcl47,fu_cbcl68,fu_cbcl87,
                fu_cbcl90,fu_cbcl1,fu_cbcl7,fu_cbcl12,fu_cbcl19,fu_cbcl24,fu_cbcl39,fu_cbcl45,
                fu_cbcl52,fu_cbcl78,fu_cbcl86,fu_cbcl93,fu_cbcl2,fu_cbcl4,fu_cbcl23,fu_cbcl62,
                fu_cbcl67,fu_cbcl70,fu_cbcl71,fu_cbcl98).
EXECUTE.





* Count the number of valid items.
* If all items are missing, don't replace the indiviudal ones with the mean.
* Those are jus missing values. 
compute 	cbclint_pre_count	 =0 .				
 if ~missing(	precbcl21	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl46	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl51	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl79	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl82	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl83	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl92	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl97	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl99	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl10	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl33	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl37	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl43	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl47	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl68	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl87	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl90	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl1	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl7	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl12	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl19	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl24	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl39	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl45	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl52	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl78	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl86	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl93	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl2	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl4	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl23	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl62	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl67	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl70	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl71	)	cbclint_pre_count	=	cbclint_pre_count + 1	.
 if ~missing(	precbcl98	)	cbclint_pre_count	=	cbclint_pre_count + 1	.


compute 	cbclint_post_count	 =0 .				
 if ~missing(	post_cbcl21	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl46	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl51	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl79	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl82	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl83	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl92	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl97	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl99	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl10	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl33	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl37	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl43	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl47	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl68	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl87	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl90	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl1	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl7	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl12	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl19	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl24	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl39	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl45	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl52	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl78	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl86	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl93	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl2	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl4	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl23	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl62	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl67	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl70	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl71	)	cbclint_post_count	=	cbclint_post_count + 1	.
 if ~missing(	post_cbcl98	)	cbclint_post_count	=	cbclint_post_count + 1	.

compute 	cbclint_fu_count	 =0 .				
 if ~missing(	fu_cbcl21	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl46	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl51	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl79	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl82	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl83	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl92	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl97	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl99	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl10	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl33	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl37	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl43	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl47	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl68	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl87	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl90	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl1	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl7	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl12	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl19	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl24	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl39	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl45	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl52	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl78	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl86	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl93	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl2	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl4	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl23	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl62	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl67	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl70	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl71	)	cbclint_fu_count	=	cbclint_fu_count + 1	.
 if ~missing(	fu_cbcl98	)	cbclint_fu_count	=	cbclint_fu_count + 1	.

compute 	cbclext_pre_count	 =0 .				
 if ~missing(	precbcl5	)	cbclext_pre_count	=	cbclext_pre_count + 1	.
 if ~missing(	precbcl6	)	cbclext_pre_count	=	cbclext_pre_count + 1	.
 if ~missing(	precbcl56	)	cbclext_pre_count	=	cbclext_pre_count + 1	.
 if ~missing(	precbcl59	)	cbclext_pre_count	=	cbclext_pre_count + 1	.
 if ~missing(	precbcl95	)	cbclext_pre_count	=	cbclext_pre_count + 1	.
 if ~missing(	precbcl8	)	cbclext_pre_count	=	cbclext_pre_count + 1	.
 if ~missing(	precbcl15	)	cbclext_pre_count	=	cbclext_pre_count + 1	.
 if ~missing(	precbcl16	)	cbclext_pre_count	=	cbclext_pre_count + 1	.
 if ~missing(	precbcl18	)	cbclext_pre_count	=	cbclext_pre_count + 1	.
 if ~missing(	precbcl20	)	cbclext_pre_count	=	cbclext_pre_count + 1	.
 if ~missing(	precbcl27	)	cbclext_pre_count	=	cbclext_pre_count + 1	.
 if ~missing(	precbcl29	)	cbclext_pre_count	=	cbclext_pre_count + 1	.
 if ~missing(	precbcl35	)	cbclext_pre_count	=	cbclext_pre_count + 1	.
 if ~missing(	precbcl40	)	cbclext_pre_count	=	cbclext_pre_count + 1	.
 if ~missing(	precbcl42	)	cbclext_pre_count	=	cbclext_pre_count + 1	.
 if ~missing(	precbcl44	)	cbclext_pre_count	=	cbclext_pre_count + 1	.
 if ~missing(	precbcl53	)	cbclext_pre_count	=	cbclext_pre_count + 1	.
 if ~missing(	precbcl58	)	cbclext_pre_count	=	cbclext_pre_count + 1	.
 if ~missing(	precbcl66	)	cbclext_pre_count	=	cbclext_pre_count + 1	.
 if ~missing(	precbcl69	)	cbclext_pre_count	=	cbclext_pre_count + 1	.
 if ~missing(	precbcl81	)	cbclext_pre_count	=	cbclext_pre_count + 1	.
 if ~missing(	precbcl85	)	cbclext_pre_count	=	cbclext_pre_count + 1	.
 if ~missing(	precbcl88	)	cbclext_pre_count	=	cbclext_pre_count + 1	.
 if ~missing(	precbcl96	)	cbclext_pre_count	=	cbclext_pre_count + 1	.

compute 	cbclext_post_count	 =0 .				
 if ~missing(	post_cbcl5	)	cbclext_post_count	=	cbclext_post_count + 1	.
 if ~missing(	post_cbcl6	)	cbclext_post_count	=	cbclext_post_count + 1	.
 if ~missing(	post_cbcl56	)	cbclext_post_count	=	cbclext_post_count + 1	.
 if ~missing(	post_cbcl59	)	cbclext_post_count	=	cbclext_post_count + 1	.
 if ~missing(	post_cbcl95	)	cbclext_post_count	=	cbclext_post_count + 1	.
 if ~missing(	post_cbcl8	)	cbclext_post_count	=	cbclext_post_count + 1	.
 if ~missing(	post_cbcl15	)	cbclext_post_count	=	cbclext_post_count + 1	.
 if ~missing(	post_cbcl16	)	cbclext_post_count	=	cbclext_post_count + 1	.
 if ~missing(	post_cbcl18	)	cbclext_post_count	=	cbclext_post_count + 1	.
 if ~missing(	post_cbcl20	)	cbclext_post_count	=	cbclext_post_count + 1	.
 if ~missing(	post_cbcl27	)	cbclext_post_count	=	cbclext_post_count + 1	.
 if ~missing(	post_cbcl29	)	cbclext_post_count	=	cbclext_post_count + 1	.
 if ~missing(	post_cbcl35	)	cbclext_post_count	=	cbclext_post_count + 1	.
 if ~missing(	post_cbcl40	)	cbclext_post_count	=	cbclext_post_count + 1	.
 if ~missing(	post_cbcl42	)	cbclext_post_count	=	cbclext_post_count + 1	.
 if ~missing(	post_cbcl44	)	cbclext_post_count	=	cbclext_post_count + 1	.
 if ~missing(	post_cbcl53	)	cbclext_post_count	=	cbclext_post_count + 1	.
 if ~missing(	post_cbcl58	)	cbclext_post_count	=	cbclext_post_count + 1	.
 if ~missing(	post_cbcl66	)	cbclext_post_count	=	cbclext_post_count + 1	.
 if ~missing(	post_cbcl69	)	cbclext_post_count	=	cbclext_post_count + 1	.
 if ~missing(	post_cbcl81	)	cbclext_post_count	=	cbclext_post_count + 1	.
 if ~missing(	post_cbcl85	)	cbclext_post_count	=	cbclext_post_count + 1	.
 if ~missing(	post_cbcl88	)	cbclext_post_count	=	cbclext_post_count + 1	.
 if ~missing(	post_cbcl96	)	cbclext_post_count	=	cbclext_post_count + 1	.
compute 	cbclext_fu_count	 =0 .				
 if ~missing(	fu_cbcl5	)	cbclext_fu_count	=	cbclext_fu_count + 1	.
 if ~missing(	fu_cbcl6	)	cbclext_fu_count	=	cbclext_fu_count + 1	.
 if ~missing(	fu_cbcl56	)	cbclext_fu_count	=	cbclext_fu_count + 1	.
 if ~missing(	fu_cbcl59	)	cbclext_fu_count	=	cbclext_fu_count + 1	.
 if ~missing(	fu_cbcl95	)	cbclext_fu_count	=	cbclext_fu_count + 1	.
 if ~missing(	fu_cbcl8	)	cbclext_fu_count	=	cbclext_fu_count + 1	.
 if ~missing(	fu_cbcl15	)	cbclext_fu_count	=	cbclext_fu_count + 1	.
 if ~missing(	fu_cbcl16	)	cbclext_fu_count	=	cbclext_fu_count + 1	.
 if ~missing(	fu_cbcl18	)	cbclext_fu_count	=	cbclext_fu_count + 1	.
 if ~missing(	fu_cbcl20	)	cbclext_fu_count	=	cbclext_fu_count + 1	.
 if ~missing(	fu_cbcl27	)	cbclext_fu_count	=	cbclext_fu_count + 1	.
 if ~missing(	fu_cbcl29	)	cbclext_fu_count	=	cbclext_fu_count + 1	.
 if ~missing(	fu_cbcl35	)	cbclext_fu_count	=	cbclext_fu_count + 1	.
 if ~missing(	fu_cbcl40	)	cbclext_fu_count	=	cbclext_fu_count + 1	.
 if ~missing(	fu_cbcl42	)	cbclext_fu_count	=	cbclext_fu_count + 1	.
 if ~missing(	fu_cbcl44	)	cbclext_fu_count	=	cbclext_fu_count + 1	.
 if ~missing(	fu_cbcl53	)	cbclext_fu_count	=	cbclext_fu_count + 1	.
 if ~missing(	fu_cbcl58	)	cbclext_fu_count	=	cbclext_fu_count + 1	.
 if ~missing(	fu_cbcl66	)	cbclext_fu_count	=	cbclext_fu_count + 1	.
 if ~missing(	fu_cbcl69	)	cbclext_fu_count	=	cbclext_fu_count + 1	.
 if ~missing(	fu_cbcl81	)	cbclext_fu_count	=	cbclext_fu_count + 1	.
 if ~missing(	fu_cbcl85	)	cbclext_fu_count	=	cbclext_fu_count + 1	.
 if ~missing(	fu_cbcl88	)	cbclext_fu_count	=	cbclext_fu_count + 1	.
 if ~missing(	fu_cbcl96	)	cbclext_fu_count	=	cbclext_fu_count + 1	.
Execute.

* then, for each missing value for the items, replace with the mean .
if (missing(	precbcl5	) & 	cbclext_pre_count	>0	)	precbcl5	=	cbclext_pre_mean	.
if (missing(	precbcl6	) & 	cbclext_pre_count	>0	)	precbcl6	=	cbclext_pre_mean	.
if (missing(	precbcl56	) & 	cbclext_pre_count	>0	)	precbcl56	=	cbclext_pre_mean	.
if (missing(	precbcl59	) & 	cbclext_pre_count	>0	)	precbcl59	=	cbclext_pre_mean	.
if (missing(	precbcl95	) & 	cbclext_pre_count	>0	)	precbcl95	=	cbclext_pre_mean	.
if (missing(	precbcl8	) & 	cbclext_pre_count	>0	)	precbcl8	=	cbclext_pre_mean	.
if (missing(	precbcl15	) & 	cbclext_pre_count	>0	)	precbcl15	=	cbclext_pre_mean	.
if (missing(	precbcl16	) & 	cbclext_pre_count	>0	)	precbcl16	=	cbclext_pre_mean	.
if (missing(	precbcl18	) & 	cbclext_pre_count	>0	)	precbcl18	=	cbclext_pre_mean	.
if (missing(	precbcl20	) & 	cbclext_pre_count	>0	)	precbcl20	=	cbclext_pre_mean	.
if (missing(	precbcl27	) & 	cbclext_pre_count	>0	)	precbcl27	=	cbclext_pre_mean	.
if (missing(	precbcl29	) & 	cbclext_pre_count	>0	)	precbcl29	=	cbclext_pre_mean	.
if (missing(	precbcl35	) & 	cbclext_pre_count	>0	)	precbcl35	=	cbclext_pre_mean	.
if (missing(	precbcl40	) & 	cbclext_pre_count	>0	)	precbcl40	=	cbclext_pre_mean	.
if (missing(	precbcl42	) & 	cbclext_pre_count	>0	)	precbcl42	=	cbclext_pre_mean	.
if (missing(	precbcl44	) & 	cbclext_pre_count	>0	)	precbcl44	=	cbclext_pre_mean	.
if (missing(	precbcl53	) & 	cbclext_pre_count	>0	)	precbcl53	=	cbclext_pre_mean	.
if (missing(	precbcl58	) & 	cbclext_pre_count	>0	)	precbcl58	=	cbclext_pre_mean	.
if (missing(	precbcl66	) & 	cbclext_pre_count	>0	)	precbcl66	=	cbclext_pre_mean	.
if (missing(	precbcl69	) & 	cbclext_pre_count	>0	)	precbcl69	=	cbclext_pre_mean	.
if (missing(	precbcl81	) & 	cbclext_pre_count	>0	)	precbcl81	=	cbclext_pre_mean	.
if (missing(	precbcl85	) & 	cbclext_pre_count	>0	)	precbcl85	=	cbclext_pre_mean	.
if (missing(	precbcl88	) & 	cbclext_pre_count	>0	)	precbcl88	=	cbclext_pre_mean	.
if (missing(	precbcl96	) & 	cbclext_pre_count	>0	)	precbcl96	=	cbclext_pre_mean	.
 					
if (missing(	post_cbcl5	) & 	cbclext_post_count	>0	)	post_cbcl5	=	cbclext_post_mean	.
if (missing(	post_cbcl6	) & 	cbclext_post_count	>0	)	post_cbcl6	=	cbclext_post_mean	.
if (missing(	post_cbcl56	) & 	cbclext_post_count	>0	)	post_cbcl56	=	cbclext_post_mean	.
if (missing(	post_cbcl59	) & 	cbclext_post_count	>0	)	post_cbcl59	=	cbclext_post_mean	.
if (missing(	post_cbcl95	) & 	cbclext_post_count	>0	)	post_cbcl95	=	cbclext_post_mean	.
if (missing(	post_cbcl8	) & 	cbclext_post_count	>0	)	post_cbcl8	=	cbclext_post_mean	.
if (missing(	post_cbcl15	) & 	cbclext_post_count	>0	)	post_cbcl15	=	cbclext_post_mean	.
if (missing(	post_cbcl16	) & 	cbclext_post_count	>0	)	post_cbcl16	=	cbclext_post_mean	.
if (missing(	post_cbcl18	) & 	cbclext_post_count	>0	)	post_cbcl18	=	cbclext_post_mean	.
if (missing(	post_cbcl20	) & 	cbclext_post_count	>0	)	post_cbcl20	=	cbclext_post_mean	.
if (missing(	post_cbcl27	) & 	cbclext_post_count	>0	)	post_cbcl27	=	cbclext_post_mean	.
if (missing(	post_cbcl29	) & 	cbclext_post_count	>0	)	post_cbcl29	=	cbclext_post_mean	.
if (missing(	post_cbcl35	) & 	cbclext_post_count	>0	)	post_cbcl35	=	cbclext_post_mean	.
if (missing(	post_cbcl40	) & 	cbclext_post_count	>0	)	post_cbcl40	=	cbclext_post_mean	.
if (missing(	post_cbcl42	) & 	cbclext_post_count	>0	)	post_cbcl42	=	cbclext_post_mean	.
if (missing(	post_cbcl44	) & 	cbclext_post_count	>0	)	post_cbcl44	=	cbclext_post_mean	.
if (missing(	post_cbcl53	) & 	cbclext_post_count	>0	)	post_cbcl53	=	cbclext_post_mean	.
if (missing(	post_cbcl58	) & 	cbclext_post_count	>0	)	post_cbcl58	=	cbclext_post_mean	.
if (missing(	post_cbcl66	) & 	cbclext_post_count	>0	)	post_cbcl66	=	cbclext_post_mean	.
if (missing(	post_cbcl69	) & 	cbclext_post_count	>0	)	post_cbcl69	=	cbclext_post_mean	.
if (missing(	post_cbcl81	) & 	cbclext_post_count	>0	)	post_cbcl81	=	cbclext_post_mean	.
if (missing(	post_cbcl85	) & 	cbclext_post_count	>0	)	post_cbcl85	=	cbclext_post_mean	.
if (missing(	post_cbcl88	) & 	cbclext_post_count	>0	)	post_cbcl88	=	cbclext_post_mean	.
if (missing(	post_cbcl96	) & 	cbclext_post_count	>0	)	post_cbcl96	=	cbclext_post_mean	.
 					
if (missing(	fu_cbcl5	) & 	cbclext_fu_count	>0	)	fu_cbcl5	=	cbclext_fu_mean	.
if (missing(	fu_cbcl6	) & 	cbclext_fu_count	>0	)	fu_cbcl6	=	cbclext_fu_mean	.
if (missing(	fu_cbcl56	) & 	cbclext_fu_count	>0	)	fu_cbcl56	=	cbclext_fu_mean	.
if (missing(	fu_cbcl59	) & 	cbclext_fu_count	>0	)	fu_cbcl59	=	cbclext_fu_mean	.
if (missing(	fu_cbcl95	) & 	cbclext_fu_count	>0	)	fu_cbcl95	=	cbclext_fu_mean	.
if (missing(	fu_cbcl8	) & 	cbclext_fu_count	>0	)	fu_cbcl8	=	cbclext_fu_mean	.
if (missing(	fu_cbcl15	) & 	cbclext_fu_count	>0	)	fu_cbcl15	=	cbclext_fu_mean	.
if (missing(	fu_cbcl16	) & 	cbclext_fu_count	>0	)	fu_cbcl16	=	cbclext_fu_mean	.
if (missing(	fu_cbcl18	) & 	cbclext_fu_count	>0	)	fu_cbcl18	=	cbclext_fu_mean	.
if (missing(	fu_cbcl20	) & 	cbclext_fu_count	>0	)	fu_cbcl20	=	cbclext_fu_mean	.
if (missing(	fu_cbcl27	) & 	cbclext_fu_count	>0	)	fu_cbcl27	=	cbclext_fu_mean	.
if (missing(	fu_cbcl29	) & 	cbclext_fu_count	>0	)	fu_cbcl29	=	cbclext_fu_mean	.
if (missing(	fu_cbcl35	) & 	cbclext_fu_count	>0	)	fu_cbcl35	=	cbclext_fu_mean	.
if (missing(	fu_cbcl40	) & 	cbclext_fu_count	>0	)	fu_cbcl40	=	cbclext_fu_mean	.
if (missing(	fu_cbcl42	) & 	cbclext_fu_count	>0	)	fu_cbcl42	=	cbclext_fu_mean	.
if (missing(	fu_cbcl44	) & 	cbclext_fu_count	>0	)	fu_cbcl44	=	cbclext_fu_mean	.
if (missing(	fu_cbcl53	) & 	cbclext_fu_count	>0	)	fu_cbcl53	=	cbclext_fu_mean	.
if (missing(	fu_cbcl58	) & 	cbclext_fu_count	>0	)	fu_cbcl58	=	cbclext_fu_mean	.
if (missing(	fu_cbcl66	) & 	cbclext_fu_count	>0	)	fu_cbcl66	=	cbclext_fu_mean	.
if (missing(	fu_cbcl69	) & 	cbclext_fu_count	>0	)	fu_cbcl69	=	cbclext_fu_mean	.
if (missing(	fu_cbcl81	) & 	cbclext_fu_count	>0	)	fu_cbcl81	=	cbclext_fu_mean	.
if (missing(	fu_cbcl85	) & 	cbclext_fu_count	>0	)	fu_cbcl85	=	cbclext_fu_mean	.
if (missing(	fu_cbcl88	) & 	cbclext_fu_count	>0	)	fu_cbcl88	=	cbclext_fu_mean	.
if (missing(	fu_cbcl96	) & 	cbclext_fu_count	>0	)	fu_cbcl96	=	cbclext_fu_mean	.
 					
if (missing(	precbcl21	) & 	cbclint_pre_count	>0	)	precbcl21	=	cbclint_pre_mean	.
if (missing(	precbcl46	) & 	cbclint_pre_count	>0	)	precbcl46	=	cbclint_pre_mean	.
if (missing(	precbcl51	) & 	cbclint_pre_count	>0	)	precbcl51	=	cbclint_pre_mean	.
if (missing(	precbcl79	) & 	cbclint_pre_count	>0	)	precbcl79	=	cbclint_pre_mean	.
if (missing(	precbcl82	) & 	cbclint_pre_count	>0	)	precbcl82	=	cbclint_pre_mean	.
if (missing(	precbcl83	) & 	cbclint_pre_count	>0	)	precbcl83	=	cbclint_pre_mean	.
if (missing(	precbcl92	) & 	cbclint_pre_count	>0	)	precbcl92	=	cbclint_pre_mean	.
if (missing(	precbcl97	) & 	cbclint_pre_count	>0	)	precbcl97	=	cbclint_pre_mean	.
if (missing(	precbcl99	) & 	cbclint_pre_count	>0	)	precbcl99	=	cbclint_pre_mean	.
if (missing(	precbcl10	) & 	cbclint_pre_count	>0	)	precbcl10	=	cbclint_pre_mean	.
if (missing(	precbcl33	) & 	cbclint_pre_count	>0	)	precbcl33	=	cbclint_pre_mean	.
if (missing(	precbcl37	) & 	cbclint_pre_count	>0	)	precbcl37	=	cbclint_pre_mean	.
if (missing(	precbcl43	) & 	cbclint_pre_count	>0	)	precbcl43	=	cbclint_pre_mean	.
if (missing(	precbcl47	) & 	cbclint_pre_count	>0	)	precbcl47	=	cbclint_pre_mean	.
if (missing(	precbcl68	) & 	cbclint_pre_count	>0	)	precbcl68	=	cbclint_pre_mean	.
if (missing(	precbcl87	) & 	cbclint_pre_count	>0	)	precbcl87	=	cbclint_pre_mean	.
if (missing(	precbcl90	) & 	cbclint_pre_count	>0	)	precbcl90	=	cbclint_pre_mean	.
if (missing(	precbcl1	) & 	cbclint_pre_count	>0	)	precbcl1	=	cbclint_pre_mean	.
if (missing(	precbcl7	) & 	cbclint_pre_count	>0	)	precbcl7	=	cbclint_pre_mean	.
if (missing(	precbcl12	) & 	cbclint_pre_count	>0	)	precbcl12	=	cbclint_pre_mean	.
if (missing(	precbcl19	) & 	cbclint_pre_count	>0	)	precbcl19	=	cbclint_pre_mean	.
if (missing(	precbcl24	) & 	cbclint_pre_count	>0	)	precbcl24	=	cbclint_pre_mean	.
if (missing(	precbcl39	) & 	cbclint_pre_count	>0	)	precbcl39	=	cbclint_pre_mean	.
if (missing(	precbcl45	) & 	cbclint_pre_count	>0	)	precbcl45	=	cbclint_pre_mean	.
if (missing(	precbcl52	) & 	cbclint_pre_count	>0	)	precbcl52	=	cbclint_pre_mean	.
if (missing(	precbcl78	) & 	cbclint_pre_count	>0	)	precbcl78	=	cbclint_pre_mean	.
if (missing(	precbcl86	) & 	cbclint_pre_count	>0	)	precbcl86	=	cbclint_pre_mean	.
if (missing(	precbcl93	) & 	cbclint_pre_count	>0	)	precbcl93	=	cbclint_pre_mean	.
if (missing(	precbcl2	) & 	cbclint_pre_count	>0	)	precbcl2	=	cbclint_pre_mean	.
if (missing(	precbcl4	) & 	cbclint_pre_count	>0	)	precbcl4	=	cbclint_pre_mean	.
if (missing(	precbcl23	) & 	cbclint_pre_count	>0	)	precbcl23	=	cbclint_pre_mean	.
if (missing(	precbcl62	) & 	cbclint_pre_count	>0	)	precbcl62	=	cbclint_pre_mean	.
if (missing(	precbcl67	) & 	cbclint_pre_count	>0	)	precbcl67	=	cbclint_pre_mean	.
if (missing(	precbcl70	) & 	cbclint_pre_count	>0	)	precbcl70	=	cbclint_pre_mean	.
if (missing(	precbcl71	) & 	cbclint_pre_count	>0	)	precbcl71	=	cbclint_pre_mean	.
if (missing(	precbcl98	) & 	cbclint_pre_count	>0	)	precbcl98	=	cbclint_pre_mean	.
 				
if (missing(	precbcl21	) & 	cbclint_post_count	>0	)	precbcl21	=	cbclint_pre_mean	.
if (missing(	precbcl46	) & 	cbclint_post_count	>0	)	precbcl46	=	cbclint_pre_mean	.
if (missing(	precbcl51	) & 	cbclint_post_count	>0	)	precbcl51	=	cbclint_pre_mean	.
if (missing(	precbcl79	) & 	cbclint_post_count	>0	)	precbcl79	=	cbclint_pre_mean	.
if (missing(	precbcl82	) & 	cbclint_post_count	>0	)	precbcl82	=	cbclint_pre_mean	.
if (missing(	precbcl83	) & 	cbclint_post_count	>0	)	precbcl83	=	cbclint_pre_mean	.
if (missing(	precbcl92	) & 	cbclint_post_count	>0	)	precbcl92	=	cbclint_pre_mean	.
if (missing(	precbcl97	) & 	cbclint_post_count	>0	)	precbcl97	=	cbclint_pre_mean	.
if (missing(	precbcl99	) & 	cbclint_post_count	>0	)	precbcl99	=	cbclint_pre_mean	.
if (missing(	precbcl10	) & 	cbclint_post_count	>0	)	precbcl10	=	cbclint_pre_mean	.
if (missing(	precbcl33	) & 	cbclint_post_count	>0	)	precbcl33	=	cbclint_pre_mean	.
if (missing(	precbcl37	) & 	cbclint_post_count	>0	)	precbcl37	=	cbclint_pre_mean	.
if (missing(	precbcl43	) & 	cbclint_post_count	>0	)	precbcl43	=	cbclint_pre_mean	.
if (missing(	precbcl47	) & 	cbclint_post_count	>0	)	precbcl47	=	cbclint_pre_mean	.
if (missing(	precbcl68	) & 	cbclint_post_count	>0	)	precbcl68	=	cbclint_pre_mean	.
if (missing(	precbcl87	) & 	cbclint_post_count	>0	)	precbcl87	=	cbclint_pre_mean	.
if (missing(	precbcl90	) & 	cbclint_post_count	>0	)	precbcl90	=	cbclint_pre_mean	.
if (missing(	precbcl1	) & 	cbclint_post_count	>0	)	precbcl1	=	cbclint_pre_mean	.
if (missing(	precbcl7	) & 	cbclint_post_count	>0	)	precbcl7	=	cbclint_pre_mean	.
if (missing(	precbcl12	) & 	cbclint_post_count	>0	)	precbcl12	=	cbclint_pre_mean	.
if (missing(	precbcl19	) & 	cbclint_post_count	>0	)	precbcl19	=	cbclint_pre_mean	.
if (missing(	precbcl24	) & 	cbclint_post_count	>0	)	precbcl24	=	cbclint_pre_mean	.
if (missing(	precbcl39	) & 	cbclint_post_count	>0	)	precbcl39	=	cbclint_pre_mean	.
if (missing(	precbcl45	) & 	cbclint_post_count	>0	)	precbcl45	=	cbclint_pre_mean	.
if (missing(	precbcl52	) & 	cbclint_post_count	>0	)	precbcl52	=	cbclint_pre_mean	.
if (missing(	precbcl78	) & 	cbclint_post_count	>0	)	precbcl78	=	cbclint_pre_mean	.
if (missing(	precbcl86	) & 	cbclint_post_count	>0	)	precbcl86	=	cbclint_pre_mean	.
if (missing(	precbcl93	) & 	cbclint_post_count	>0	)	precbcl93	=	cbclint_pre_mean	.
if (missing(	precbcl2	) & 	cbclint_post_count	>0	)	precbcl2	=	cbclint_pre_mean	.
if (missing(	precbcl4	) & 	cbclint_post_count	>0	)	precbcl4	=	cbclint_pre_mean	.
if (missing(	precbcl23	) & 	cbclint_post_count	>0	)	precbcl23	=	cbclint_pre_mean	.
if (missing(	precbcl62	) & 	cbclint_post_count	>0	)	precbcl62	=	cbclint_pre_mean	.
if (missing(	precbcl67	) & 	cbclint_post_count	>0	)	precbcl67	=	cbclint_pre_mean	.
if (missing(	precbcl70	) & 	cbclint_post_count	>0	)	precbcl70	=	cbclint_pre_mean	.
if (missing(	precbcl71	) & 	cbclint_post_count	>0	)	precbcl71	=	cbclint_pre_mean	.
if (missing(	precbcl98	) & 	cbclint_post_count	>0	)	precbcl98	=	cbclint_pre_mean	.
 					
if (missing(	fu_cbcl21	) & 	cbclint_fu_count	>0	)	fu_cbcl21	=	cbclint_fu_mean	.
if (missing(	fu_cbcl46	) & 	cbclint_fu_count	>0	)	fu_cbcl46	=	cbclint_fu_mean	.
if (missing(	fu_cbcl51	) & 	cbclint_fu_count	>0	)	fu_cbcl51	=	cbclint_fu_mean	.
if (missing(	fu_cbcl79	) & 	cbclint_fu_count	>0	)	fu_cbcl79	=	cbclint_fu_mean	.
if (missing(	fu_cbcl82	) & 	cbclint_fu_count	>0	)	fu_cbcl82	=	cbclint_fu_mean	.
if (missing(	fu_cbcl83	) & 	cbclint_fu_count	>0	)	fu_cbcl83	=	cbclint_fu_mean	.
if (missing(	fu_cbcl92	) & 	cbclint_fu_count	>0	)	fu_cbcl92	=	cbclint_fu_mean	.
if (missing(	fu_cbcl97	) & 	cbclint_fu_count	>0	)	fu_cbcl97	=	cbclint_fu_mean	.
if (missing(	fu_cbcl99	) & 	cbclint_fu_count	>0	)	fu_cbcl99	=	cbclint_fu_mean	.
if (missing(	fu_cbcl10	) & 	cbclint_fu_count	>0	)	fu_cbcl10	=	cbclint_fu_mean	.
if (missing(	fu_cbcl33	) & 	cbclint_fu_count	>0	)	fu_cbcl33	=	cbclint_fu_mean	.
if (missing(	fu_cbcl37	) & 	cbclint_fu_count	>0	)	fu_cbcl37	=	cbclint_fu_mean	.
if (missing(	fu_cbcl43	) & 	cbclint_fu_count	>0	)	fu_cbcl43	=	cbclint_fu_mean	.
if (missing(	fu_cbcl47	) & 	cbclint_fu_count	>0	)	fu_cbcl47	=	cbclint_fu_mean	.
if (missing(	fu_cbcl68	) & 	cbclint_fu_count	>0	)	fu_cbcl68	=	cbclint_fu_mean	.
if (missing(	fu_cbcl87	) & 	cbclint_fu_count	>0	)	fu_cbcl87	=	cbclint_fu_mean	.
if (missing(	fu_cbcl90	) & 	cbclint_fu_count	>0	)	fu_cbcl90	=	cbclint_fu_mean	.
if (missing(	fu_cbcl1	) & 	cbclint_fu_count	>0	)	fu_cbcl1	=	cbclint_fu_mean	.
if (missing(	fu_cbcl7	) & 	cbclint_fu_count	>0	)	fu_cbcl7	=	cbclint_fu_mean	.
if (missing(	fu_cbcl12	) & 	cbclint_fu_count	>0	)	fu_cbcl12	=	cbclint_fu_mean	.
if (missing(	fu_cbcl19	) & 	cbclint_fu_count	>0	)	fu_cbcl19	=	cbclint_fu_mean	.
if (missing(	fu_cbcl24	) & 	cbclint_fu_count	>0	)	fu_cbcl24	=	cbclint_fu_mean	.
if (missing(	fu_cbcl39	) & 	cbclint_fu_count	>0	)	fu_cbcl39	=	cbclint_fu_mean	.
if (missing(	fu_cbcl45	) & 	cbclint_fu_count	>0	)	fu_cbcl45	=	cbclint_fu_mean	.
if (missing(	fu_cbcl52	) & 	cbclint_fu_count	>0	)	fu_cbcl52	=	cbclint_fu_mean	.
if (missing(	fu_cbcl78	) & 	cbclint_fu_count	>0	)	fu_cbcl78	=	cbclint_fu_mean	.
if (missing(	fu_cbcl86	) & 	cbclint_fu_count	>0	)	fu_cbcl86	=	cbclint_fu_mean	.
if (missing(	fu_cbcl93	) & 	cbclint_fu_count	>0	)	fu_cbcl93	=	cbclint_fu_mean	.
if (missing(	fu_cbcl2	) & 	cbclint_fu_count	>0	)	fu_cbcl2	=	cbclint_fu_mean	.
if (missing(	fu_cbcl4	) & 	cbclint_fu_count	>0	)	fu_cbcl4	=	cbclint_fu_mean	.
if (missing(	fu_cbcl23	) & 	cbclint_fu_count	>0	)	fu_cbcl23	=	cbclint_fu_mean	.
if (missing(	fu_cbcl62	) & 	cbclint_fu_count	>0	)	fu_cbcl62	=	cbclint_fu_mean	.
if (missing(	fu_cbcl67	) & 	cbclint_fu_count	>0	)	fu_cbcl67	=	cbclint_fu_mean	.
if (missing(	fu_cbcl70	) & 	cbclint_fu_count	>0	)	fu_cbcl70	=	cbclint_fu_mean	.
if (missing(	fu_cbcl71	) & 	cbclint_fu_count	>0	)	fu_cbcl71	=	cbclint_fu_mean	.
if (missing(	fu_cbcl98	) & 	cbclint_fu_count	>0	)	fu_cbcl98	=	cbclint_fu_mean	.
EXECUTE.


* Now calculate total .


COMPUTE cbclext_pre_total=sum(precbcl5,precbcl6,precbcl56,precbcl59,precbcl95, precbcl8, precbcl15,precbcl16,precbcl18,
                precbcl20,precbcl27,precbcl29,precbcl35,precbcl40,precbcl42,precbcl44,precbcl53,
                precbcl58,precbcl66,precbcl69,precbcl81,precbcl85,precbcl88,precbcl96).
COMPUTE cbclext_post_total=sum(post_cbcl5,post_cbcl6,post_cbcl56,post_cbcl59,post_cbcl95, post_cbcl8, post_cbcl15,post_cbcl16,post_cbcl18,
                post_cbcl20,post_cbcl27,post_cbcl29,post_cbcl35,post_cbcl40,post_cbcl42,post_cbcl44,post_cbcl53,
                post_cbcl58,post_cbcl66,post_cbcl69,post_cbcl81,post_cbcl85,post_cbcl88,post_cbcl96).
COMPUTE cbclext_fu_total=sum(fu_cbcl5,fu_cbcl6,fu_cbcl56,fu_cbcl59,fu_cbcl95, fu_cbcl8, fu_cbcl15,fu_cbcl16,fu_cbcl18,
                fu_cbcl20,fu_cbcl27,fu_cbcl29,fu_cbcl35,fu_cbcl40,fu_cbcl42,fu_cbcl44,fu_cbcl53,
                fu_cbcl58,fu_cbcl66,fu_cbcl69,fu_cbcl81,fu_cbcl85,fu_cbcl88,fu_cbcl96).

COMPUTE cbclint_pre_total=sum(precbcl21,precbcl46,precbcl51,precbcl79,precbcl82,precbcl83,precbcl92,precbcl97,
                precbcl99,precbcl10,precbcl33,precbcl37,precbcl43,precbcl47,precbcl68,precbcl87,
                precbcl90,precbcl1,precbcl7,precbcl12,precbcl19,precbcl24,precbcl39,precbcl45,
                precbcl52,precbcl78,precbcl86,precbcl93,precbcl2,precbcl4,precbcl23,precbcl62,
                precbcl67,precbcl70,precbcl71,precbcl98).
COMPUTE cbclint_post_total=sum(post_cbcl21,post_cbcl46,post_cbcl51,post_cbcl79,post_cbcl82,post_cbcl83,post_cbcl92,post_cbcl97,
                post_cbcl99,post_cbcl10,post_cbcl33,post_cbcl37,post_cbcl43,post_cbcl47,post_cbcl68,post_cbcl87,
                post_cbcl90,post_cbcl1,post_cbcl7,post_cbcl12,post_cbcl19,post_cbcl24,post_cbcl39,post_cbcl45,
                post_cbcl52,post_cbcl78,post_cbcl86,post_cbcl93,post_cbcl2,post_cbcl4,post_cbcl23,post_cbcl62,
                post_cbcl67,post_cbcl70,post_cbcl71,post_cbcl98).
COMPUTE cbclint_fu_total=sum(fu_cbcl21,fu_cbcl46,fu_cbcl51,fu_cbcl79,fu_cbcl82,fu_cbcl83,fu_cbcl92,fu_cbcl97,
                fu_cbcl99,fu_cbcl10,fu_cbcl33,fu_cbcl37,fu_cbcl43,fu_cbcl47,fu_cbcl68,fu_cbcl87,
                fu_cbcl90,fu_cbcl1,fu_cbcl7,fu_cbcl12,fu_cbcl19,fu_cbcl24,fu_cbcl39,fu_cbcl45,
                fu_cbcl52,fu_cbcl78,fu_cbcl86,fu_cbcl93,fu_cbcl2,fu_cbcl4,fu_cbcl23,fu_cbcl62,
                fu_cbcl67,fu_cbcl70,fu_cbcl71,fu_cbcl98).
EXECUTE.

*** Adding in CCQ recoding.
* 1. reverse code items that need it. (Already done) .
* 2. caculate the mean for each subscale.
* 3. replace missing values with mean, unless all are missing then it's jst missing.
* This is the same process as the CBCL above.

* add in subscales for TOPSE empathy and TOPSE emotion.
*Pre_TOPSE_empathy=  preCCQA1 + preCCQA2 +  preCCQA3 +  preCCQA4 +  preCCQA5 +  preCCQA6 
*Pre_TOPSE_emotion = preCCQA7 +  preCCQA8 +  preCCQA9 +  preCCQA10 + preCCQA11 +  preCCQA12_R. .


* 2. calculated means.

DATASET ACTIVATE DataSet1.
COMPUTE pre_CCQ_A_TOPSE_mean =mean(preCCQA1, preCCQA2,  preCCQA3,  preCCQA4, preCCQA5,  preCCQA6, preCCQA7,  preCCQA8,  
    preCCQA9,  preCCQA10, preCCQA11, preCCQA12_R).
COMPUTE post_CCQ_A_TOPSE_mean =mean(post_CCQA1, post_CCQA2,  post_CCQA3,  post_CCQA4, post_CCQA5,  post_CCQA6, post_CCQA7,  
    post_CCQA8,  post_CCQA9,  post_CCQA10, post_CCQA11, post_CCQA12_R).
COMPUTE fu_CCQ_A_TOPSE_mean =mean(fu_CCQA1, fu_CCQA2,  fu_CCQA3,  fu_CCQA4, fu_CCQA5,  fu_CCQA6, fu_CCQA7,  
fu_CCQA8,  fu_CCQA9,  fu_CCQA10, fu_CCQA11, fu_CCQA12_R).
Execute.




* Count the number of valid items.
* If all items are missing, don't replace the indiviudal ones with the mean.
* Those are jus missing values. 

compute	ccq_count_pre	=0	.							
if	~missing(	preCCQA1	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQA2	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQA3	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQA4	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQA5	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQA6	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQA7	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQA8	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQA9	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQA10	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQA11	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQA12_R)	ccq_count_pre	=	ccq_count_pre             +	1	.

compute	ccq_count_post	=0	.						
if	~missing(	post_CCQA1	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQA2	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQA3	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQA4	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQA5	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQA6	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQA7	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQA8	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQA9	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQA10	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQA11	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQA12_R	)	ccq_count_post	=	ccq_count_post	+	1	.
compute	ccq_count_fu	=0	.						
if	~missing(	FU_CCQA1	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQA2	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQA3	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQA4	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQA5	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQA6	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQA7	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQA8	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQA9	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQA10	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQA11	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQA12_R	)	ccq_count_fu	=	ccq_count_fu	+	1	.







if (missing(	preCCQA1	) & 	ccq_count_pre	>0	)	preCCQA1	=	pre_CCQ_A_TOPSE_mean	.
if (missing(	preCCQA2	) & 	ccq_count_pre	>0	)	preCCQA2	=	pre_CCQ_A_TOPSE_mean	.
if (missing(	preCCQA3	) & 	ccq_count_pre	>0	)	preCCQA3	=	pre_CCQ_A_TOPSE_mean	.
if (missing(	preCCQA4	) & 	ccq_count_pre	>0	)	preCCQA4	=	pre_CCQ_A_TOPSE_mean	.
if (missing(	preCCQA5	) & 	ccq_count_pre	>0	)	preCCQA5	=	pre_CCQ_A_TOPSE_mean	.
if (missing(	preCCQA6	) & 	ccq_count_pre	>0	)	preCCQA6	=	pre_CCQ_A_TOPSE_mean	.
if (missing(	preCCQA7	) & 	ccq_count_pre	>0	)	preCCQA7	=	pre_CCQ_A_TOPSE_mean	.
if (missing(	preCCQA8	) & 	ccq_count_pre	>0	)	preCCQA8	=	pre_CCQ_A_TOPSE_mean	.
if (missing(	preCCQA9	) & 	ccq_count_pre	>0	)	preCCQA9	=	pre_CCQ_A_TOPSE_mean	.
if (missing(	preCCQA10	) & 	ccq_count_pre	>0	)	preCCQA10	=	pre_CCQ_A_TOPSE_mean	.
if (missing(	preCCQA11	) & 	ccq_count_pre	>0	)	preCCQA11	=	pre_CCQ_A_TOPSE_mean	.
if (missing(	preCCQA12_R	) & 	ccq_count_pre	>0	)	preCCQA12_R	=	pre_CCQ_A_TOPSE_mean	.

if (missing(	post_CCQA1	) & 	ccq_count_post	>0	)	post_CCQA1	=	post_CCQ_A_TOPSE_mean	.
if (missing(	post_CCQA2	) & 	ccq_count_post	>0	)	post_CCQA2	=	post_CCQ_A_TOPSE_mean	.
if (missing(	post_CCQA3	) & 	ccq_count_post	>0	)	post_CCQA3	=	post_CCQ_A_TOPSE_mean	.
if (missing(	post_CCQA4	) & 	ccq_count_post	>0	)	post_CCQA4	=	post_CCQ_A_TOPSE_mean	.
if (missing(	post_CCQA5	) & 	ccq_count_post	>0	)	post_CCQA5	=	post_CCQ_A_TOPSE_mean	.
if (missing(	post_CCQA6	) & 	ccq_count_post	>0	)	post_CCQA6	=	post_CCQ_A_TOPSE_mean	.
if (missing(	post_CCQA7	) & 	ccq_count_post	>0	)	post_CCQA7	=	post_CCQ_A_TOPSE_mean	.
if (missing(	post_CCQA8	) & 	ccq_count_post	>0	)	post_CCQA8	=	post_CCQ_A_TOPSE_mean	.
if (missing(	post_CCQA9	) & 	ccq_count_post	>0	)	post_CCQA9	=	post_CCQ_A_TOPSE_mean	.
if (missing(	post_CCQA10	) & 	ccq_count_post	>0	)	post_CCQA10	=	post_CCQ_A_TOPSE_mean	.
if (missing(	post_CCQA11	) & 	ccq_count_post	>0	)	post_CCQA11	=	post_CCQ_A_TOPSE_mean	.
if (missing(	post_CCQA12_R	) & 	ccq_count_post	>0	)	post_CCQA12_R	=	post_CCQ_A_TOPSE_mean	.

if (missing(	FU_CCQA1	) & 	ccq_count_fu	>0	)	FU_CCQA1	=	fu_CCQ_A_TOPSE_mean	.
if (missing(	FU_CCQA2	) & 	ccq_count_fu	>0	)	FU_CCQA2	=	fu_CCQ_A_TOPSE_mean	.
if (missing(	FU_CCQA3	) & 	ccq_count_fu	>0	)	FU_CCQA3	=	fu_CCQ_A_TOPSE_mean	.
if (missing(	FU_CCQA4	) & 	ccq_count_fu	>0	)	FU_CCQA4	=	fu_CCQ_A_TOPSE_mean	.
if (missing(	FU_CCQA5	) & 	ccq_count_fu	>0	)	FU_CCQA5	=	fu_CCQ_A_TOPSE_mean	.
if (missing(	FU_CCQA6	) & 	ccq_count_fu	>0	)	FU_CCQA6	=	fu_CCQ_A_TOPSE_mean	.
if (missing(	FU_CCQA7	) & 	ccq_count_fu	>0	)	FU_CCQA7	=	fu_CCQ_A_TOPSE_mean	.
if (missing(	FU_CCQA8	) & 	ccq_count_fu	>0	)	FU_CCQA8	=	fu_CCQ_A_TOPSE_mean	.
if (missing(	FU_CCQA9	) & 	ccq_count_fu	>0	)	FU_CCQA9	=	fu_CCQ_A_TOPSE_mean	.
if (missing(	FU_CCQA10	) & 	ccq_count_fu	>0	)	FU_CCQA10	=	fu_CCQ_A_TOPSE_mean	.
if (missing(	FU_CCQA11	) & 	ccq_count_fu	>0	)	FU_CCQA11	=	fu_CCQ_A_TOPSE_mean	.
if (missing(	FU_CCQA12_R	) & 	ccq_count_fu	>0	)	FU_CCQA12_R	=	fu_CCQ_A_TOPSE_mean	.

execute.

** Need to compute Sum not MEAN .
* Compute subscale mean.
 * COMPUTE pre_CCQ_A_TOPSE_mean =mean(preCCQA1, preCCQA2,  preCCQA3,  preCCQA4, preCCQA5,  preCCQA6, preCCQA7,  preCCQA8,  
    preCCQA9,  preCCQA10, preCCQA11, preCCQA12_R).
 * COMPUTE post_CCQ_A_TOPSE_mean =mean(post_CCQA1, post_CCQA2,  post_CCQA3,  post_CCQA4, post_CCQA5,  post_CCQA6, post_CCQA7,  
    post_CCQA8,  post_CCQA9,  post_CCQA10, post_CCQA11, post_CCQA12_R).
 * COMPUTE fu_CCQ_A_TOPSE_mean =mean(fu_CCQA1, fu_CCQA2,  fu_CCQA3,  fu_CCQA4, fu_CCQA5,  fu_CCQA6, fu_CCQA7,  
fu_CCQA8,  fu_CCQA9,  fu_CCQA10, fu_CCQA11, fu_CCQA12_R).
 * Execute.


* Compute subscale Sum.
COMPUTE pre_CCQ_A_TOPSE_sum =sum(preCCQA1, preCCQA2,  preCCQA3,  preCCQA4, preCCQA5,  preCCQA6, preCCQA7,  preCCQA8,  
    preCCQA9,  preCCQA10, preCCQA11, preCCQA12_R).
COMPUTE post_CCQ_A_TOPSE_sum =sum(post_CCQA1, post_CCQA2,  post_CCQA3,  post_CCQA4, post_CCQA5,  post_CCQA6, post_CCQA7,  
    post_CCQA8,  post_CCQA9,  post_CCQA10, post_CCQA11, post_CCQA12_R).
COMPUTE fu_CCQ_A_TOPSE_sum =sum(fu_CCQA1, fu_CCQA2,  fu_CCQA3,  fu_CCQA4, fu_CCQA5,  fu_CCQA6, fu_CCQA7,  
fu_CCQA8,  fu_CCQA9,  fu_CCQA10, fu_CCQA11, fu_CCQA12_R).
Execute.


********************************************************************* TOPSE Empathy .
* Empathy means .
DATASET ACTIVATE DataSet1.
COMPUTE pre_TOPSE_Empathy_mean =mean(preCCQA1, preCCQA2,  preCCQA3,  preCCQA4, preCCQA5,  preCCQA6).
COMPUTE post_TOPSE_Empathy_mean =mean(post_CCQA1, post_CCQA2,  post_CCQA3,  post_CCQA4, post_CCQA5,  post_CCQA6).
COMPUTE fu_TOPSE_Empathy_mean  =mean(fu_CCQA1, fu_CCQA2,  fu_CCQA3,  fu_CCQA4, fu_CCQA5,  fu_CCQA6).
Execute.



* Count the number of valid items.
* If all items are missing, don't replace the indiviudal ones with the mean.
* Those are jus missing values. 

compute	ccq_count_pre	=0	.							
if	~missing(	preCCQA1	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQA2	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQA3	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQA4	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQA5	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQA6	)	ccq_count_pre	=	ccq_count_pre	+	1	.

compute	ccq_count_post	=0	.						
if	~missing(	post_CCQA1	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQA2	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQA3	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQA4	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQA5	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQA6	)	ccq_count_post	=	ccq_count_post	+	1	.

compute	ccq_count_fu	=0	.						
if	~missing(	FU_CCQA1	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQA2	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQA3	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQA4	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQA5	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQA6	)	ccq_count_fu	=	ccq_count_fu	+	1	.


if (missing(	preCCQA1	) & 	ccq_count_pre	>0	)	preCCQA1	=	pre_TOPSE_Empathy_mean 	.
if (missing(	preCCQA2	) & 	ccq_count_pre	>0	)	preCCQA2	=	pre_TOPSE_Empathy_mean 	.
if (missing(	preCCQA3	) & 	ccq_count_pre	>0	)	preCCQA3	=	pre_TOPSE_Empathy_mean 	.
if (missing(	preCCQA4	) & 	ccq_count_pre	>0	)	preCCQA4	=	pre_TOPSE_Empathy_mean 	.
if (missing(	preCCQA5	) & 	ccq_count_pre	>0	)	preCCQA5	=	pre_TOPSE_Empathy_mean 	.
if (missing(	preCCQA6	) & 	ccq_count_pre	>0	)	preCCQA6	=	pre_TOPSE_Empathy_mean 	.

if (missing(	post_CCQA1	) & 	ccq_count_post	>0	)	post_CCQA1	=	post_TOPSE_Empathy_mean	.
if (missing(	post_CCQA2	) & 	ccq_count_post	>0	)	post_CCQA2	=	post_TOPSE_Empathy_mean	.
if (missing(	post_CCQA3	) & 	ccq_count_post	>0	)	post_CCQA3	=	post_TOPSE_Empathy_mean	.
if (missing(	post_CCQA4	) & 	ccq_count_post	>0	)	post_CCQA4	=	post_TOPSE_Empathy_mean	.
if (missing(	post_CCQA5	) & 	ccq_count_post	>0	)	post_CCQA5	=	post_TOPSE_Empathy_mean	.
if (missing(	post_CCQA6	) & 	ccq_count_post	>0	)	post_CCQA6	=	post_TOPSE_Empathy_mean	.

if (missing(	FU_CCQA1	) & 	ccq_count_fu	>0	)	FU_CCQA1	=	fu_TOPSE_Empathy_mean	.
if (missing(	FU_CCQA2	) & 	ccq_count_fu	>0	)	FU_CCQA2	=	fu_TOPSE_Empathy_mean	.
if (missing(	FU_CCQA3	) & 	ccq_count_fu	>0	)	FU_CCQA3	=	fu_TOPSE_Empathy_mean	.
if (missing(	FU_CCQA4	) & 	ccq_count_fu	>0	)	FU_CCQA4	=	fu_TOPSE_Empathy_mean	.
if (missing(	FU_CCQA5	) & 	ccq_count_fu	>0	)	FU_CCQA5	=	fu_TOPSE_Empathy_mean	.
if (missing(	FU_CCQA6	) & 	ccq_count_fu	>0	)	FU_CCQA6	=	fu_TOPSE_Empathy_mean	.
execute.



* Compute subscale Sum.
COMPUTE pre_TOPSE_Empathy_sum =sum(preCCQA1, preCCQA2,  preCCQA3,  preCCQA4, preCCQA5,  preCCQA6).
COMPUTE post_TOPSE_Empathy_sum =sum(post_CCQA1, post_CCQA2,  post_CCQA3,  post_CCQA4, post_CCQA5,  post_CCQA6).
COMPUTE fu_TOPSE_Empathy_sum =sum(fu_CCQA1, fu_CCQA2,  fu_CCQA3,  fu_CCQA4, fu_CCQA5,  fu_CCQA6).
Execute.





********************************************************************* TOPSE Emotion .
* Emotion means .
DATASET ACTIVATE DataSet1.
COMPUTE pre_TOPSE_Emotion_mean =mean(preCCQA7,  preCCQA8, preCCQA9,  preCCQA10, preCCQA11, preCCQA12_R).
COMPUTE post_TOPSE_Emotion_mean =mean( post_CCQA7,  post_CCQA8,  post_CCQA9,  post_CCQA10, post_CCQA11, post_CCQA12_R).
COMPUTE fu_TOPSE_Emotion_mean  =mean(fu_CCQA7, fu_CCQA8,  fu_CCQA9,  fu_CCQA10, fu_CCQA11, fu_CCQA12_R).
Execute.



* Count the number of valid items.
* If all items are missing, don't replace the indiviudal ones with the mean.
* Those are jus missing values. 

compute	ccq_count_pre	=0	.							
if	~missing(	preCCQA7	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQA8	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQA9	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQA10	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQA11	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQA12_R)	ccq_count_pre	=	ccq_count_pre             +	1	.

compute	ccq_count_post	=0	.						
if	~missing(	post_CCQA7	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQA8	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQA9	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQA10	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQA11	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQA12_R	)	ccq_count_post	=	ccq_count_post	+	1	.
compute	ccq_count_fu	=0	.						
if	~missing(	FU_CCQA7	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQA8	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQA9	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQA10	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQA11	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQA12_R	)	ccq_count_fu	=	ccq_count_fu	+	1	.

if (missing(	preCCQA7	) & 	ccq_count_pre	>0	)	preCCQA7	=	pre_TOPSE_Emotion_mean	.
if (missing(	preCCQA8	) & 	ccq_count_pre	>0	)	preCCQA8	=	pre_TOPSE_Emotion_mean	.
if (missing(	preCCQA9	) & 	ccq_count_pre	>0	)	preCCQA9	=	pre_TOPSE_Emotion_mean	.
if (missing(	preCCQA10	) & 	ccq_count_pre	>0	)	preCCQA10	=	pre_TOPSE_Emotion_mean	.
if (missing(	preCCQA11	) & 	ccq_count_pre	>0	)	preCCQA11	=	pre_TOPSE_Emotion_mean	.
if (missing(	preCCQA12_R	) & 	ccq_count_pre	>0	)	preCCQA12_R	=	pre_TOPSE_Emotion_mean	.

if (missing(	post_CCQA7	) & 	ccq_count_post	>0	)	post_CCQA7	=	post_TOPSE_Emotion_mean	.
if (missing(	post_CCQA8	) & 	ccq_count_post	>0	)	post_CCQA8	=	post_TOPSE_Emotion_mean	.
if (missing(	post_CCQA9	) & 	ccq_count_post	>0	)	post_CCQA9	=	post_TOPSE_Emotion_mean	.
if (missing(	post_CCQA10	) & 	ccq_count_post	>0	)	post_CCQA10	=	post_TOPSE_Emotion_mean	.
if (missing(	post_CCQA11	) & 	ccq_count_post	>0	)	post_CCQA11	=	post_TOPSE_Emotion_mean	.
if (missing(	post_CCQA12_R	) & 	ccq_count_post	>0	)	post_CCQA12_R	=	post_TOPSE_Emotion_mean	.

if (missing(	FU_CCQA7	) & 	ccq_count_fu	>0	)	FU_CCQA7	=	fu_TOPSE_Emotion_mean	.
if (missing(	FU_CCQA8	) & 	ccq_count_fu	>0	)	FU_CCQA8	=	fu_TOPSE_Emotion_mean	.
if (missing(	FU_CCQA9	) & 	ccq_count_fu	>0	)	FU_CCQA9	=	fu_TOPSE_Emotion_mean	.
if (missing(	FU_CCQA10	) & 	ccq_count_fu	>0	)	FU_CCQA10	=	fu_TOPSE_Emotion_mean	.
if (missing(	FU_CCQA11	) & 	ccq_count_fu	>0	)	FU_CCQA11	=	fu_TOPSE_Emotion_mean	.
if (missing(	FU_CCQA12_R	) & 	ccq_count_fu	>0	)	FU_CCQA12_R	=	fu_TOPSE_Emotion_mean	.

execute.



* Compute subscale Sum.
COMPUTE pre_TOPSE_Emotion_sum =sum(preCCQA7,  preCCQA8,  preCCQA9,  preCCQA10, preCCQA11, preCCQA12_R).
COMPUTE post_TOPSE_Emotion_sum =sum(post_CCQA7,  post_CCQA8,  post_CCQA9,  post_CCQA10, post_CCQA11, post_CCQA12_R).
COMPUTE fu_TOPSE_Emotion_sum =sum(fu_CCQA7, fu_CCQA8,  fu_CCQA9,  fu_CCQA10, fu_CCQA11, fu_CCQA12_R).
Execute.







* Caregiving Helplessness (CCQ as well) .


DATASET ACTIVATE DataSet1.
COMPUTE pre_CHQ_sum=preCCQD1+preCCQD2 +preCCQD3+ preCCQD4 + preCCQD5 + preCCQD6 +preCCQD7.
COMPUTE pre_CHQ_mean=mean(preCCQD1,preCCQD2 ,preCCQD3,
preCCQD4 ,preCCQD5 ,preCCQD6 ,preCCQD7).
COMPUTE pre_CHQ_sum=sum(preCCQD1,preCCQD2 ,preCCQD3,
preCCQD4 ,preCCQD5 ,preCCQD6 ,preCCQD7).
COMPUTE post_CHQ_mean =mean(post_CCQD1,post_CCQD2 ,post_CCQD3,
post_CCQD4 ,post_CCQD5 ,post_CCQD6 ,post_CCQD7).
COMPUTE fu_CHQ_mean =mean(fu_CCQD1,fu_CCQD2 ,fu_CCQD3,
fu_CCQD4 ,fu_CCQD5 ,fu_CCQD6 ,fu_CCQD7).
Execute.

compute	ccq_count_pre	=0	.						
if	~missing(	preCCQD1	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQD2	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQD3	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQD4	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQD5	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQD6	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQD7	)	ccq_count_pre	=	ccq_count_pre	+	1	.
compute	ccq_count_post	=0	.						
if	~missing(	post_CCQD1	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQD2	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQD3	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQD4	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQD5	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQD6	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQD7	)	ccq_count_post	=	ccq_count_post	+	1	.
compute	ccq_count_fu	=0	.						
if	~missing(	FU_CCQD1	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQD2	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQD3	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQD4	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQD5	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQD6	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQD7	)	ccq_count_fu	=	ccq_count_fu	+	1	.


execute.



if (missing(	preCCQD1	) & 	ccq_count_pre	>0	)	preCCQD1	=	pre_CHQ_mean	.
if (missing(	preCCQD2	) & 	ccq_count_pre	>0	)	preCCQD2	=	pre_CHQ_mean	.
if (missing(	preCCQD3	) & 	ccq_count_pre	>0	)	preCCQD3	=	pre_CHQ_mean	.
if (missing(	preCCQD4	) & 	ccq_count_pre	>0	)	preCCQD4	=	pre_CHQ_mean	.
if (missing(	preCCQD5	) & 	ccq_count_pre	>0	)	preCCQD5	=	pre_CHQ_mean	.
if (missing(	preCCQD6	) & 	ccq_count_pre	>0	)	preCCQD6	=	pre_CHQ_mean	.
if (missing(	preCCQD7	) & 	ccq_count_pre	>0	)	preCCQD7	=	pre_CHQ_mean	.

if (missing(	post_CCQD1	) & 	ccq_count_post	>0	)	post_CCQD1	=	post_CHQ_mean	.
if (missing(	post_CCQD2	) & 	ccq_count_post	>0	)	post_CCQD2	=	post_CHQ_mean	.
if (missing(	post_CCQD3	) & 	ccq_count_post	>0	)	post_CCQD3	=	post_CHQ_mean	.
if (missing(	post_CCQD4	) & 	ccq_count_post	>0	)	post_CCQD4	=	post_CHQ_mean	.
if (missing(	post_CCQD5	) & 	ccq_count_post	>0	)	post_CCQD5	=	post_CHQ_mean	.
if (missing(	post_CCQD6	) & 	ccq_count_post	>0	)	post_CCQD6	=	post_CHQ_mean	.
if (missing(	post_CCQD7	) & 	ccq_count_post	>0	)	post_CCQD7	=	post_CHQ_mean	.

if (missing(	FU_CCQD1	) & 	ccq_count_fu	>0	)	FU_CCQD1	=	fu_CHQ_mean	.
if (missing(	FU_CCQD2	) & 	ccq_count_fu	>0	)	FU_CCQD2	=	fu_CHQ_mean	.
if (missing(	FU_CCQD3	) & 	ccq_count_fu	>0	)	FU_CCQD3	=	fu_CHQ_mean	.
if (missing(	FU_CCQD4	) & 	ccq_count_fu	>0	)	FU_CCQD4	=	fu_CHQ_mean	.
if (missing(	FU_CCQD5	) & 	ccq_count_fu	>0	)	FU_CCQD5	=	fu_CHQ_mean	.
if (missing(	FU_CCQD6	) & 	ccq_count_fu	>0	)	FU_CCQD6	=	fu_CHQ_mean	.
if (missing(	FU_CCQD7	) & 	ccq_count_fu	>0	)	FU_CCQD7	=	fu_CHQ_mean	.
 execute.

* Need to compute SUM not MEAN.
* Compute mean.
 * COMPUTE pre_CHQD_mean =mean(preCCQD1,preCCQD2 ,preCCQD3,
preCCQD4 ,preCCQD5 ,preCCQD6 ,preCCQD7).
 * COMPUTE post_CHQD_mean =mean(post_CCQD1,post_CCQD2 ,post_CCQD3,
post_CCQD4 ,post_CCQD5 ,post_CCQD6 ,post_CCQD7).
 * COMPUTE fu_CHQD_mean =mean(fu_CCQD1,fu_CCQD2 ,fu_CCQD3,
fu_CCQD4 ,fu_CCQD5 ,fu_CCQD6 ,fu_CCQD7).
 * Execute.


* Compute sum.
COMPUTE pre_CHQD_sum =sum(preCCQD1,preCCQD2 ,preCCQD3,
preCCQD4 ,preCCQD5 ,preCCQD6 ,preCCQD7).
COMPUTE post_CHQD_sum =sum(post_CCQD1,post_CCQD2 ,post_CCQD3,
post_CCQD4 ,post_CCQD5 ,post_CCQD6 ,post_CCQD7).
COMPUTE fu_CHQD_sum =sum(fu_CCQD1,fu_CCQD2 ,fu_CCQD3,
fu_CCQD4 ,fu_CCQD5 ,fu_CCQD6 ,fu_CCQD7).
Execute.


* Hostile Parenting .
COMPUTE pre_CCQ_mean =mean(preCCQC1,preCCQC2 ,preCCQC3,
preCCQC4 ,preCCQC5).
COMPUTE post_CCQ_mean =mean(post_CCQC1,post_CCQC2 ,post_CCQC3,
post_CCQC4 ,post_CCQC5).
COMPUTE fu_CCQ_mean =mean(fu_CCQC1,fu_CCQC2 ,fu_CCQC3,
fu_CCQC4 ,fu_CCQC5).

compute	ccq_count_pre	 =0	.						
if	~missing(	preCCQC1	)	ccq_count_pre	=	preCCQC1	+	1	.
if	~missing(	preCCQC2	)	ccq_count_pre	=	preCCQC2	+	1	.
if	~missing(	preCCQC3	)	ccq_count_pre	=	preCCQC3	+	1	.
if	~missing(	preCCQC4	)	ccq_count_pre	=	preCCQC4	+	1	.
if	~missing(	preCCQC5	)	ccq_count_pre	=	preCCQC5	+	1	.
compute	ccq_count_post	 =0	.						
if	~missing(	post_CCQC1	)	ccq_count_post	=	post_CCQC1	+	1	.
if	~missing(	post_CCQC2	)	ccq_count_post	=	post_CCQC2	+	1	.
if	~missing(	post_CCQC3	)	ccq_count_post	=	post_CCQC3	+	1	.
if	~missing(	post_CCQC4	)	ccq_count_post	=	post_CCQC4	+	1	.
if	~missing(	post_CCQC5	)	ccq_count_post	=	post_CCQC5	+	1	.
compute	ccq_count_fu	 =0	.						
if	~missing(	FU_CCQC1	)	ccq_count_fu	=	FU_CCQC1	+	1	.
if	~missing(	FU_CCQC2	)	ccq_count_fu	=	FU_CCQC2	+	1	.
if	~missing(	FU_CCQC3	)	ccq_count_fu	=	FU_CCQC3	+	1	.
if	~missing(	FU_CCQC4	)	ccq_count_fu	=	FU_CCQC4	+	1	.
if	~missing(	FU_CCQC5	)	ccq_count_fu	=	FU_CCQC5	+	1	.



if (missing(	preCCQC1	) & 	ccq_count_pre	>0	)	preCCQC1	=	pre_CCQ_mean	.
if (missing(	preCCQC2	) & 	ccq_count_pre	>0	)	preCCQC2	=	pre_CCQ_mean	.
if (missing(	preCCQC3	) & 	ccq_count_pre	>0	)	preCCQC3	=	pre_CCQ_mean	.
if (missing(	preCCQC4	) & 	ccq_count_pre	>0	)	preCCQC4	=	pre_CCQ_mean	.
if (missing(	preCCQC5	) & 	ccq_count_pre	>0	)	preCCQC5	=	pre_CCQ_mean	.
if (missing(	post_CCQC1	) & 	ccq_count_post	>0	)	post_CCQC1	=	post_CCQ_mean	.
if (missing(	post_CCQC2	) & 	ccq_count_post	>0	)	post_CCQC2	=	post_CCQ_mean	.
if (missing(	post_CCQC3	) & 	ccq_count_post	>0	)	post_CCQC3	=	post_CCQ_mean	.
if (missing(	post_CCQC4	) & 	ccq_count_post	>0	)	post_CCQC4	=	post_CCQ_mean	.
if (missing(	post_CCQC5	) & 	ccq_count_post	>0	)	post_CCQC5	=	post_CCQ_mean	.
if (missing(	FU_CCQC1	) & 	ccq_count_fu	>0	)	FU_CCQC1	=	fu_CCQ_mean	.
if (missing(	FU_CCQC2	) & 	ccq_count_fu	>0	)	FU_CCQC2	=	fu_CCQ_mean	.
if (missing(	FU_CCQC3	) & 	ccq_count_fu	>0	)	FU_CCQC3	=	fu_CCQ_mean	.
if (missing(	FU_CCQC4	) & 	ccq_count_fu	>0	)	FU_CCQC4	=	fu_CCQ_mean	.
if (missing(	FU_CCQC5	) & 	ccq_count_fu	>0	)	FU_CCQC5	=	fu_CCQ_mean	.
Execute.

* Need to compute SUM not MEAN.
 * COMPUTE pre_CCQC_mean =mean(preCCQC1,preCCQC2 ,preCCQC3,
preCCQC4 ,preCCQC5).
 * COMPUTE post_CCQC_mean =mean(post_CCQC1,post_CCQC2 ,post_CCQC3,
post_CCQC4 ,post_CCQC5).
 * COMPUTE fu_CCQC_mean =mean(fu_CCQC1,fu_CCQC2 ,fu_CCQC3,
fu_CCQC4 ,fu_CCQC5).


* compute SUM .
COMPUTE pre_CCQC_sum =sum(preCCQC1,preCCQC2 ,preCCQC3,
preCCQC4 ,preCCQC5).
COMPUTE post_CCQC_sum =sum(post_CCQC1,post_CCQC2 ,post_CCQC3,
post_CCQC4 ,post_CCQC5).
COMPUTE fu_CCQC_sum =sum(fu_CCQC1,fu_CCQC2 ,fu_CCQC3,
fu_CCQC4 ,fu_CCQC5).



* Parental Reflectiveness.
Compute pre_CCQ_mean=mean( preCCQE1,	preCCQE2,	preCCQE3,	preCCQE4_R,	preCCQE5,	
    preCCQE6,	preCCQE7,	preCCQE8,	preCCQE9_R,	preCCQE10,	preCCQE11,	preCCQE12,	preCCQE13,	
    preCCQE14_R,	preCCQE15,	preCCQE16,	preCCQE17,	preCCQE18).
Compute post_CCQ_mean=mean( post_CCQE1,	post_CCQE2,	post_CCQE3,	post_CCQE4_R,	post_CCQE5,	
    post_CCQE6,	post_CCQE7,	post_CCQE8,	post_CCQE9_R,	post_CCQE10,	post_CCQE11,	post_CCQE12,	post_CCQE13,	
    post_CCQE14_R,	post_CCQE15,	post_CCQE16,	post_CCQE17,	post_CCQE18).
Compute fu_CCQ_mean=mean( fu_CCQE1,	fu_CCQE2,	fu_CCQE3,	fu_CCQE4_R,	fu_CCQE5,	
    fu_CCQE6,	fu_CCQE7,	fu_CCQE8,	fu_CCQE9_R,	fu_CCQE10,	fu_CCQE11,	fu_CCQE12,	fu_CCQE13,	
    fu_CCQE14_R,	fu_CCQE15,	fu_CCQE16,	fu_CCQE17,	fu_CCQE18).



compute	ccq_count_pre	 =0	.						
if	~missing(	preCCQE1	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQE2	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQE3	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQE4_R	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQE5	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQE6	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQE7	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQE8	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQE9_R	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQE10	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQE11	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQE12	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQE13	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQE14_R	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQE15	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQE16	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQE17	)	ccq_count_pre	=	ccq_count_pre	+	1	.
if	~missing(	preCCQE18	)	ccq_count_pre	=	ccq_count_pre	+	1	.
compute	ccq_count_post	 =0	.						
if	~missing(	post_CCQE1	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQE2	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQE3	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQE4_R	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQE5	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQE6	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQE7	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQE8	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQE9_R	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQE10	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQE11	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQE12	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQE13	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQE14_R	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQE15	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQE16	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQE17	)	ccq_count_post	=	ccq_count_post	+	1	.
if	~missing(	post_CCQE18	)	ccq_count_post	=	ccq_count_post	+	1	.
compute	ccq_count_fu	 =0	.						
if	~missing(	FU_CCQE1	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQE2	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQE3	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQE4_R	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQE5	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQE6	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQE7	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQE8	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQE9_R	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQE10	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQE11	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQE12	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQE13	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQE14_R	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQE15	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQE16	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQE17	)	ccq_count_fu	=	ccq_count_fu	+	1	.
if	~missing(	FU_CCQE18	)	ccq_count_fu	=	ccq_count_fu	+	1	.



if (missing(	preCCQE1	) & 	ccq_count_pre	>0	)	preCCQE1	=	pre_CCQ_mean	.
if (missing(	preCCQE2	) & 	ccq_count_pre	>0	)	preCCQE2	=	pre_CCQ_mean	.
if (missing(	preCCQE3	) & 	ccq_count_pre	>0	)	preCCQE3	=	pre_CCQ_mean	.
if (missing(	preCCQE4_R	) & 	ccq_count_pre	>0	)	preCCQE4_R	=	pre_CCQ_mean	.
if (missing(	preCCQE5	) & 	ccq_count_pre	>0	)	preCCQE5	=	pre_CCQ_mean	.
if (missing(	preCCQE6	) & 	ccq_count_pre	>0	)	preCCQE6	=	pre_CCQ_mean	.
if (missing(	preCCQE7	) & 	ccq_count_pre	>0	)	preCCQE7	=	pre_CCQ_mean	.
if (missing(	preCCQE8	) & 	ccq_count_pre	>0	)	preCCQE8	=	pre_CCQ_mean	.
if (missing(	preCCQE9_R	) & 	ccq_count_pre	>0	)	preCCQE9_R	=	pre_CCQ_mean	.
if (missing(	preCCQE10	) & 	ccq_count_pre	>0	)	preCCQE10	=	pre_CCQ_mean	.
if (missing(	preCCQE11	) & 	ccq_count_pre	>0	)	preCCQE11	=	pre_CCQ_mean	.
if (missing(	preCCQE12	) & 	ccq_count_pre	>0	)	preCCQE12	=	pre_CCQ_mean	.
if (missing(	preCCQE13	) & 	ccq_count_pre	>0	)	preCCQE13	=	pre_CCQ_mean	.
if (missing(	preCCQE14_R	) & 	ccq_count_pre	>0	)	preCCQE14_R	=	pre_CCQ_mean	.
if (missing(	preCCQE15	) & 	ccq_count_pre	>0	)	preCCQE15	=	pre_CCQ_mean	.
if (missing(	preCCQE16	) & 	ccq_count_pre	>0	)	preCCQE16	=	pre_CCQ_mean	.
if (missing(	preCCQE17	) & 	ccq_count_pre	>0	)	preCCQE17	=	pre_CCQ_mean	.
if (missing(	preCCQE18	) & 	ccq_count_pre	>0	)	preCCQE18	=	pre_CCQ_mean	.

if (missing(	post_CCQE1	) & 	ccq_count_post	>0	)	post_CCQE1	=	post_CCQ_mean	.
if (missing(	post_CCQE2	) & 	ccq_count_post	>0	)	post_CCQE2	=	post_CCQ_mean	.
if (missing(	post_CCQE3	) & 	ccq_count_post	>0	)	post_CCQE3	=	post_CCQ_mean	.
if (missing(	post_CCQE4_R	) & 	ccq_count_post	>0	)	post_CCQE4_R	=	post_CCQ_mean	.
if (missing(	post_CCQE5	) & 	ccq_count_post	>0	)	post_CCQE5	=	post_CCQ_mean	.
if (missing(	post_CCQE6	) & 	ccq_count_post	>0	)	post_CCQE6	=	post_CCQ_mean	.
if (missing(	post_CCQE7	) & 	ccq_count_post	>0	)	post_CCQE7	=	post_CCQ_mean	.
if (missing(	post_CCQE8	) & 	ccq_count_post	>0	)	post_CCQE8	=	post_CCQ_mean	.
if (missing(	post_CCQE9_R	) & 	ccq_count_post	>0	)	post_CCQE9_R	=	post_CCQ_mean	.
if (missing(	post_CCQE10	) & 	ccq_count_post	>0	)	post_CCQE10	=	post_CCQ_mean	.
if (missing(	post_CCQE11	) & 	ccq_count_post	>0	)	post_CCQE11	=	post_CCQ_mean	.
if (missing(	post_CCQE12	) & 	ccq_count_post	>0	)	post_CCQE12	=	post_CCQ_mean	.
if (missing(	post_CCQE13	) & 	ccq_count_post	>0	)	post_CCQE13	=	post_CCQ_mean	.
if (missing(	post_CCQE14_R	) & 	ccq_count_post	>0	)	post_CCQE14_R	=	post_CCQ_mean	.
if (missing(	post_CCQE15	) & 	ccq_count_post	>0	)	post_CCQE15	=	post_CCQ_mean	.
if (missing(	post_CCQE16	) & 	ccq_count_post	>0	)	post_CCQE16	=	post_CCQ_mean	.
if (missing(	post_CCQE17	) & 	ccq_count_post	>0	)	post_CCQE17	=	post_CCQ_mean	.
if (missing(	post_CCQE18	) & 	ccq_count_post	>0	)	post_CCQE18	=	post_CCQ_mean	.

if (missing(	FU_CCQE1	) & 	ccq_count_fu	>0	)	FU_CCQE1	=	fu_CCQ_mean	.
if (missing(	FU_CCQE2	) & 	ccq_count_fu	>0	)	FU_CCQE2	=	fu_CCQ_mean	.
if (missing(	FU_CCQE3	) & 	ccq_count_fu	>0	)	FU_CCQE3	=	fu_CCQ_mean	.
if (missing(	FU_CCQE4_R	) & 	ccq_count_fu	>0	)	FU_CCQE4_R	=	fu_CCQ_mean	.
if (missing(	FU_CCQE5	) & 	ccq_count_fu	>0	)	FU_CCQE5	=	fu_CCQ_mean	.
if (missing(	FU_CCQE6	) & 	ccq_count_fu	>0	)	FU_CCQE6	=	fu_CCQ_mean	.
if (missing(	FU_CCQE7	) & 	ccq_count_fu	>0	)	FU_CCQE7	=	fu_CCQ_mean	.
if (missing(	FU_CCQE8	) & 	ccq_count_fu	>0	)	FU_CCQE8	=	fu_CCQ_mean	.
if (missing(	FU_CCQE9_R	) & 	ccq_count_fu	>0	)	FU_CCQE9_R	=	fu_CCQ_mean	.
if (missing(	FU_CCQE10	) & 	ccq_count_fu	>0	)	FU_CCQE10	=	fu_CCQ_mean	.
if (missing(	FU_CCQE11	) & 	ccq_count_fu	>0	)	FU_CCQE11	=	fu_CCQ_mean	.
if (missing(	FU_CCQE12	) & 	ccq_count_fu	>0	)	FU_CCQE12	=	fu_CCQ_mean	.
if (missing(	FU_CCQE13	) & 	ccq_count_fu	>0	)	FU_CCQE13	=	fu_CCQ_mean	.
if (missing(	FU_CCQE14_R	) & 	ccq_count_fu	>0	)	FU_CCQE14_R	=	fu_CCQ_mean	.
if (missing(	FU_CCQE15	) & 	ccq_count_fu	>0	)	FU_CCQE15	=	fu_CCQ_mean	.
if (missing(	FU_CCQE16	) & 	ccq_count_fu	>0	)	FU_CCQE16	=	fu_CCQ_mean	.
if (missing(	FU_CCQE17	) & 	ccq_count_fu	>0	)	FU_CCQE17	=	fu_CCQ_mean	.
if (missing(	FU_CCQE18	) & 	ccq_count_fu	>0	)	FU_CCQE18	=	fu_CCQ_mean	.



* Need to compute SUM not MEAN.
 * Compute pre_CCQE_mean=mean( preCCQE1,	preCCQE2,	preCCQE3,	preCCQE4_R,	preCCQE5,	
    preCCQE6,	preCCQE7,	preCCQE8,	preCCQE9_R,	preCCQE10,	preCCQE11,	preCCQE12,	preCCQE13,	
    preCCQE14_R,	preCCQE15,	preCCQE16,	preCCQE17,	preCCQE18).
 * Compute post_CCQE_mean=mean( post_CCQE1,	post_CCQE2,	post_CCQE3,	post_CCQE4_R,	post_CCQE5,	
    post_CCQE6,	post_CCQE7,	post_CCQE8,	post_CCQE9_R,	post_CCQE10,	post_CCQE11,	post_CCQE12,	post_CCQE13,	
    post_CCQE14_R,	post_CCQE15,	post_CCQE16,	post_CCQE17,	post_CCQE18).
 * Compute fu_CCQE_mean=mean( fu_CCQE1,	fu_CCQE2,	fu_CCQE3,	fu_CCQE4_R,	fu_CCQE5,	
    fu_CCQE6,	fu_CCQE7,	fu_CCQE8,	fu_CCQE9_R,	fu_CCQE10,	fu_CCQE11,	fu_CCQE12,	fu_CCQE13,	
    fu_CCQE14_R,	fu_CCQE15,	fu_CCQE16,	fu_CCQE17,	fu_CCQE18).
 * execute.

* Compute sum.
Compute pre_CCQE_sum=sum( preCCQE1,	preCCQE2,	preCCQE3,	preCCQE4_R,	preCCQE5,	
    preCCQE6,	preCCQE7,	preCCQE8,	preCCQE9_R,	preCCQE10,	preCCQE11,	preCCQE12,	preCCQE13,	
    preCCQE14_R,	preCCQE15,	preCCQE16,	preCCQE17,	preCCQE18).
Compute post_CCQE_sum=sum( post_CCQE1,	post_CCQE2,	post_CCQE3,	post_CCQE4_R,	post_CCQE5,	
    post_CCQE6,	post_CCQE7,	post_CCQE8,	post_CCQE9_R,	post_CCQE10,	post_CCQE11,	post_CCQE12,	post_CCQE13,	
    post_CCQE14_R,	post_CCQE15,	post_CCQE16,	post_CCQE17,	post_CCQE18).
Compute fu_CCQE_sum=sum( fu_CCQE1,	fu_CCQE2,	fu_CCQE3,	fu_CCQE4_R,	fu_CCQE5,	
    fu_CCQE6,	fu_CCQE7,	fu_CCQE8,	fu_CCQE9_R,	fu_CCQE10,	fu_CCQE11,	fu_CCQE12,	fu_CCQE13,	
    fu_CCQE14_R,	fu_CCQE15,	fu_CCQE16,	fu_CCQE17,	fu_CCQE18).
execute.





**********************************************************************************************************************************************************.
*BITSEA.
**********************************************************************************************************************************************************.

alter type post_bitsea_pf41(f8.0) .
missing values preBITSEA_PF1 to preBITSEA_PF42(888,999,9999).
missing values fu_BITSEA_PF1 to fu_BITSEA_PF42(888,999,9999).
missing values post_BITSEA_PF1 to post_BITSEA_PF8(888,999,9999).
missing values post_BITSEA_PF9 to post_BITSEA_PF36(888,999,9999).
missing values post_BITSEA_PF37 (888,999,9999).
missing values post_BITSEA_PF38 to post_BITSEA_PF41(888,999,9999).
missing values post_BITSEA_PF42 (888,999,9999).
RECODE preBITSEA_PF1 preBITSEA_PF2 preBITSEA_PF3 preBITSEA_PF4 preBITSEA_PF5 preBITSEA_PF6 
    preBITSEA_PF7 preBITSEA_PF8 preBITSEA_PF9 preBITSEA_PF10 preBITSEA_PF11 preBITSEA_PF12 
    preBITSEA_PF13 preBITSEA_PF14 preBITSEA_PF15 preBITSEA_PF16 preBITSEA_PF17 preBITSEA_PF18 
    preBITSEA_PF19 preBITSEA_PF20 preBITSEA_PF21 preBITSEA_PF22 preBITSEA_PF23 preBITSEA_PF24 
    preBITSEA_PF25 preBITSEA_PF26 preBITSEA_PF27 preBITSEA_PF28 preBITSEA_PF29 preBITSEA_PF30 
    preBITSEA_PF31 preBITSEA_PF32 preBITSEA_PF33 preBITSEA_PF34 preBITSEA_PF35 preBITSEA_PF36 
    preBITSEA_PF37 preBITSEA_PF38 preBITSEA_PF39 preBITSEA_PF40 preBITSEA_PF41 preBITSEA_PF42 
    preBITSEA_PFA preBITSEA_PFB post_BITSEA_PF1 post_BITSEA_PF2 post_BITSEA_PF3 post_BITSEA_PF4 
    post_BITSEA_PF5 post_BITSEA_PF6 post_BITSEA_PF7 post_BITSEA_PF8 post_BITSEA_PF9 post_BITSEA_PF10 
    post_BITSEA_PF11 post_BITSEA_PF12 post_BITSEA_PF13 post_BITSEA_PF14 post_BITSEA_PF15 
    post_BITSEA_PF16 post_BITSEA_PF17 post_BITSEA_PF18 post_BITSEA_PF19 post_BITSEA_PF20 
    post_BITSEA_PF21 post_BITSEA_PF22 post_BITSEA_PF23 post_BITSEA_PF24 post_BITSEA_PF25 
    post_BITSEA_PF26 post_BITSEA_PF27 post_BITSEA_PF28 post_BITSEA_PF29 post_BITSEA_PF30 
    post_BITSEA_PF31 post_BITSEA_PF32 post_BITSEA_PF33 post_BITSEA_PF34 post_BITSEA_PF35 
    post_BITSEA_PF36 post_BITSEA_PF37 post_BITSEA_PF38 post_BITSEA_PF39 post_BITSEA_PF40 
    post_BITSEA_PF41 post_BITSEA_PF42 post_BITSEA_PFA post_BITSEA_PFB FU_BITSEA_PF1 FU_BITSEA_PF2 
    FU_BITSEA_PF3 FU_BITSEA_PF4 FU_BITSEA_PF5 FU_BITSEA_PF6 FU_BITSEA_PF7 FU_BITSEA_PF8 FU_BITSEA_PF9 
    FU_BITSEA_PF10 FU_BITSEA_PF11 FU_BITSEA_PF12 FU_BITSEA_PF13 FU_BITSEA_PF14 FU_BITSEA_PF15 
    FU_BITSEA_PF16 FU_BITSEA_PF17 FU_BITSEA_PF18 FU_BITSEA_PF19 FU_BITSEA_PF20 FU_BITSEA_PF21 
    FU_BITSEA_PF22 FU_BITSEA_PF23 FU_BITSEA_PF24 FU_BITSEA_PF25 FU_BITSEA_PF26 FU_BITSEA_PF27 
    FU_BITSEA_PF28 FU_BITSEA_PF29 FU_BITSEA_PF30 FU_BITSEA_PF31 FU_BITSEA_PF32 FU_BITSEA_PF33 
    FU_BITSEA_PF34 FU_BITSEA_PF35 FU_BITSEA_PF36 FU_BITSEA_PF37 FU_BITSEA_PF38 FU_BITSEA_PF39 
    FU_BITSEA_PF40 FU_BITSEA_PF41 FU_BITSEA_PF42 FU_BITSEA_PFA FU_BITSEA_PFB (3=SYSMIS).
EXECUTE.


* Compute sums not means.
*Bitsea problem.
COMPUTE pre_bitseaprob_sum= sum(prebitsea_pf2,	prebitsea_pf3,	prebitsea_pf4,	prebitsea_pf6,	
    prebitsea_pf7,	prebitsea_pf8,	prebitsea_pf9,	prebitsea_pf11,	prebitsea_pf12,	
    prebitsea_pf14,	prebitsea_pf16,	prebitsea_pf17,	prebitsea_pf18,	prebitsea_pf21,	
    prebitsea_pf23,	prebitsea_pf24,	prebitsea_pf26,	prebitsea_pf27,	prebitsea_pf28,	
    prebitsea_pf30,	prebitsea_pf32,	prebitsea_pf33,	prebitsea_pf34,	prebitsea_pf35,	
    prebitsea_pf36,	prebitsea_pf37,	prebitsea_pf38,	prebitsea_pf39,	prebitsea_pf40,	
    prebitsea_pf41,	prebitsea_pf42) .
COMPUTE post_bitseaprob_sum= sum(post_bitsea_pf2,	post_bitsea_pf3,	post_bitsea_pf4,	post_bitsea_pf6,	
    post_bitsea_pf7,	post_bitsea_pf8,	post_bitsea_pf9,	post_bitsea_pf11,	post_bitsea_pf12,	
    post_bitsea_pf14,	post_bitsea_pf16,	post_bitsea_pf17,	post_bitsea_pf18,	post_bitsea_pf21,	
    post_bitsea_pf23,	post_bitsea_pf24,	post_bitsea_pf26,	post_bitsea_pf27,	post_bitsea_pf28,	
    post_bitsea_pf30,	post_bitsea_pf32,	post_bitsea_pf33,	post_bitsea_pf34,	post_bitsea_pf35,	
    post_bitsea_pf36,	post_bitsea_pf37,	post_bitsea_pf38,	post_bitsea_pf39,	post_bitsea_pf40, 
    post_bitsea_pf41 ,	post_bitsea_pf42 ) .
COMPUTE fu_bitseaprob_sum= sum(fu_bitsea_pf2,	fu_bitsea_pf3,	fu_bitsea_pf4,	fu_bitsea_pf6,	
    fu_bitsea_pf7,	fu_bitsea_pf8,	fu_bitsea_pf9,	fu_bitsea_pf11,	fu_bitsea_pf12,	
    fu_bitsea_pf14,	fu_bitsea_pf16,	fu_bitsea_pf17,	fu_bitsea_pf18,	fu_bitsea_pf21,	
    fu_bitsea_pf23,	fu_bitsea_pf24,	fu_bitsea_pf26,	fu_bitsea_pf27,	fu_bitsea_pf28,	
    fu_bitsea_pf30,	fu_bitsea_pf32,	fu_bitsea_pf33,	fu_bitsea_pf34,	fu_bitsea_pf35,	
    fu_bitsea_pf36,	fu_bitsea_pf37,	fu_bitsea_pf38,	fu_bitsea_pf39,	fu_bitsea_pf40,	
    fu_bitsea_pf41,	fu_bitsea_pf42) .
Execute.

* BITSEA Competence .
COMPUTE pre_bitseacomp_sum=sum(prebitsea_pf1,	prebitsea_pf5,	prebitsea_pf10,	prebitsea_pf13,	
    prebitsea_pf15,	prebitsea_pf19,	prebitsea_pf20,	prebitsea_pf22,	prebitsea_pf25,	
    prebitsea_pf29,	prebitsea_pf31).
COMPUTE post_bitseacomp_sum=sum(post_bitsea_pf1,	post_bitsea_pf5,	post_bitsea_pf10,	post_bitsea_pf13,	
    post_bitsea_pf15,	post_bitsea_pf19,	post_bitsea_pf20,	post_bitsea_pf22,	post_bitsea_pf25,	
    post_bitsea_pf29,	post_bitsea_pf31).
COMPUTE fu_bitseacomp_sum=sum(fu_bitsea_pf1,	fu_bitsea_pf5,	fu_bitsea_pf10,	fu_bitsea_pf13,	
    fu_bitsea_pf15,	fu_bitsea_pf19,	fu_bitsea_pf20,	fu_bitsea_pf22,	fu_bitsea_pf25,	
    fu_bitsea_pf29,	fu_bitsea_pf31).
execute.



**************************** 
*    DERS.

 * Reverse-scored items (place a subtraction sign in front of them) are numbered 1, 2, 6, 7, 8, 10, 17, 20, 22, 24 and 34.
 * Calculate total score by adding everything up. Higher scores suggest greater problems with emotion regulation.
 * SUBSCALE SCORING**: The measure yields a total score (SUM) as well as scores on six sub-scales:
1. Nonacceptance of emotional responses (NONACCEPT): 11, 12, 21, 23, 25, 29
2. Difficulty engaging in Goal-directed behavior (GOALS): 13, 18, 20R, 26, 33
3. Impulse control difficulties (IMPULSE): 3, 14, 19, 24R, 27, 32
4. Lack of emotional awareness (AWARENESS): 2R, 6R, 8R, 10R, 17R, 34R
5. Limited access to emotion regulation strategies (STRATEGIES): 15, 16, 22R, 28, 30, 31, 35, 36
6. Lack of emotional clarity (CLARITY): 1R, 4, 5, 7R, 9
Total score: sum of all subscales
**”R” indicates reverse scored item
REFERENCE:
Gratz, K. L. & Roemer, L. (2004). Multidimensional assessment of emotion regulation and dysregulation:
Development, factor structure, and initial validation of the Difficulties in Emotion Regulation Scale.
 * Journal of Psychopathology and Behavioral Assessment, 26, 41-54.

* Checking max value (if there is a 6, recode to missing ) .
 * DESCRIPTIVES VARIABLES=preDERSI1 preDERSI2 preDERSI3 preDERSI4 preDERSI5 preDERSI6 preDERSI7 
    preDERSI8 preDERSI9 preDERSI10 preDERSI11 preDERSI12 preDERSI13 preDERSI14 preDERSI15 preDERSI16 
    preDERSI17 preDERSI18 preDERSI19 preDERSI20 preDERSI21 preDERSI22 preDERSI23 preDERSI24 preDERSI25 
    preDERSI26 preDERSI27 preDERSI28 preDERSI29 preDERSI30 preDERSI31 preDERSI32 preDERSI33 preDERSI34 
    preDERSI35 preDERSI36 
  /STATISTICS=MAX.

 *     DESCRIPTIVES VARIABLES=post_DERSI1 post_DERSI2 post_DERSI3 post_DERSI4 post_DERSI5 post_DERSI6 
    post_DERSI7 post_DERSI8 post_DERSI9 post_DERSI10 post_DERSI11 post_DERSI12 post_DERSI13 
    post_DERSI14 post_DERSI15 post_DERSI16 post_DERSI17 post_DERSI18 post_DERSI19 post_DERSI20 
    post_DERSI21 post_DERSI22 post_DERSI23 post_DERSI24 post_DERSI25 post_DERSI26 post_DERSI27 
    post_DERSI28 post_DERSI29 post_DERSI30 post_DERSI31 post_DERSI32 post_DERSI33 post_DERSI34 
    post_DERSI35 post_DERSI36 
  /STATISTICS=MAX..

 * ID12 has a value of 14 for FU_DERSI13.  fix before final analysis .  
* Change to 1.
DO IF (ID=12). 
RECODE FU_DERSI13 (14=1). 
END IF.

*DESCRIPTIVES VARIABLES=FU_DERSI1 FU_DERSI2 FU_DERSI3 FU_DERSI4 FU_DERSI5 FU_DERSI6 FU_DERSI7 
    FU_DERSI8 FU_DERSI9 FU_DERSI10 FU_DERSI11 FU_DERSI12 FU_DERSI13 FU_DERSI14 FU_DERSI15 FU_DERSI16 
    FU_DERSI17 FU_DERSI18 FU_DERSI19 FU_DERSI20 FU_DERSI21 FU_DERSI22 FU_DERSI23 FU_DERSI24 FU_DERSI25 
    FU_DERSI26 FU_DERSI27 FU_DERSI28 FU_DERSI29 FU_DERSI30 FU_DERSI31 FU_DERSI32 FU_DERSI33 FU_DERSI34 
    FU_DERSI35 FU_DERSI36 
  /STATISTICS=MAX.


* Calculate totals with reverse coding.
 * Compute pre_ders_sum=sum(-1*preDERSI1,-1*preDERSI2,preDERSI3,preDERSI4,preDERSI5,-1*preDERSI6,-1*preDERSI7,-1*preDERSI8,
preDERSI9,-1*preDERSI10,preDERSI11,preDERSI12,preDERSI13,preDERSI14,preDERSI15,preDERSI16,
-1*preDERSI17,preDERSI18,preDERSI19,-1*preDERSI20,preDERSI21,-1*preDERSI22,preDERSI23,-1*preDERSI24,
preDERSI25,preDERSI26,preDERSI27,preDERSI28,preDERSI29,preDERSI30,preDERSI31,preDERSI32,
preDERSI33,-1*preDERSI34,preDERSI35,preDERSI36) .
 * COMPUTE post_ders_sum=sum(-1*post_DERSI1,-1*post_DERSI2,post_DERSI3,post_DERSI4,post_DERSI5,-1*post_DERSI6,-1*post_DERSI7,-1*post_DERSI8,
post_DERSI9,-1*post_DERSI10,post_DERSI11,post_DERSI12,post_DERSI13,post_DERSI14,post_DERSI15,post_DERSI16,
-1*post_DERSI17,post_DERSI18,post_DERSI19,-1*post_DERSI20,post_DERSI21,-1*post_DERSI22,post_DERSI23,-1*post_DERSI24,
post_DERSI25,post_DERSI26,post_DERSI27,post_DERSI28,post_DERSI29,post_DERSI30,post_DERSI31,post_DERSI32,
post_DERSI33,-1*post_DERSI34,post_DERSI35,post_DERSI36).
 * COMPUTE fu_ders_sum=sum(-1*fu_DERSI1,-1*fu_DERSI2,fu_DERSI3,fu_DERSI4,fu_DERSI5,-1*fu_DERSI6,-1*fu_DERSI7,-1*fu_DERSI8,
fu_DERSI9,-1*fu_DERSI10,fu_DERSI11,fu_DERSI12,fu_DERSI13,fu_DERSI14,fu_DERSI15,fu_DERSI16,
-1*fu_DERSI17,fu_DERSI18,fu_DERSI19,-1*fu_DERSI20,fu_DERSI21,-1*fu_DERSI22,fu_DERSI23,-1*fu_DERSI24,
fu_DERSI25,fu_DERSI26,fu_DERSI27,fu_DERSI28,fu_DERSI29,fu_DERSI30,fu_DERSI31,fu_DERSI32,
fu_DERSI33,-1*fu_DERSI34,fu_DERSI35,fu_DERSI36).
 * execute.

 * SUBSCALE SCORING**: The measure yields a total score (SUM) as well as scores on six sub-scales:
1. Nonacceptance of emotional responses (NONACCEPT): 11, 12, 21, 23, 25, 29 .
 * Compute pre_ders_nonacc=sum(preDERSI11,preDERSI12,preDERSI21,preDERSI23,
preDERSI25,preDERSI29) .
 * COMPUTE post_ders_nonacc=sum(post_DERSI11,post_DERSI12,post_DERSI21,post_DERSI23,
post_DERSI25,post_DERSI29).
 * COMPUTE fu_ders_nonacc=sum(fu_DERSI11,fu_DERSI12,fu_DERSI21,fu_DERSI23,
fu_DERSI25,fu_DERSI29).
 * execute.

*2. Difficulty engaging in Goal-directed behavior (GOALS): 13, 18, 20R, 26, 33 .
 * Compute pre_ders_goal=sum(preDERSI13,preDERSI18,-1*preDERSI20,preDERSI26,preDERSI33) .
 * COMPUTE post_ders_goal=sum(post_DERSI13,post_DERSI18,-1*post_DERSI20,post_DERSI26,post_DERSI33).
 * COMPUTE fu_ders_goal=sum(fu_DERSI13,fu_DERSI18,-1*fu_DERSI20,fu_DERSI26,fu_DERSI33).
 * execute.

*3. Impulse control difficulties (IMPULSE): 3, 14, 19, 24R, 27, 32 .
 * Compute pre_ders_impulse=sum(preDERSI3,preDERSI14,preDERSI19,-1*preDERSI24,preDERSI27,preDERSI32) .
 * COMPUTE post_ders_impulse=sum(post_DERSI3,post_DERSI14,post_DERSI19,-1*post_DERSI24,post_DERSI27,post_DERSI32).
 * COMPUTE fu_ders_impulse=sum(fu_DERSI3,fu_DERSI14,fu_DERSI19,-1*fu_DERSI24,fu_DERSI27,fu_DERSI32).
 * execute.

*4. Lack of emotional awareness (AWARENESS): 2R, 6R, 8R, 10R, 17R, 34R.
 * Compute pre_ders_aware=sum(-1*preDERSI2,-1*preDERSI6,-1*preDERSI8,-1*preDERSI10,-1*preDERSI17,-1*preDERSI34) .
 * COMPUTE post_ders_aware=sum(-1*post_DERSI2,-1*post_DERSI6,-1*post_DERSI8,-1*post_DERSI10,-1*post_DERSI17,-1*post_DERSI34).
 * COMPUTE fu_ders_aware=sum(-1*fu_DERSI2,-1*fu_DERSI6,-1*fu_DERSI8,-1*fu_DERSI10,-1*fu_DERSI17,-1*fu_DERSI34).
 * execute.

*5. Limited access to emotion regulation strategies (STRATEGIES): 15, 16, 22R, 28, 30, 31, 35, 36 .
 * Compute pre_ders_strat=sum(preDERSI15,preDERSI16,-1*preDERSI22,preDERSI28,preDERSI30,preDERSI31,preDERSI35,preDERSI36) .
 * COMPUTE post_ders_strat=sum(post_DERSI15,post_DERSI16,-1*post_DERSI22,post_DERSI28,post_DERSI30,post_DERSI31,post_DERSI35,post_DERSI36).
 * COMPUTE fu_ders_strat=sum(fu_DERSI15,fu_DERSI16,-1*fu_DERSI22,fu_DERSI28,fu_DERSI30,fu_DERSI31,fu_DERSI35,fu_DERSI36).
 * execute.


*6. Lack of emotional clarity (CLARITY): 1R, 4, 5, 7R, 9.
 * Compute pre_ders_clar=sum(-1*preDERSI1,preDERSI4,preDERSI5,-1*preDERSI7,preDERSI9) .
 * COMPUTE post_ders_clar=sum(-1*post_DERSI1,post_DERSI4,post_DERSI5,-1*post_DERSI7,post_DERSI9).
 * COMPUTE fu_ders_clar=sum(-1*fu_DERSI1,fu_DERSI4,fu_DERSI5,-1*fu_DERSI7,fu_DERSI9).
 * execute.




* reverse coding items 1,2,6,7,8,17,20,22,24,34.
compute preDERSI1r = (-1*preDERSI1 ) +6 .
compute preDERSI2r = (-1*preDERSI2 ) +6 .
compute preDERSI6r = (-1*preDERSI6 ) +6 .
compute preDERSI7r = (-1*preDERSI7 ) +6 .
compute preDERSI8r = (-1*preDERSI8 ) +6 .
compute preDERSI10r = (-1*preDERSI10 ) +6 .
compute preDERSI17r = (-1*preDERSI17 ) +6 .
compute preDERSI20r = (-1*preDERSI20 ) +6 .
compute preDERSI22r = (-1*preDERSI22 ) +6 .
compute preDERSI24r = (-1*preDERSI24 ) +6 .
compute preDERSI34r = (-1*preDERSI34 ) +6 .
compute post_DERSI1r = (-1*post_DERSI1 ) +6 .
compute post_DERSI2r = (-1*post_DERSI2 ) +6 .
compute post_DERSI6r = (-1*post_DERSI6 ) +6 .
compute post_DERSI7r = (-1*post_DERSI7 ) +6 .
compute post_DERSI8r = (-1*post_DERSI8 ) +6 .
compute post_DERSI10r = (-1*post_DERSI10 ) +6 .
compute post_DERSI17r = (-1*post_DERSI17 ) +6 .
compute post_DERSI20r = (-1*post_DERSI20 ) +6 .
compute post_DERSI22r = (-1*post_DERSI22 ) +6 .
compute post_DERSI24r = (-1*post_DERSI24 ) +6 .
compute post_DERSI34r = (-1*post_DERSI34 ) +6 .
compute fu_DERSI1r = (-1*fu_DERSI1 ) +6 .
compute fu_DERSI2r = (-1*fu_DERSI2 ) +6 .
compute fu_DERSI6r = (-1*fu_DERSI6 ) +6 .
compute fu_DERSI7r = (-1*fu_DERSI7 ) +6 .
compute fu_DERSI8r = (-1*fu_DERSI8 ) +6 .
compute fu_DERSI10r = (-1*fu_DERSI10 ) +6 .
compute fu_DERSI17r = (-1*fu_DERSI17 ) +6 .
compute fu_DERSI20r = (-1*fu_DERSI20 ) +6 .
compute fu_DERSI22r = (-1*fu_DERSI22 ) +6 .
compute fu_DERSI24r = (-1*fu_DERSI24 ) +6 .
compute fu_DERSI34r = (-1*fu_DERSI34 ) +6 .
execute.
compute preDERSI1r = (-1*preDERSI1 ) +6 .
compute preDERSI2r = (-1*preDERSI2 ) +6 .
compute preDERSI6r = (-1*preDERSI6 ) +6 .
compute preDERSI7r = (-1*preDERSI7 ) +6 .
compute preDERSI8r = (-1*preDERSI8 ) +6 .
compute preDERSI10r = (-1*preDERSI10 ) +6 .
compute preDERSI17r = (-1*preDERSI17 ) +6 .
compute preDERSI20r = (-1*preDERSI20 ) +6 .
compute preDERSI22r = (-1*preDERSI22 ) +6 .
compute preDERSI24r = (-1*preDERSI24 ) +6 .
compute preDERSI34r = (-1*preDERSI34 ) +6 .
compute post_DERSI1r = (-1*post_DERSI1 ) +6 .
compute post_DERSI2r = (-1*post_DERSI2 ) +6 .
compute post_DERSI6r = (-1*post_DERSI6 ) +6 .
compute post_DERSI7r = (-1*post_DERSI7 ) +6 .
compute post_DERSI8r = (-1*post_DERSI8 ) +6 .
compute post_DERSI10r = (-1*post_DERSI10 ) +6 .
compute post_DERSI17r = (-1*post_DERSI17 ) +6 .
compute post_DERSI20r = (-1*post_DERSI20 ) +6 .
compute post_DERSI22r = (-1*post_DERSI22 ) +6 .
compute post_DERSI24r = (-1*post_DERSI24 ) +6 .
compute post_DERSI34r = (-1*post_DERSI34 ) +6 .
compute fu_DERSI1r = (-1*fu_DERSI1 ) +6 .
compute fu_DERSI2r = (-1*fu_DERSI2 ) +6 .
compute fu_DERSI6r = (-1*fu_DERSI6 ) +6 .
compute fu_DERSI7r = (-1*fu_DERSI7 ) +6 .
compute fu_DERSI8r = (-1*fu_DERSI8 ) +6 .
compute fu_DERSI10r = (-1*fu_DERSI10 ) +6 .
compute fu_DERSI17r = (-1*fu_DERSI17 ) +6 .
compute fu_DERSI20r = (-1*fu_DERSI20 ) +6 .
compute fu_DERSI22r = (-1*fu_DERSI22 ) +6 .
compute fu_DERSI24r = (-1*fu_DERSI24 ) +6 .
compute fu_DERSI34r = (-1*fu_DERSI34 ) +6 .

execute.


* Calculate totals with reverse coding.
Compute pre_ders_sum=sum(preDERSI1r,preDERSI2r,preDERSI3,preDERSI4,preDERSI5,preDERSI6r,preDERSI7r,preDERSI8r,
preDERSI9,preDERSI10r,preDERSI11,preDERSI12,preDERSI13,preDERSI14,preDERSI15,preDERSI16,
preDERSI17r,preDERSI18,preDERSI19,preDERSI20r,preDERSI21,preDERSI22r,preDERSI23,preDERSI24r,
preDERSI25,preDERSI26,preDERSI27,preDERSI28,preDERSI29,preDERSI30,preDERSI31,preDERSI32,
preDERSI33,preDERSI34r,preDERSI35,preDERSI36) .
COMPUTE post_ders_sum=sum(post_DERSI1r,post_DERSI2r,post_DERSI3,post_DERSI4,post_DERSI5,post_DERSI6r,post_DERSI7r,post_DERSI8r,
post_DERSI9,post_DERSI10r,post_DERSI11,post_DERSI12,post_DERSI13,post_DERSI14,post_DERSI15,post_DERSI16,
post_DERSI17r,post_DERSI18,post_DERSI19,post_DERSI20r,post_DERSI21,post_DERSI22r,post_DERSI23,post_DERSI24r,
post_DERSI25,post_DERSI26,post_DERSI27,post_DERSI28,post_DERSI29,post_DERSI30,post_DERSI31,post_DERSI32,
post_DERSI33,post_DERSI34r,post_DERSI35,post_DERSI36).
COMPUTE fu_ders_sum=sum(fu_DERSI1r,fu_DERSI2r,fu_DERSI3,fu_DERSI4,fu_DERSI5,fu_DERSI6r,fu_DERSI7r,fu_DERSI8r,
fu_DERSI9,fu_DERSI10r,fu_DERSI11,fu_DERSI12,fu_DERSI13,fu_DERSI14,fu_DERSI15,fu_DERSI16,
fu_DERSI17r,fu_DERSI18,fu_DERSI19,fu_DERSI20r,fu_DERSI21,fu_DERSI22r,fu_DERSI23,fu_DERSI24r,
fu_DERSI25,fu_DERSI26,fu_DERSI27,fu_DERSI28,fu_DERSI29,fu_DERSI30,fu_DERSI31,fu_DERSI32,
fu_DERSI33,fu_DERSI34r,fu_DERSI35,fu_DERSI36).
execute.

 * SUBSCALE SCORING**: The measure yields a total score (SUM) as well as scores on six sub-scales:
1. Nonacceptance of emotional responses (NONACCEPT): 11, 12, 21, 23, 25, 29 .
Compute pre_ders_nonacc=sum(preDERSI11,preDERSI12,preDERSI21,preDERSI23,
preDERSI25,preDERSI29) .
COMPUTE post_ders_nonacc=sum(post_DERSI11,post_DERSI12,post_DERSI21,post_DERSI23,
post_DERSI25,post_DERSI29).
COMPUTE fu_ders_nonacc=sum(fu_DERSI11,fu_DERSI12,fu_DERSI21,fu_DERSI23,
fu_DERSI25,fu_DERSI29).
execute.

*2. Difficulty engaging in Goal-directed behavior (GOALS): 13, 18, 20R, 26, 33 .
Compute pre_ders_goal=sum(preDERSI13,preDERSI18,preDERSI20r,preDERSI26,preDERSI33) .
COMPUTE post_ders_goal=sum(post_DERSI13,post_DERSI18,post_DERSI20r,post_DERSI26,post_DERSI33).
COMPUTE fu_ders_goal=sum(fu_DERSI13,fu_DERSI18,fu_DERSI20r,fu_DERSI26,fu_DERSI33).
execute.

*3. Impulse control difficulties (IMPULSE): 3, 14, 19, 24R, 27, 32 .
Compute pre_ders_impulse=sum(preDERSI3,preDERSI14,preDERSI19,preDERSI24r,preDERSI27,preDERSI32) .
COMPUTE post_ders_impulse=sum(post_DERSI3,post_DERSI14,post_DERSI19,post_DERSI24r,post_DERSI27,post_DERSI32).
COMPUTE fu_ders_impulse=sum(fu_DERSI3,fu_DERSI14,fu_DERSI19,fu_DERSI24r,fu_DERSI27,fu_DERSI32).
execute.

*4. Lack of emotional awareness (AWARENESS): 2R, 6R, 8R, 10R, 17R, 34R.
Compute pre_ders_aware=sum(preDERSI2r,preDERSI6r,preDERSI8r,preDERSI10r,preDERSI17r,preDERSI34r) .
COMPUTE post_ders_aware=sum(post_DERSI2r,post_DERSI6r,post_DERSI8r,post_DERSI10r,post_DERSI17r,post_DERSI34r).
COMPUTE fu_ders_aware=sum(fu_DERSI2r,fu_DERSI6r,fu_DERSI8r,fu_DERSI10r,fu_DERSI17r,fu_DERSI34r).
execute.

*5. Limited access to emotion regulation strategies (STRATEGIES): 15, 16, 22R, 28, 30, 31, 35, 36 .
Compute pre_ders_strat=sum(preDERSI15,preDERSI16,preDERSI22r,preDERSI28,preDERSI30,preDERSI31,preDERSI35,preDERSI36) .
COMPUTE post_ders_strat=sum(post_DERSI15,post_DERSI16,post_DERSI22r,post_DERSI28,post_DERSI30,post_DERSI31,post_DERSI35,post_DERSI36).
COMPUTE fu_ders_strat=sum(fu_DERSI15,fu_DERSI16,fu_DERSI22r,fu_DERSI28,fu_DERSI30,fu_DERSI31,fu_DERSI35,fu_DERSI36).
execute.


*6. Lack of emotional clarity (CLARITY): 1R, 4, 5, 7R, 9.
Compute pre_ders_clar=sum(preDERSI1r,preDERSI4,preDERSI5,preDERSI7r,preDERSI9) .
COMPUTE post_ders_clar=sum(post_DERSI1r,post_DERSI4,post_DERSI5,post_DERSI7r,post_DERSI9).
COMPUTE fu_ders_clar=sum(fu_DERSI1r,fu_DERSI4,fu_DERSI5,fu_DERSI7r,fu_DERSI9).
execute.


VARIABLE LEVEL pre_ders_nonacc TO fu_ders_clar (scale). 




SAVE OUTFILE='C:\Users\Nancy Briggs\OneDrive - UNSW\Documents\_Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\data_prep.sav'
  /COMPRESSED.




SAVE TRANSLATE OUTFILE='C:\Users\Nancy Briggs\OneDrive - UNSW\Documents\_Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\data_prep.csv'
  /TYPE=CSV
  /ENCODING='UTF8'
  /MAP
  /REPLACE
  /FIELDNAMES
  /CELLS=VALUES.



*** getting totaltimefor DPICS .

GET
  FILE='C:\Users\Nancy Briggs\OneDrive - UNSW\Documents\_Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\PCITT RCT main dataset 24.1.22.sav'.
DATASET NAME DataSet1 WINDOW=FRONT.




SAVE OUTFILE='C:\Users\Nancy Briggs\OneDrive - UNSW\Documents\_Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\data_prep_DPICStime.sav'
  /KEEP id 
  PARENT_total_verbalisations_TIME_1
PARENT_total_LP_TIME_1
PARENT_total_NTA_TIME_1
TOTAL_eff_commands_TIME_1
CHILD_CO_total_TIME_1
CHILD_NC_total_TIME_1
PARENT_LP_perc_total_TIME_1
PARENT_NTA_perc_total_TIME_1
TOTAL_CO_perc_TIME_1
TOTAL_NC_perc_TIME_1
PARENT_total_verbalisations_TIME_2
PARENT_total_LP_TIME_2
PARENT_total_NTA_TIME_2
TOTAL_eff_commands_TIME_2
CHILD_CO_total_TIME_2
CHILD_NC_total_TIME_2
PARENT_LP_perc_total_TIME_2
PARENT_NTA_perc_total_TIME_2
TOTAL_CO_perc_TIME_2
TOTAL_NC_perc_TIME_2
PARENT_total_verbalisations_Time_3
PARENT_total_LP_TIME_3
PARENT_total_NTA_TIME_3
TOTAL_eff_commands_TIME_3
CHILD_CO_total_TIME_3
CHILD_NC_total_TIME_3
PARENT_LP_perc_total_TIME_3
PARENT_NTA_perc_total_TIME_3
TOTAL_CO_perc_TIME_3
TOTAL_NC_perc_TIME_3
      /COMPRESSED.

GET
  FILE='C:\Users\Nancy Briggs\OneDrive - UNSW\Documents\_Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\data_prep_DPICStime.sav'.
DATASET NAME DataSet1 WINDOW=FRONT.


SAVE TRANSLATE OUTFILE='C:\Users\Nancy Briggs\OneDrive - UNSW\Documents\_Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\data_prep_DPICStime.csv'
  /TYPE=CSV
  /ENCODING='UTF8'
  /MAP
  /REPLACE
  /FIELDNAMES
  /CELLS=VALUES.






SAVE OUTFILE='C:\Users\Nancy Briggs\OneDrive - UNSW\Documents\_Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\data_prep_ders.sav'
  /KEEP id pre_ders_sum, post_ders_sum, fu_ders_sum
    preDERSI1 preDERSI2 preDERSI3 preDERSI4 preDERSI5 preDERSI6 preDERSI7 
    preDERSI8 preDERSI9 preDERSI10 preDERSI11 preDERSI12 preDERSI13 preDERSI14 preDERSI15 preDERSI16 
    preDERSI17 preDERSI18 preDERSI19 preDERSI20 preDERSI21 preDERSI22 preDERSI23 preDERSI24 preDERSI25 
    preDERSI26 preDERSI27 preDERSI28 preDERSI29 preDERSI30 preDERSI31 preDERSI32 preDERSI33 preDERSI34 
    preDERSI35 preDERSI36 post_DERSI1 post_DERSI2 post_DERSI3 post_DERSI4 post_DERSI5 post_DERSI6 
    post_DERSI7 post_DERSI8 post_DERSI9 post_DERSI10 post_DERSI11 post_DERSI12 post_DERSI13 
    post_DERSI14 post_DERSI15 post_DERSI16 post_DERSI17 post_DERSI18 post_DERSI19 post_DERSI20 
    post_DERSI21 post_DERSI22 post_DERSI23 post_DERSI24 post_DERSI25 post_DERSI26 post_DERSI27 
    post_DERSI28 post_DERSI29 post_DERSI30 post_DERSI31 post_DERSI32 post_DERSI33 post_DERSI34 
    post_DERSI35 post_DERSI36 FU_DERSI1 FU_DERSI2 FU_DERSI3 FU_DERSI4 FU_DERSI5 FU_DERSI6 FU_DERSI7 
    FU_DERSI8 FU_DERSI9 FU_DERSI10 FU_DERSI11 FU_DERSI12 FU_DERSI13 FU_DERSI14 FU_DERSI15 FU_DERSI16 
    FU_DERSI17 FU_DERSI18 FU_DERSI19 FU_DERSI20 FU_DERSI21 FU_DERSI22 FU_DERSI23 FU_DERSI24 FU_DERSI25 
    FU_DERSI26 FU_DERSI27 FU_DERSI28 FU_DERSI29 FU_DERSI30 FU_DERSI31 FU_DERSI32 FU_DERSI33 FU_DERSI34 
    FU_DERSI35 FU_DERSI36 .




