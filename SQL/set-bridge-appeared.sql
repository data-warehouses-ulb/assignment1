insert into [temp].[dbo].[bridge_appeared]
select [EID], [CID]
from [temp].[dbo].[new_client_emp_surrogate] client_emp
where not exists
(
	select *
	from [warehouse].[dbo].[bridgeEmployee]
	where [end] is null and [client_emp].[EID] = [EID] and [client_emp].[CID] = [CID]
)
