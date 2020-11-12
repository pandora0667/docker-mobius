--
-- Table structure for table lookup
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
-- SET character_set_client = utf8mb4 ;
CREATE TABLE lookup
(
  pi varchar(200) NOT NULL,
  ri varchar(200) NOT NULL,
  ty integer NOT NULL,
  ct varchar(15) NOT NULL,
  st integer NOT NULL,
  rn varchar(45) NOT NULL,
  lt varchar(15) NOT NULL,
  et varchar(15) NOT NULL,
  acpi varchar(200) NOT NULL,
  lbl varchar(200) NOT NULL,
  at varchar(45) NOT NULL,
  aa varchar(45) NOT NULL,
  sri varchar(25) NOT NULL,
  spi varchar(25) NOT NULL,
  subl text,
  PRIMARY KEY (ri)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table acp
--

DROP TABLE IF EXISTS acp;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
--  -- SET character_set_client = utf8mb4 ;
CREATE TABLE acp
(
  ri varchar(200) PRIMARY KEY,
  pv text NOT NULL,
  pvs text NOT NULL,
  CONSTRAINT acp_ri FOREIGN KEY (ri) REFERENCES lookup (ri) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ae
--

DROP TABLE IF EXISTS ae;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
--  -- SET character_set_client = utf8mb4 ;
CREATE TABLE ae
(
  ri VARCHAR(200) PRIMARY KEY,
  apn VARCHAR(45) NOT NULL,
  api VARCHAR(45) NOT NULL,
  aei VARCHAR(200) UNIQUE NOT NULL,
  poa VARCHAR(200) NOT NULL,
  "or" VARCHAR(45) NOT NULL,
  rr VARCHAR(45) NOT NULL,
  nl VARCHAR(45) NOT NULL,
  csz VARCHAR(45) DEFAULT NULL,
  srv VARCHAR(45) DEFAULT NULL,
  CONSTRAINT ae_ri FOREIGN KEY (ri) REFERENCES lookup (ri) ON DELETE CASCADE ON UPDATE CASCADE
);

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table cb
--

DROP TABLE IF EXISTS cb;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
--  -- SET character_set_client = utf8mb4 ;
CREATE TABLE cb
(
  ri varchar(200) NOT NULL,
  cst varchar(45) NOT NULL,
  csi varchar(45) NOT NULL,
  srt varchar(100) NOT NULL,
  poa varchar(200) NOT NULL,
  nl varchar(45) NOT NULL,
  ncp varchar(45) NOT NULL,
  srv varchar(45) DEFAULT NULL,
  PRIMARY KEY (ri),
  CONSTRAINT cb_ri FOREIGN KEY (ri) REFERENCES lookup (ri) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table cin
--

DROP TABLE IF EXISTS cin;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
-- SET character_set_client = utf8mb4 ;
CREATE TABLE cin
(
  pi varchar(200) NOT NULL,
  ri varchar(200) UNIQUE NOT NULL,
  cs INTEGER NOT NULL,
  cr varchar(45) NOT NULL,
  cnf varchar(45) NOT NULL,
  "or" varchar(45) NOT NULL,
  con text NOT NULL,
  PRIMARY KEY (ri,pi,cs),
  CONSTRAINT cin_ri FOREIGN KEY (ri) REFERENCES lookup (ri) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table cnt
--

DROP TABLE IF EXISTS cnt;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
--  -- SET character_set_client = utf8mb4 ;
CREATE TABLE cnt
(
  ri varchar(200) NOT NULL,
  cr varchar(45) NOT NULL,
  mni integer NOT NULL,
  mbs integer NOT NULL,
  mia integer NOT NULL,
  cni integer NOT NULL,
  cbs integer NOT NULL,
  li varchar(45) NOT NULL,
  "or" varchar(45) NOT NULL,
  disr varchar(45) DEFAULT NULL,
  PRIMARY KEY (ri),
  CONSTRAINT cnt_ri FOREIGN KEY (ri) REFERENCES lookup (ri) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table csr
--

DROP TABLE IF EXISTS csr;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
-- SET character_set_client = utf8mb4 ;
CREATE TABLE csr
(
  ri varchar(200) NOT NULL,
  cst varchar(45) NOT NULL,
  poa varchar(200) NOT NULL,
  cb varchar(200) NOT NULL,
  csi varchar(200) NOT NULL,
  mei varchar(45) NOT NULL,
  tri varchar(45) NOT NULL,
  rr varchar(45) NOT NULL,
  nl varchar(45) NOT NULL,
  srv varchar(45) DEFAULT NULL,
  PRIMARY KEY (ri),
  CONSTRAINT csr_ri FOREIGN KEY (ri) REFERENCES lookup (ri) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table grp
--

DROP TABLE IF EXISTS grp;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
-- SET character_set_client = utf8mb4 ;
CREATE TABLE grp
(
  ri varchar(200) NOT NULL,
  cr varchar(45) NOT NULL,
  mt varchar(45) NOT NULL,
  cnm varchar(45) NOT NULL,
  mnm varchar(45) NOT NULL,
  mid text NOT NULL,
  macp text NOT NULL,
  mtv varchar(45) NOT NULL,
  csy varchar(45) NOT NULL,
  gn varchar(45) NOT NULL,
  PRIMARY KEY (ri),
  CONSTRAINT grp_ri FOREIGN KEY (ri) REFERENCES lookup (ri) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table hit
--

DROP TABLE IF EXISTS hit;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
-- SET character_set_client = utf8mb4 ;
CREATE TABLE hit
(
  ct varchar(15) NOT NULL,
  http integer DEFAULT NULL,
  mqtt integer DEFAULT NULL,
  coap integer DEFAULT NULL,
  ws integer DEFAULT NULL,
  PRIMARY KEY (ct)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table lcp
--

DROP TABLE IF EXISTS lcp;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
-- SET character_set_client = utf8mb4 ;
CREATE TABLE lcp
(
  ri varchar(200) NOT NULL,
  los varchar(45) NOT NULL,
  lou varchar(45) NOT NULL,
  lot varchar(45) NOT NULL,
  lor varchar(45) NOT NULL,
  loi varchar(45) NOT NULL,
  lon varchar(45) NOT NULL,
  lost varchar(45) NOT NULL,
  cr varchar(45) NOT NULL,
  PRIMARY KEY (ri),
  CONSTRAINT lcp_ri FOREIGN KEY (ri) REFERENCES lookup (ri) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- Table structure for table mgo
--

DROP TABLE IF EXISTS mgo;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
-- SET character_set_client = utf8mb4 ;
CREATE TABLE mgo
(
  ri varchar(200) NOT NULL,
  mgd varchar(45) DEFAULT NULL,
  objs varchar(45) DEFAULT NULL,
  obps varchar(45) DEFAULT NULL,
  dc varchar(45) DEFAULT NULL,
  vr varchar(45) DEFAULT NULL,
  fwnnam varchar(45) DEFAULT NULL,
  url varchar(45) DEFAULT NULL,
  ud varchar(45) DEFAULT NULL,
  uds varchar(45) DEFAULT NULL,
  btl varchar(45) DEFAULT NULL,
  bts varchar(45) DEFAULT NULL,
  dbl varchar(45) DEFAULT NULL,
  man varchar(45) DEFAULT NULL,
  mod varchar(45) DEFAULT NULL,
  dty varchar(45) DEFAULT NULL,
  fwv varchar(45) DEFAULT NULL,
  swv varchar(45) DEFAULT NULL,
  hwv varchar(45) DEFAULT NULL,
  can varchar(45) DEFAULT NULL,
  att varchar(45) DEFAULT NULL,
  cas varchar(45) DEFAULT NULL,
  cus varchar(45) DEFAULT NULL,
  ena varchar(45) DEFAULT NULL,
  dis varchar(45) DEFAULT NULL,
  rbo varchar(45) DEFAULT NULL,
  far varchar(45) DEFAULT NULL,
  cr varchar(45) DEFAULT NULL,
  PRIMARY KEY (ri),
  CONSTRAINT mgo_ri FOREIGN KEY (ri) REFERENCES lookup (ri) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table mms
--

DROP TABLE IF EXISTS mms;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
-- SET character_set_client = utf8mb4 ;
CREATE TABLE mms
(
  ri varchar(200) NOT NULL,
  sid varchar(45) DEFAULT NULL,
  soid varchar(45) DEFAULT NULL,
  stid varchar(45) DEFAULT NULL,
  asd varchar(45) DEFAULT NULL,
  osd varchar(45) DEFAULT NULL,
  sst varchar(45) DEFAULT NULL,
  cr varchar(45) DEFAULT NULL,
  PRIMARY KEY (ri),
  CONSTRAINT mms_ri FOREIGN KEY (ri) REFERENCES lookup (ri) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table nod
--

DROP TABLE IF EXISTS nod;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
-- SET character_set_client = utf8mb4 ;
CREATE TABLE nod
(
  ri varchar(200) NOT NULL,
  ni varchar(45) NOT NULL,
  hcl varchar(45) DEFAULT NULL,
  mgca varchar(45) DEFAULT NULL,
  cr varchar(45) DEFAULT NULL,
  PRIMARY KEY (ri),
  CONSTRAINT nod_ri FOREIGN KEY (ri) REFERENCES lookup (ri) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table req
--

DROP TABLE IF EXISTS req;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
-- SET character_set_client = utf8mb4 ;
CREATE TABLE req
(
  ri varchar(200) NOT NULL,
  op varchar(45) NOT NULL,
  tg varchar(45) NOT NULL,
  org varchar(45) NOT NULL,
  rid varchar(45) NOT NULL,
  mi varchar(45) DEFAULT NULL,
  pc text,
  rs varchar(45) DEFAULT NULL,
  ors varchar(45) DEFAULT NULL,
  cr varchar(45) DEFAULT NULL,
  PRIMARY KEY (ri),
  CONSTRAINT req_ri FOREIGN KEY (ri) REFERENCES lookup (ri) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table smd
--

DROP TABLE IF EXISTS smd;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
-- SET character_set_client = utf8mb4 ;
CREATE TABLE smd
(
  ri varchar(200) NOT NULL,
  cr varchar(45) DEFAULT NULL,
  dsp text,
  "or" text,
  soe varchar(200) DEFAULT NULL,
  rels varchar(400) DEFAULT NULL,
  dcrp text,
  PRIMARY KEY (ri),
  CONSTRAINT sd_ri FOREIGN KEY (ri) REFERENCES lookup (ri) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table sri
--

DROP TABLE IF EXISTS sri;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
-- SET character_set_client = utf8mb4 ;
CREATE TABLE sri
(
  ri varchar(200) UNIQUE NOT NULL,
  sri varchar(45) NOT NULL,
  PRIMARY KEY (ri,sri),
  CONSTRAINT sri_ri FOREIGN KEY (ri) REFERENCES lookup (ri) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table sub
--

DROP TABLE IF EXISTS sub;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
-- SET character_set_client = utf8mb4 ;
CREATE TABLE sub
(
  ri varchar(200) NOT NULL,
  pi varchar(400) DEFAULT NULL,
  enc varchar(45) DEFAULT NULL,
  exc varchar(45) DEFAULT NULL,
  nu varchar(200) DEFAULT NULL,
  gpi varchar(45) DEFAULT NULL,
  nfu varchar(45) DEFAULT NULL,
  bn varchar(45) DEFAULT NULL,
  rl varchar(45) DEFAULT NULL,
  psn varchar(45) DEFAULT NULL,
  pn varchar(45) DEFAULT NULL,
  nsp varchar(45) DEFAULT NULL,
  ln varchar(45) DEFAULT NULL,
  nct varchar(45) DEFAULT NULL,
  nec varchar(45) DEFAULT NULL,
  cr varchar(45) DEFAULT NULL,
  su varchar(45) DEFAULT NULL,
  PRIMARY KEY (ri),
  CONSTRAINT sub_ri FOREIGN KEY (ri) REFERENCES lookup (ri) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table tm
--

DROP TABLE IF EXISTS tm;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
-- SET character_set_client = utf8mb4 ;
CREATE TABLE tm
(
  ri varchar(200) NOT NULL,
  tltm varchar(45) DEFAULT NULL,
  text varchar(45) DEFAULT NULL,
  tct varchar(45) DEFAULT NULL,
  tept varchar(45) DEFAULT NULL,
  tmd varchar(45) DEFAULT NULL,
  tltp varchar(45) DEFAULT NULL,
  tctl varchar(45) DEFAULT NULL,
  tst varchar(45) DEFAULT NULL,
  tmr varchar(45) DEFAULT NULL,
  tmh varchar(45) DEFAULT NULL,
  rqps text,
  rsps text,
  cr varchar(45) DEFAULT NULL,
  PRIMARY KEY (ri),
  CONSTRAINT tm_ri FOREIGN KEY (ri) REFERENCES lookup (ri) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table tr
--

DROP TABLE IF EXISTS tr;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
-- SET character_set_client = utf8mb4 ;
CREATE TABLE tr
(
  ri varchar(200) NOT NULL,
  cr varchar(45) DEFAULT NULL,
  tid varchar(45) NOT NULL,
  tctl varchar(45) DEFAULT NULL,
  tst varchar(45) DEFAULT NULL,
  tltm varchar(45) DEFAULT NULL,
  text varchar(45) DEFAULT NULL,
  tct varchar(45) DEFAULT NULL,
  tltp varchar(45) DEFAULT NULL,
  trqp text NOT NULL,
  trsp text,
  PRIMARY KEY (ri),
  CONSTRAINT tr_ri FOREIGN KEY (ri) REFERENCES lookup (ri) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table ts
--

DROP TABLE IF EXISTS ts;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
-- SET character_set_client = utf8mb4 ;
CREATE TABLE ts
(
  ri varchar(200) NOT NULL,
  cr varchar(45) DEFAULT NULL,
  mni varchar(45) DEFAULT NULL,
  mbs varchar(45) DEFAULT NULL,
  mia varchar(45) DEFAULT NULL,
  cni varchar(45) DEFAULT NULL,
  cbs varchar(45) DEFAULT NULL,
  "or" varchar(45) DEFAULT NULL,
  pei varchar(45) DEFAULT NULL,
  mdd varchar(45) DEFAULT NULL,
  mdn varchar(45) DEFAULT NULL,
  mdl text,
  mdc varchar(45) DEFAULT NULL,
  mdt varchar(45) DEFAULT NULL,
  PRIMARY KEY (ri),
  CONSTRAINT ts_ri FOREIGN KEY (ri) REFERENCES lookup (ri) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table tsi
--

DROP TABLE IF EXISTS tsi;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
--  SET character_set_client = utf8mb4 ;
CREATE TABLE tsi
(
  pi varchar(200) NOT NULL,
  ri varchar(200) UNIQUE NOT NULL,
  cs integer NOT NULL,
  dgt varchar(45) DEFAULT NULL,
  con varchar(45) DEFAULT NULL,
  sqn varchar(45) DEFAULT NULL,
  cr varchar(45) DEFAULT NULL,
  PRIMARY KEY (ri,pi,cs),
  CONSTRAINT tsi_ri FOREIGN KEY (ri) REFERENCES lookup (ri) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-03 12:31:45 
