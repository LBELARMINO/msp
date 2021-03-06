USE [BANCOMSP]
GO
/****** Object:  Table [dbo].[ESTADOCIVIL]    Script Date: 19/01/2018 08:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ESTADOCIVIL](
	[ESC_ISN] [int] NOT NULL,
	[ESC_DSC] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PESSOA]    Script Date: 19/01/2018 08:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PESSOA](
	[PES_ISN] [int] NOT NULL,
	[PES_FOT] [image] NULL,
	[PES_NOM] [varchar](200) NULL,
	[PES_CHA] [varchar](100) NULL,
	[PES_CON] [varchar](100) NULL,
	[PES_RAM] [varchar](100) NULL,
	[PES_SEX_ISN] [int] NULL,
	[PES_PRO_ISN] [int] NULL,
	[PES_DAT] [datetime] NULL,
	[PES_DAT_NAS] [datetime] NULL,
	[PES_IDA] [numeric](18, 0) NULL,
	[PES_END] [varchar](200) NULL,
	[PES_END_COB] [varchar](200) NULL,
	[PES_END_NUM] [char](10) NULL,
	[PES_END_COM] [varchar](200) NULL,
	[PES_PR] [varchar](100) NULL,
	[PES_EST_ISN] [int] NULL,
	[PES_BAI_NF] [varchar](100) NULL,
	[PES_CID_NF] [char](100) NULL,
	[PES_UF_NF] [char](2) NULL,
	[PES_DDD] [char](4) NULL,
	[PES_CID_ISN] [int] NULL,
	[PES_BAI_ISN] [int] NULL,
	[PES_CEP] [varchar](20) NULL,
	[PES_FON_FIX] [varchar](50) NULL,
	[PES_FON_CEL] [varchar](50) NULL,
	[PES_FON_FAX] [varchar](50) NULL,
	[PES_FON_OBS] [varchar](50) NULL,
	[PES_EMA] [varchar](150) NULL,
	[PES_TIP] [char](3) NULL,
	[PES_SEN] [varchar](20) NULL,
	[PES_USU] [char](1) NULL,
	[PES_OBS] [varchar](500) NULL,
	[PES_RG] [varchar](20) NULL,
	[PES_DOC_ORI] [char](6) NULL,
	[PES_DOC_ORI_UF] [char](2) NULL,
	[PES_DOC_DAT] [datetime] NULL,
	[PES_TIP_FJ] [char](1) NULL,
	[PES_CPF_CNP] [varchar](20) NULL,
	[PES_CGF] [char](14) NULL,
	[PES_INS_MUN] [char](14) NULL,
	[PES_NOM_PAI] [varchar](100) NULL,
	[PES_NOM_MAE] [varchar](100) NULL,
	[PES_PGP_ISN] [int] NULL,
	[PES_REL_ISN] [int] NULL,
	[PES_ESC_ISN] [int] NULL,
	[PES_REC_ISN] [int] NULL,
	[PES_USU_ISN] [int] NULL,
	[PES_GED_1] [varchar](500) NULL,
	[PES_GED_2] [varchar](500) NULL,
	[PES_GED_3] [varchar](500) NULL,
	[PES_GED_4] [varchar](500) NULL,
	[PES_GED_5] [varchar](500) NULL,
	[PES_COD_INT] [varchar](12) NULL,
	[PES_PLA_ISN] [int] NULL,
	[PES_DAV] [int] NULL,
	[PES_CSN] [char](3) NULL,
	[PES_LGT_ISN] [int] NULL,
	[PES_LGD_ISN] [int] NULL,
	[PES_DAT_FAL] [datetime] NULL,
	[PES_FON_EXT] [varchar](16) NULL,
	[PES_DAT_ADM] [datetime] NULL,
	[PES_FAL] [char](3) NULL,
	[PES_CLT_ISN] [int] NULL,
	[PES_VND_ISN] [int] NULL,
	[PES_DAT_CAR] [datetime] NULL,
	[PES_ATV] [char](3) NULL,
	[PES_ASS] [char](3) NULL,
	[PES_VAL_ATU] [money] NULL,
	[PES_VAL_ANT] [money] NULL,
	[PES_EXC] [char](3) NULL,
	[PES_TRO_TIT_ANT_ISN] [int] NULL,
	[PES_TRO_DEP_ISN] [int] NULL,
	[PES_DAT_VNC] [datetime] NULL,
	[PES_VAL_ADE] [money] NULL,
	[PES_DAT_EXC] [datetime] NULL,
	[PES_IMA_001] [varchar](200) NULL,
	[PES_IMA_002] [varchar](200) NULL,
	[PES_IMA_003] [varchar](200) NULL,
	[PES_IMA_004] [varchar](200) NULL,
	[PES_IMA_005] [varchar](200) NULL,
	[PES_REP_ISN] [int] NULL,
	[PES_IMA_3X4] [varchar](200) NULL,
	[PES_TIT_CLI_ISN] [int] NULL,
	[PES_TIP_SEQ] [int] NULL,
	[PES_CTT] [varchar](100) NULL,
	[PES_DAT_DEM] [datetime] NULL,
	[PES_CTP] [varchar](30) NULL,
	[PES_FUN] [char](1) NULL,
	[PES_PIS] [varchar](30) NULL,
	[PES_STS] [char](3) NULL,
	[PES_COB_ISN] [int] NULL,
	[PES_DAT_CAD] [datetime] NULL,
	[PES_MEN_ATU] [money] NULL,
	[PES_MEN_ANT] [money] NULL,
	[PES_ANF_CIC_PRD] [int] NULL,
	[EMP] [int] NULL,
	[PES_FIN_BLO] [char](3) NULL,
	[PES_FIN_REN_VAL] [money] NULL,
	[PES_FIN_LIM_VAL] [money] NULL,
	[PES_FIN_LIM_CHE_VAL] [money] NULL,
	[PES_FIN_ATR_MAX] [int] NULL,
	[PES_FIN_STF_ISN] [int] NULL,
	[PES_FIN_SPC] [nchar](10) NULL,
	[PLACA_TRA] [char](10) NULL,
	[UF_PLACA_TRA] [char](2) NULL,
	[PES_DOC] [varchar](20) NULL,
	[PES_ID] [varchar](100) NULL,
	[PES_REM] [char](3) NULL,
	[PES_DEP_ISN] [int] NULL,
	[PES_END_COB_BAI] [varchar](100) NULL,
	[PES_END_COB_CID] [varchar](100) NULL,
	[PES_END_COB_UF] [char](2) NULL,
	[PES_END_COB_CEP] [varchar](15) NULL,
	[PES_END_COB_FON] [varchar](16) NULL,
	[PES_SUB_SEQ_DEP] [int] NULL,
	[PES_FIN] [char](3) NULL,
	[PES_VEN_ISN] [int] NULL,
	[PES_FON_CON] [varchar](100) NULL,
	[PES_MAT] [char](8) NULL,
	[PES_ORI] [char](3) NULL,
	[PES_RAC] [varchar](40) NULL,
	[PES_DEF] [varchar](100) NULL,
	[PES_CJG] [varchar](100) NULL,
	[PES_MOT_EXC_ISN] [int] NULL,
	[PES_PLA_ISN_ANT] [int] NULL,
	[PES_PLA_MOT_TRO_ISN] [int] NULL,
	[PES_PLA_TCO_ISN] [int] NULL,
	[PES_PLA_DAT] [datetime] NULL,
	[PES_PLA_DAT_CAD] [datetime] NULL,
	[PES_PLA_VAL_MES] [money] NULL,
	[PES_PLA_VAL_ENT] [money] NULL,
	[PES_PLA_QTD_MES] [int] NULL,
	[PES_PLA_DIA_VNC] [int] NULL,
	[PES_PLA_DIA_CAR] [int] NULL,
	[PES_FIS_COD_ICM] [int] NULL,
	[PES_FIS_COD_CFO] [int] NULL,
	[PES_FIS_INDIEDEST] [int] NULL,
	[PES_END_LOG] [varchar](50) NULL,
	[PES_CBK_ISN] [int] NULL,
	[PES_CBK_FED_ISN] [int] NULL,
	[PES_CBK_CLU_ISN] [int] NULL,
	[PES_INS_SEFIP] [char](2) NULL,
	[PES_INS_CAGED] [char](2) NULL,
	[PES_INS_RAIS] [int] NULL,
	[PES_RAC_ISN] [int] NULL,
	[PES_INS_ISN] [int] NULL,
	[PES_BAN_ISN] [char](3) NULL,
	[PES_BAN_AGN_ISN] [int] NULL,
	[PES_BAN_CC] [char](20) NULL,
	[PES_RG_SSP] [varchar](200) NULL,
	[PES_RG_DAT] [datetime] NULL,
	[PES_RH_CTP_SER] [varchar](20) NULL,
	[PES_RH_TIT_ELE] [varchar](40) NULL,
	[PES_RH_REB_FOP_ISN] [int] NULL,
	[PES_RH_TRN_ISN] [int] NULL,
	[PES_CTT_TIP_ISN] [int] NULL,
	[PES_VAL_SAL] [money] NULL,
	[PES_CTT_EXP_ISN] [int] NULL,
	[PES_RH_CBO_ISN] [varchar](7) NULL,
	[PES_RH_CID_NAT_ISN] [int] NULL,
	[PES_RH_DEP_DOC] [char](3) NULL,
	[PES_RH_DEP_DEN] [datetime] NULL,
	[PES_RH_DEP_DVA] [datetime] NULL,
	[PES_RH_MAT] [char](50) NULL,
	[PES_RH_VTT_ISN] [int] NULL,
	[PES_RH_DAT_ADM] [datetime] NULL,
	[PES_RH_BAN_AGN_ISN] [int] NULL,
	[PES_RH_RHT_ISN] [int] NULL,
	[PES_RH_RHE_ISN] [int] NULL,
	[PES_RH_VAL_ISN] [int] NULL,
	[PES_RH_RCT_ISN] [int] NULL,
	[PES_RH_RHT_QTD] [float] NULL,
	[PES_RH_CTP] [varchar](30) NULL,
	[PES_RH_PIS] [varchar](30) NULL,
	[PES_RH_DEF] [varchar](100) NULL,
	[PES_RH_RAC_ISN] [int] NULL,
	[PES_RH_INS_ISN] [int] NULL,
	[PES_RH_AGN_ISN] [int] NULL,
	[PES_RH_BAN_CC] [char](20) NULL,
	[PES_RH_BAN_ISN] [char](3) NULL,
	[PES_DEP_STS] [char](3) NULL,
	[PES_CBK_CLU_DSC] [varchar](200) NULL,
	[PES_FON_LON] [varchar](40) NULL,
	[PES_CBK_ID] [char](20) NULL,
	[PES_CBK_NUM_ANT] [char](20) NULL,
	[PES_CBK_CER] [char](20) NULL,
	[PES_CBK_EST] [char](40) NULL,
	[PES_CBK_GRA] [char](40) NULL,
	[PES_CBK_FAX_BRA] [char](20) NULL,
	[PES_CBK_FAX_AMA] [char](20) NULL,
	[PES_CBK_FAX_VER] [char](20) NULL,
	[PES_CBK_FAX_LAR] [char](20) NULL,
	[PES_CBK_FAX_VED] [char](20) NULL,
	[PES_CBK_FAX_ROX] [char](20) NULL,
	[PES_CBK_FAX_MAR] [char](20) NULL,
	[PES_CBK_FAX_DAN_1] [char](20) NULL,
	[PES_CBK_FAX_DAN_2] [char](20) NULL,
	[PES_CBK_FAX_DAN_3] [char](20) NULL,
	[PES_CBK_FAX_DAN_4] [char](20) NULL,
	[PES_CBK_FAX_DAN_5] [char](20) NULL,
	[PES_CBK_FAX_DAN_6] [char](20) NULL,
	[PES_CBK_FAX_DAN_7] [char](20) NULL,
	[PES_CBK_FAX_DAN_8] [char](20) NULL,
	[PES_CBK_FAX_DAN_9] [char](20) NULL,
	[PES_CBK_TRA] [char](50) NULL,
	[PES_COM_FIN] [float] NULL,
 CONSTRAINT [PK_PESSOA] PRIMARY KEY CLUSTERED 
(
	[PES_ISN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROFISSAO]    Script Date: 19/01/2018 08:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROFISSAO](
	[PRO_ISN] [int] NOT NULL,
	[PRO_NOM] [nvarchar](80) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RELIGIAO]    Script Date: 19/01/2018 08:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RELIGIAO](
	[REL_ISN] [int] NOT NULL,
	[REL_DSC] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SEXO]    Script Date: 19/01/2018 08:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SEXO](
	[SEX_ISN] [int] NOT NULL,
	[SEX_DSC] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[VW_CODPESSOA]    Script Date: 19/01/2018 08:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_CODPESSOA]
as 
SELECT ISNULL(MAX(PES_TIP_SEQ),0)+1 AS CODIGOCLI FROM PESSOA
GO
