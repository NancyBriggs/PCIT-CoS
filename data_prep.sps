* Encoding: UTF-8.
GET
  FILE='C:\Users\Nancy\OneDrive - UNSW\Documents\Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\PCITT RCT main dataset 4.1.22.sav'.
DATASET NAME DataSet1 WINDOW=FRONT.

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



FILTER OFF.
USE ALL.
SELECT IF (GROUP<999).
EXECUTE.
SAVE OUTFILE='C:\Users\Nancy\OneDrive - UNSW\Documents\Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\data_prep.sav'
  /COMPRESSED.


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

SAVE OUTFILE='C:\Users\Nancy\OneDrive - UNSW\Documents\Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\data_prep.sav'
  /COMPRESSED.




SAVE TRANSLATE OUTFILE='C:\Users\Nancy\OneDrive - UNSW\Documents\Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\data_prep.csv'
  /TYPE=CSV
  /ENCODING='UTF8'
  /MAP
  /REPLACE
  /FIELDNAMES
  /CELLS=VALUES.



*** getting totaltimefor DPICS .

GET
  FILE='C:\Users\Nancy\OneDrive - UNSW\Documents\Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\PCITT RCT main dataset 24.1.22.sav'.
DATASET NAME DataSet1 WINDOW=FRONT.




SAVE OUTFILE='C:\Users\Nancy\OneDrive - UNSW\Documents\Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\data_prep_DPICStime.sav'
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
  FILE='C:\Users\Nancy\OneDrive - UNSW\Documents\Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\data_prep_DPICStime.sav'.
DATASET NAME DataSet1 WINDOW=FRONT.


SAVE TRANSLATE OUTFILE='C:\Users\Nancy\OneDrive - UNSW\Documents\Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\data_prep_DPICStime.csv'
  /TYPE=CSV
  /ENCODING='UTF8'
  /MAP
  /REPLACE
  /FIELDNAMES
  /CELLS=VALUES.

