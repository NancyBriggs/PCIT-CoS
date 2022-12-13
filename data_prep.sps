* Encoding: UTF-8.
GET
  FILE='C:\Users\Nancy Briggs\OneDrive - UNSW\Documents\Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\PCITT RCT main dataset 4.1.22.sav'.
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
SAVE OUTFILE='C:\Users\Nancy Briggs\OneDrive - UNSW\Documents\Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\data_prep.sav'
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

*** Adding in CCQ recoding.
* 1. reverse code items that need it. (Already done) .
* 2. caculate the mean for each subscale.
* 3. replace missing values with mean, unless all are missing then it's jst messing.
* This is the same process as the CBCL above.

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
if	~missing(	preCCQA1	)	ccq_count_pre	=	preCCQA1	+	1	.
if	~missing(	preCCQA2	)	ccq_count_pre	=	preCCQA2	+	1	.
if	~missing(	preCCQA3	)	ccq_count_pre	=	preCCQA3	+	1	.
if	~missing(	preCCQA4	)	ccq_count_pre	=	preCCQA4	+	1	.
if	~missing(	preCCQA5	)	ccq_count_pre	=	preCCQA5	+	1	.
if	~missing(	preCCQA6	)	ccq_count_pre	=	preCCQA6	+	1	.
if	~missing(	preCCQA7	)	ccq_count_pre	=	preCCQA7	+	1	.
if	~missing(	preCCQA8	)	ccq_count_pre	=	preCCQA8	+	1	.
if	~missing(	preCCQA9	)	ccq_count_pre	=	preCCQA9	+	1	.
if	~missing(	preCCQA10	)	ccq_count_pre	=	preCCQA10	+	1	.
if	~missing(	preCCQA11	)	ccq_count_pre	=	preCCQA11	+	1	.
if	~missing(	preCCQA12_R)	ccq_count_pre	=	preCCQA12_R+	1	.

compute	ccq_count_post	=0	.						
if	~missing(	post_CCQA1	)	ccq_count_post	=	post_CCQA1	+	1	.
if	~missing(	post_CCQA2	)	ccq_count_post	=	post_CCQA2	+	1	.
if	~missing(	post_CCQA3	)	ccq_count_post	=	post_CCQA3	+	1	.
if	~missing(	post_CCQA4	)	ccq_count_post	=	post_CCQA4	+	1	.
if	~missing(	post_CCQA5	)	ccq_count_post	=	post_CCQA5	+	1	.
if	~missing(	post_CCQA6	)	ccq_count_post	=	post_CCQA6	+	1	.
if	~missing(	post_CCQA7	)	ccq_count_post	=	post_CCQA7	+	1	.
if	~missing(	post_CCQA8	)	ccq_count_post	=	post_CCQA8	+	1	.
if	~missing(	post_CCQA9	)	ccq_count_post	=	post_CCQA9	+	1	.
if	~missing(	post_CCQA10	)	ccq_count_post	=	post_CCQA10	+	1	.
if	~missing(	post_CCQA11	)	ccq_count_post	=	post_CCQA11	+	1	.
if	~missing(	post_CCQA12_R	)	ccq_count_post	=	post_CCQA12_R	+	1	.
compute	ccq_count_fu	=0	.						
if	~missing(	FU_CCQA1	)	ccq_count_fu	=	FU_CCQA1	+	1	.
if	~missing(	FU_CCQA2	)	ccq_count_fu	=	FU_CCQA2	+	1	.
if	~missing(	FU_CCQA3	)	ccq_count_fu	=	FU_CCQA3	+	1	.
if	~missing(	FU_CCQA4	)	ccq_count_fu	=	FU_CCQA4	+	1	.
if	~missing(	FU_CCQA5	)	ccq_count_fu	=	FU_CCQA5	+	1	.
if	~missing(	FU_CCQA6	)	ccq_count_fu	=	FU_CCQA6	+	1	.
if	~missing(	FU_CCQA7	)	ccq_count_fu	=	FU_CCQA7	+	1	.
if	~missing(	FU_CCQA8	)	ccq_count_fu	=	FU_CCQA8	+	1	.
if	~missing(	FU_CCQA9	)	ccq_count_fu	=	FU_CCQA9	+	1	.
if	~missing(	FU_CCQA10	)	ccq_count_fu	=	FU_CCQA10	+	1	.
if	~missing(	FU_CCQA11	)	ccq_count_fu	=	FU_CCQA11	+	1	.
if	~missing(	FU_CCQA12_R	)	ccq_count_fu	=	FU_CCQA12_R	+	1	.







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

