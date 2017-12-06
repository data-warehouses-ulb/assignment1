insert into [temp].[dbo].[bridge_disappeared]
select [RID]
from [warehouse].[dbo].[bridgeEmployee] emp
where [end] is null and not exists
(
	select *
	from [temp].[dbo].[new_client_emp_surrogate]
	where [emp].[EID] = [EID] and [emp].[CID] = [CID]
)
