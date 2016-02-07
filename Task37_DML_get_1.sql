SELECT computerid, 
  comp_types.typename AS typename,
  computername,
  CONCAT('$', CAST(computerprice/100 AS CHAR)) AS price,
  balance,
  comp_vendors.vendorname,
  comp_providers.providername
FROM computer_store.computers AS comps, computer_store.computer_types AS comp_types, 
computer_store.computer_vendors AS comp_vendors, computer_store.computer_providers AS comp_providers     
WHERE comps.typeid = comp_types.typeid AND comps.vendorid = comp_vendors.vendorid AND
comps.providerid = comp_providers.providerid;  