* Compute subscale mean.
COMPUTE pre_CCQ_A_TOPSE_mean =mean(preCCQA1, preCCQA2,  preCCQA3,  preCCQA4, preCCQA5,  preCCQA6, preCCQA7,  preCCQA8,  
    preCCQA9,  preCCQA10, preCCQA11, preCCQA12_R).
COMPUTE post_CCQ_A_TOPSE_mean =mean(post_CCQA1, post_CCQA2,  post_CCQA3,  post_CCQA4, post_CCQA5,  post_CCQA6, post_CCQA7,  
    post_CCQA8,  post_CCQA9,  post_CCQA10, post_CCQA11, post_CCQA12_R).
COMPUTE fu_CCQ_A_TOPSE_mean =mean(fu_CCQA1, fu_CCQA2,  fu_CCQA3,  fu_CCQA4, fu_CCQA5,  fu_CCQA6, fu_CCQA7,  
fu_CCQA8,  fu_CCQA9,  fu_CCQA10, fu_CCQA11, fu_CCQA12_R).
Execute.






* Caregiving Helplessness (CCQ as well) .


DATASET ACTIVATE DataSet1.
COMPUTE pre_CHQ_mean =mean(preCCQD1,preCCQD2 ,preCCQD3,
preCCQD4 ,preCCQD5 ,preCCQD6 ,preCCQD7).
COMPUTE post_CHQ_mean =mean(post_CCQD1,post_CCQD2 ,post_CCQD3,
post_CCQD4 ,post_CCQD5 ,post_CCQD6 ,post_CCQD7).
COMPUTE fu_CHQ_mean =mean(fu_CCQD1,fu_CCQD2 ,fu_CCQD3,
fu_CCQD4 ,fu_CCQD5 ,fu_CCQD6 ,fu_CCQD7).
Execute.

