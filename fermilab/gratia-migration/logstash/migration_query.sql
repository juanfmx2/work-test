SELECT
R.*,
UPPER(VO.VOName) as vo_vo_name,
UPPER(PNC.ReportableProjectName) as reportable_project_name,
(CASE R.ResourceType WHEN 'BatchPilot' THEN R.HostDescription WHEN 'Batch' THEN S.SiteName ELSE '' END) as site_name
FROM
MasterSummaryData R
JOIN
Probe P on R.ProbeName = P.probename
JOIN
Site S on S.siteid = P.siteid
JOIN
VONameCorrection VC ON (VC.corrid=R.VOcorrid)
JOIN
VO on (VC.void = VO.void)
LEFT JOIN ProjectNameCorrection PNC ON (PNC.ProjectNameCorrid=R.ProjectNameCorrid) 
