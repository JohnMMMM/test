-- SAM-2259 Optimizing Samigo question pool performance 
ALTER TABLE SAM_QUESTIONPOOLITEM_T MODIFY ( ITEMID NUMBER(19) );
CREATE INDEX SAM_IDX_ITEMID ON SAM_QUESTIONPOOLITEM_T (ITEMID);
DROP INDEX SAM_AUTHZ_FUNCTIONID_IDX;
DROP INDEX SAM_AUTHZ_QUALIFIERID_IDX;
CREATE INDEX SAM_IDX_FUNC_QUAL ON SAM_AUTHZDATA_T (FUNCTIONID, QUALIFIERID);
ALTER TABLE SAM_AUTHZDATA_T MODIFY (AGENTID VARCHAR2(99 CHAR));
ALTER TABLE SAM_AUTHZDATA_T MODIFY (LASTMODIFIEDBY VARCHAR2(99 CHAR));
-- End SAM-2259