compute	ccq_count_pre	=0	.						
if	~missing(	preCCQD1	)	ccq_count_pre	=	preCCQD1	+	1	.
if	~missing(	preCCQD2	)	ccq_count_pre	=	preCCQD2	+	1	.
if	~missing(	preCCQD3	)	ccq_count_pre	=	preCCQD3	+	1	.
if	~missing(	preCCQD4	)	ccq_count_pre	=	preCCQD4	+	1	.
if	~missing(	preCCQD5	)	ccq_count_pre	=	preCCQD5	+	1	.
if	~missing(	preCCQD6	)	ccq_count_pre	=	preCCQD6	+	1	.
if	~missing(	preCCQD7	)	ccq_count_pre	=	preCCQD7	+	1	.
compute	ccq_count_post	=0	.						
if	~missing(	post_CCQD1	)	ccq_count_post	=	post_CCQD1	+	1	.
if	~missing(	post_CCQD2	)	ccq_count_post	=	post_CCQD2	+	1	.
if	~missing(	post_CCQD3	)	ccq_count_post	=	post_CCQD3	+	1	.
if	~missing(	post_CCQD4	)	ccq_count_post	=	post_CCQD4	+	1	.
if	~missing(	post_CCQD5	)	ccq_count_post	=	post_CCQD5	+	1	.
if	~missing(	post_CCQD6	)	ccq_count_post	=	post_CCQD6	+	1	.
if	~missing(	post_CCQD7	)	ccq_count_post	=	post_CCQD7	+	1	.
compute	ccq_count_fu	=0	.						
if	~missing(	FU_CCQD1	)	ccq_count_fu	=	FU_CCQD1	+	1	.
if	~missing(	FU_CCQD2	)	ccq_count_fu	=	FU_CCQD2	+	1	.
if	~missing(	FU_CCQD3	)	ccq_count_fu	=	FU_CCQD3	+	1	.
if	~missing(	FU_CCQD4	)	ccq_count_fu	=	FU_CCQD4	+	1	.
if	~missing(	FU_CCQD5	)	ccq_count_fu	=	FU_CCQD5	+	1	.
if	~missing(	FU_CCQD6	)	ccq_count_fu	=	FU_CCQD6	+	1	.
if	~missing(	FU_CCQD7	)	ccq_count_fu	=	FU_CCQD7	+	1	.


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
COMPUTE pre_CHQD_mean =mean(preCCQD1,preCCQD2 ,preCCQD3,
preCCQD4 ,preCCQD5 ,preCCQD6 ,preCCQD7).
COMPUTE post_CHQD_mean =mean(post_CCQD1,post_CCQD2 ,post_CCQD3,
post_CCQD4 ,post_CCQD5 ,post_CCQD6 ,post_CCQD7).
COMPUTE fu_CHQD_mean =mean(fu_CCQD1,fu_CCQD2 ,fu_CCQD3,
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

COMPUTE pre_CCQC_mean =mean(preCCQC1,preCCQC2 ,preCCQC3,
preCCQC4 ,preCCQC5).
COMPUTE post_CCQC_mean =mean(post_CCQC1,post_CCQC2 ,post_CCQC3,
post_CCQC4 ,post_CCQC5).
COMPUTE fu_CCQC_mean =mean(fu_CCQC1,fu_CCQC2 ,fu_CCQC3,
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
if	~missing(	preCCQE1	)	ccq_count_pre	=	preCCQE1	+	1	.
if	~missing(	preCCQE2	)	ccq_count_pre	=	preCCQE2	+	1	.
if	~missing(	preCCQE3	)	ccq_count_pre	=	preCCQE3	+	1	.
if	~missing(	preCCQE4_R	)	ccq_count_pre	=	preCCQE4_R	+	1	.
if	~missing(	preCCQE5	)	ccq_count_pre	=	preCCQE5	+	1	.
if	~missing(	preCCQE6	)	ccq_count_pre	=	preCCQE6	+	1	.
if	~missing(	preCCQE7	)	ccq_count_pre	=	preCCQE7	+	1	.
if	~missing(	preCCQE8	)	ccq_count_pre	=	preCCQE8	+	1	.
if	~missing(	preCCQE9_R	)	ccq_count_pre	=	preCCQE9_R	+	1	.
if	~missing(	preCCQE10	)	ccq_count_pre	=	preCCQE10	+	1	.
if	~missing(	preCCQE11	)	ccq_count_pre	=	preCCQE11	+	1	.
if	~missing(	preCCQE12	)	ccq_count_pre	=	preCCQE12	+	1	.
if	~missing(	preCCQE13	)	ccq_count_pre	=	preCCQE13	+	1	.
if	~missing(	preCCQE14_R	)	ccq_count_pre	=	preCCQE14_R	+	1	.
if	~missing(	preCCQE15	)	ccq_count_pre	=	preCCQE15	+	1	.
if	~missing(	preCCQE16	)	ccq_count_pre	=	preCCQE16	+	1	.
if	~missing(	preCCQE17	)	ccq_count_pre	=	preCCQE17	+	1	.
if	~missing(	preCCQE18	)	ccq_count_pre	=	preCCQE18	+	1	.
compute	ccq_count_post	 =0	.						
if	~missing(	post_CCQE1	)	ccq_count_post	=	post_CCQE1	+	1	.
if	~missing(	post_CCQE2	)	ccq_count_post	=	post_CCQE2	+	1	.
if	~missing(	post_CCQE3	)	ccq_count_post	=	post_CCQE3	+	1	.
if	~missing(	post_CCQE4_R	)	ccq_count_post	=	post_CCQE4_R	+	1	.
if	~missing(	post_CCQE5	)	ccq_count_post	=	post_CCQE5	+	1	.
if	~missing(	post_CCQE6	)	ccq_count_post	=	post_CCQE6	+	1	.
if	~missing(	post_CCQE7	)	ccq_count_post	=	post_CCQE7	+	1	.
if	~missing(	post_CCQE8	)	ccq_count_post	=	post_CCQE8	+	1	.
if	~missing(	post_CCQE9_R	)	ccq_count_post	=	post_CCQE9_R	+	1	.
if	~missing(	post_CCQE10	)	ccq_count_post	=	post_CCQE10	+	1	.
if	~missing(	post_CCQE11	)	ccq_count_post	=	post_CCQE11	+	1	.
if	~missing(	post_CCQE12	)	ccq_count_post	=	post_CCQE12	+	1	.
if	~missing(	post_CCQE13	)	ccq_count_post	=	post_CCQE13	+	1	.
if	~missing(	post_CCQE14_R	)	ccq_count_post	=	post_CCQE14_R	+	1	.
if	~missing(	post_CCQE15	)	ccq_count_post	=	post_CCQE15	+	1	.
if	~missing(	post_CCQE16	)	ccq_count_post	=	post_CCQE16	+	1	.
if	~missing(	post_CCQE17	)	ccq_count_post	=	post_CCQE17	+	1	.
if	~missing(	post_CCQE18	)	ccq_count_post	=	post_CCQE18	+	1	.
compute	ccq_count_fu	 =0	.						
if	~missing(	FU_CCQE1	)	ccq_count_fu	=	FU_CCQE1	+	1	.
if	~missing(	FU_CCQE2	)	ccq_count_fu	=	FU_CCQE2	+	1	.
if	~missing(	FU_CCQE3	)	ccq_count_fu	=	FU_CCQE3	+	1	.
if	~missing(	FU_CCQE4_R	)	ccq_count_fu	=	FU_CCQE4_R	+	1	.
if	~missing(	FU_CCQE5	)	ccq_count_fu	=	FU_CCQE5	+	1	.
if	~missing(	FU_CCQE6	)	ccq_count_fu	=	FU_CCQE6	+	1	.
if	~missing(	FU_CCQE7	)	ccq_count_fu	=	FU_CCQE7	+	1	.
if	~missing(	FU_CCQE8	)	ccq_count_fu	=	FU_CCQE8	+	1	.
if	~missing(	FU_CCQE9_R	)	ccq_count_fu	=	FU_CCQE9_R	+	1	.
if	~missing(	FU_CCQE10	)	ccq_count_fu	=	FU_CCQE10	+	1	.
if	~missing(	FU_CCQE11	)	ccq_count_fu	=	FU_CCQE11	+	1	.
if	~missing(	FU_CCQE12	)	ccq_count_fu	=	FU_CCQE12	+	1	.
if	~missing(	FU_CCQE13	)	ccq_count_fu	=	FU_CCQE13	+	1	.
if	~missing(	FU_CCQE14_R	)	ccq_count_fu	=	FU_CCQE14_R	+	1	.
if	~missing(	FU_CCQE15	)	ccq_count_fu	=	FU_CCQE15	+	1	.
if	~missing(	FU_CCQE16	)	ccq_count_fu	=	FU_CCQE16	+	1	.
if	~missing(	FU_CCQE17	)	ccq_count_fu	=	FU_CCQE17	+	1	.
if	~missing(	FU_CCQE18	)	ccq_count_fu	=	FU_CCQE18	+	1	.



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

Compute pre_CCQE_mean=mean( preCCQE1,	preCCQE2,	preCCQE3,	preCCQE4_R,	preCCQE5,	
    preCCQE6,	preCCQE7,	preCCQE8,	preCCQE9_R,	preCCQE10,	preCCQE11,	preCCQE12,	preCCQE13,	
    preCCQE14_R,	preCCQE15,	preCCQE16,	preCCQE17,	preCCQE18).
Compute post_CCQE_mean=mean( post_CCQE1,	post_CCQE2,	post_CCQE3,	post_CCQE4_R,	post_CCQE5,	
    post_CCQE6,	post_CCQE7,	post_CCQE8,	post_CCQE9_R,	post_CCQE10,	post_CCQE11,	post_CCQE12,	post_CCQE13,	
    post_CCQE14_R,	post_CCQE15,	post_CCQE16,	post_CCQE17,	post_CCQE18).
Compute fu_CCQE_mean=mean( fu_CCQE1,	fu_CCQE2,	fu_CCQE3,	fu_CCQE4_R,	fu_CCQE5,	
    fu_CCQE6,	fu_CCQE7,	fu_CCQE8,	fu_CCQE9_R,	fu_CCQE10,	fu_CCQE11,	fu_CCQE12,	fu_CCQE13,	
    fu_CCQE14_R,	fu_CCQE15,	fu_CCQE16,	fu_CCQE17,	fu_CCQE18).
execute.


**********************************************************************************************************************************************************.
*BITSEA.
**********************************************************************************************************************************************************.

alter type post_bitsea_pf41(f8.0) .
missing values preBITSEA_PF1 to preBITSEA_PF42(3,888,999,9999).
missing values fu_BITSEA_PF1 to fu_BITSEA_PF42(3,888,999,9999).
missing values post_BITSEA_PF1 to post_BITSEA_PF8(3,888,999,9999).
missing values post_BITSEA_PF9 to post_BITSEA_PF36(3,888,999,9999).
missing values post_BITSEA_PF37 (3,888,999,9999).
missing values post_BITSEA_PF38 to post_BITSEA_PF41(3,888,999,9999).
missing values post_BITSEA_PF42 (3,888,999,9999).


*Bitsea problem.
COMPUTE pre_bitseaprob_mean= mean(prebitsea_pf2,	prebitsea_pf3,	prebitsea_pf4,	prebitsea_pf6,	
    prebitsea_pf7,	prebitsea_pf8,	prebitsea_pf9,	prebitsea_pf11,	prebitsea_pf12,	
    prebitsea_pf14,	prebitsea_pf16,	prebitsea_pf17,	prebitsea_pf18,	prebitsea_pf21,	
    prebitsea_pf23,	prebitsea_pf24,	prebitsea_pf26,	prebitsea_pf27,	prebitsea_pf28,	
    prebitsea_pf30,	prebitsea_pf32,	prebitsea_pf33,	prebitsea_pf34,	prebitsea_pf35,	
    prebitsea_pf36,	prebitsea_pf37,	prebitsea_pf38,	prebitsea_pf39,	prebitsea_pf40,	
    prebitsea_pf41,	prebitsea_pf42) .
COMPUTE post_bitseaprob_mean= mean(post_bitsea_pf2,	post_bitsea_pf3,	post_bitsea_pf4,	post_bitsea_pf6,	
    post_bitsea_pf7,	post_bitsea_pf8,	post_bitsea_pf9,	post_bitsea_pf11,	post_bitsea_pf12,	
    post_bitsea_pf14,	post_bitsea_pf16,	post_bitsea_pf17,	post_bitsea_pf18,	post_bitsea_pf21,	
    post_bitsea_pf23,	post_bitsea_pf24,	post_bitsea_pf26,	post_bitsea_pf27,	post_bitsea_pf28,	
    post_bitsea_pf30,	post_bitsea_pf32,	post_bitsea_pf33,	post_bitsea_pf34,	post_bitsea_pf35,	
    post_bitsea_pf36,	post_bitsea_pf37,	post_bitsea_pf38,	post_bitsea_pf39,	post_bitsea_pf40, 
    post_bitsea_pf41 ,	post_bitsea_pf42 ) .
COMPUTE fu_bitseaprob_mean= mean(fu_bitsea_pf2,	fu_bitsea_pf3,	fu_bitsea_pf4,	fu_bitsea_pf6,	
    fu_bitsea_pf7,	fu_bitsea_pf8,	fu_bitsea_pf9,	fu_bitsea_pf11,	fu_bitsea_pf12,	
    fu_bitsea_pf14,	fu_bitsea_pf16,	fu_bitsea_pf17,	fu_bitsea_pf18,	fu_bitsea_pf21,	
    fu_bitsea_pf23,	fu_bitsea_pf24,	fu_bitsea_pf26,	fu_bitsea_pf27,	fu_bitsea_pf28,	
    fu_bitsea_pf30,	fu_bitsea_pf32,	fu_bitsea_pf33,	fu_bitsea_pf34,	fu_bitsea_pf35,	
    fu_bitsea_pf36,	fu_bitsea_pf37,	fu_bitsea_pf38,	fu_bitsea_pf39,	fu_bitsea_pf40,	
    fu_bitsea_pf41,	fu_bitsea_pf42) .
Execute.

* BITSEA Competence .
COMPUTE pre_bitseacomp_mean=mean(prebitsea_pf1,	prebitsea_pf5,	prebitsea_pf10,	prebitsea_pf13,	
    prebitsea_pf15,	prebitsea_pf19,	prebitsea_pf20,	prebitsea_pf22,	prebitsea_pf25,	
    prebitsea_pf29,	prebitsea_pf31).
COMPUTE post_bitseacomp_mean=mean(post_bitsea_pf1,	post_bitsea_pf5,	post_bitsea_pf10,	post_bitsea_pf13,	
    post_bitsea_pf15,	post_bitsea_pf19,	post_bitsea_pf20,	post_bitsea_pf22,	post_bitsea_pf25,	
    post_bitsea_pf29,	post_bitsea_pf31).
COMPUTE fu_bitseacomp_mean=mean(fu_bitsea_pf1,	fu_bitsea_pf5,	fu_bitsea_pf10,	fu_bitsea_pf13,	
    fu_bitsea_pf15,	fu_bitsea_pf19,	fu_bitsea_pf20,	fu_bitsea_pf22,	fu_bitsea_pf25,	
    fu_bitsea_pf29,	fu_bitsea_pf31).
execute.



SAVE OUTFILE='C:\Users\Nancy Briggs\OneDrive - UNSW\Documents\Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\data_prep.sav'
  /COMPRESSED.




SAVE TRANSLATE OUTFILE='C:\Users\Nancy Briggs\OneDrive - UNSW\Documents\Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\data_prep.csv'
  /TYPE=CSV
  /ENCODING='UTF8'
  /MAP
  /REPLACE
  /FIELDNAMES
  /CELLS=VALUES.



*** getting totaltimefor DPICS .

GET
  FILE='C:\Users\Nancy Briggs\OneDrive - UNSW\Documents\Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\PCITT RCT main dataset 24.1.22.sav'.
DATASET NAME DataSet1 WINDOW=FRONT.




SAVE OUTFILE='C:\Users\Nancy Briggs\OneDrive - UNSW\Documents\Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\data_prep_DPICStime.sav'
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
  FILE='C:\Users\Nancy Briggs\OneDrive - UNSW\Documents\Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\data_prep_DPICStime.sav'.
DATASET NAME DataSet1 WINDOW=FRONT.


SAVE TRANSLATE OUTFILE='C:\Users\Nancy Briggs\OneDrive - UNSW\Documents\Faculty\Jane Kohloff\PCIT CoS RCT\Primary\PCIT-CoS\data_prep_DPICStime.csv'
  /TYPE=CSV
  /ENCODING='UTF8'
  /MAP
  /REPLACE
  /FIELDNAMES
  /CELLS=VALUES.

