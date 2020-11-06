{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red27\green31\blue34;\red255\green255\blue255;\red109\green109\blue109;
\red27\green31\blue34;\red6\green33\blue79;\red6\green33\blue79;}
{\*\expandedcolortbl;;\cssrgb\c14118\c16078\c18039;\cssrgb\c100000\c100000\c100000;\cssrgb\c50196\c50196\c50196;
\cssrgb\c14118\c16078\c18039;\cssrgb\c1176\c18431\c38431;\cssrgb\c1176\c18431\c38431;}
\paperw11900\paperh16840\margl1440\margr1440\vieww23200\viewh8400\viewkind0
\deftab720

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trcbpat3 \trbrdrt\brdrnil \trbrdrl\brdrnil \trbrdrt\brdrnil \trbrdrr\brdrnil 
\clvertalt \clshdrawnil \clwWidth12681\clftsWidth3 \clminw1000 \clheight14930 \clbrdrt\brdrnil \clbrdrl\brdrnil \clbrdrb\brdrnil \clbrdrr\brdrnil \clpadl200 \clpadr200 \gaph\cellx4320
\clmrg \clvertalt \clshdrawnil \clwWidth12681\clftsWidth3 \clminw1000 \clheight14930 \clbrdrt\brdrnil \clbrdrl\brdrnil \clbrdrb\brdrnil \clbrdrr\brdrnil \clpadl200 \clpadr200 \gaph\cellx8640
\pard\intbl\itap1\pardeftab720\sl400\partightenfactor0

\f0\fs24 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 create type OZONE_FORECAST_OUT_T as table (\
    \cf5 \outl0\strokewidth0 OBSERVE_DATE\cf2 \outl0\strokewidth0 \strokec2  DATE,\
    \cf5 \outl0\strokewidth0 RATE\cf2 \outl0\strokewidth0 \strokec2  DOUBLE,\
    kts_1 DOUBLE,\
    kts_1_lowerlimit_95% DOUBLE,\
    kts_1_upperlimit_95% DOUBLE\
);\
\
create table FUNC_HEADER like "SAP_PA_APL"."sap.pa.apl.base::BASE.T.FUNCTION_HEADER";\
insert into FUNC_HEADER values ('Oid', '#42');\
insert into FUNC_HEADER values ('LogLevel', '8');\
\
create view OZONE_RATE_SORTED as select OBSERVE_DATE, RATE from OZONERATE order by \cf5 \outl0\strokewidth0 OBSERVE_DATE\cf2 \outl0\strokewidth0 \strokec2  asc;\
\
create table FORECAST_CONFIG like "SAP_PA_APL"."sap.pa.apl.base::BASE.T.OPERATION_CONFIG_EXTENDED";\
insert into FORECAST_CONFIG values ('APL/Horizon', '12',null);\
insert into FORECAST_CONFIG values ('APL/TimePointColumnName', '\cf5 \outl0\strokewidth0 OBSERVE_DATE\cf2 \outl0\strokewidth0 \strokec2 ',null);\
insert into FORECAST_CONFIG values ('APL/ForcePositiveForecast', 'true',null);\
insert into FORECAST_CONFIG values ('APL/ApplyExtraMode','Forecasts and Error Bars', null);\
\
create table VARIABLE_DESC like "SAP_PA_APL"."sap.pa.apl.base::BASE.T.VARIABLE_DESC_OID";\
\
create table VARIABLE_ROLES like "SAP_PA_APL"."sap.pa.apl.base::BASE.T.VARIABLE_ROLES_WITH_COMPOSITES_OID";\
insert into VARIABLE_ROLES values ('\cf5 \outl0\strokewidth0 OBSERVE_DATE\cf2 \outl0\strokewidth0 \strokec2 ', 'input',NULL,NULL,'#42');\
insert into VARIABLE_ROLES values ('\cf5 \outl0\strokewidth0 RATE\cf2 \outl0\strokewidth0 \strokec2 ', 'target',NULL,NULL,'#42');\
\
create table FORECAST_OUT like OZONE_FORECAST_OUT_T;\
create table OPERATION_LOG like "SAP_PA_APL"."sap.pa.apl.base::BASE.T.OPERATION_LOG";\
create table SUMMARY like "SAP_PA_APL"."sap.pa.apl.base::BASE.T.SUMMARY";\
create table INDICATORS like "SAP_PA_APL"."sap.pa.apl.base::BASE.T.INDICATORS";\
\
\pard\intbl\itap1\tx20544\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 "SAP_PA_APL"\cf2 \strokec2 .\cf6 \strokec6 "sap.pa.apl.base::FORECAST"\cf2 \strokec2 (\cf5 \cb1 \outl0\strokewidth0 FUNC_HEADER\cf2 \cb3 \outl0\strokewidth0 \strokec2 , \cf5 \cb1 \outl0\strokewidth0 FORECAST_CONFIG\cf2 \cb3 \outl0\strokewidth0 \strokec2 , \cf5 \cb1 \outl0\strokewidth0 VARIABLE_DESC\cf2 \cb3 \outl0\strokewidth0 \strokec2 , \cf5 \cb1 \outl0\strokewidth0 VARIABLE_ROLES\cf2 \cb3 \outl0\strokewidth0 \strokec2 , \cf7 \outl0\strokewidth0 '\cf6 \outl0\strokewidth0 \strokec6 STUDENT01\cf7 \outl0\strokewidth0 '\cf2 \outl0\strokewidth0 \strokec2 , \cf6 \strokec6 'OZONE_RATE_SORTED'\cf2 \strokec2 , \cf6 \strokec6 '\cf7 \outl0\strokewidth0 STUDENT01\cf6 \outl0\strokewidth0 \strokec6 '\cf2 \strokec2 , \cf6 \strokec6 'FORECAST_OUT'\cf2 \strokec2 , \cf5 \cb1 \outl0\strokewidth0 OPERATION_LOG\cf2 \cb3 \outl0\strokewidth0 \strokec2 , \cf5 \cb1 \outl0\strokewidth0 SUMMARY\cf2 \cb3 \outl0\strokewidth0 \strokec2 , \cf5 \cb1 \outl0\strokewidth0 INDICATORS\cf2 \cb3 \outl0\strokewidth0 \strokec2 );\cb1 \cell 
\pard\intbl\itap1\cell \lastrow\row
}