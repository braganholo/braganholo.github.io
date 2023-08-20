%
%e-Science Central Facts
%
dataSet(1,'e-Science Central').
entity(dc51559,[prop(prov:type,['provone:document']),prop(prov:label,'sequence-map.csv'),prop(prov:type,'null'),prop(prov:value,'null')]).
wasGeneratedBy(dc51559,ex51556).
activity(ex51556,[prop(prov:type,['provone:execution']),prop(prov:label,'CSVExport'),prop(prov:startTime,'2015-07-22 20:29:28'),prop(prov:endTime,'2015-07-22 20:29:31'),prop(wfms:completed,'0')]).
hadPlan(ex51556,pg9).
hadInPort(ex51556,pin91).
hasInPort(pg9,pin91).
wasInformedBy(ex51556,ex51548).
wasPartOf(ex51556,ew51537).
activity(ex51548,[prop(prov:type,['provone:execution']),prop(prov:label,'FilterDups'),prop(prov:startTime,'2015-07-22 20:29:28'),prop(prov:endTime,'2015-07-22 20:29:28'),prop(wfms:completed,'0')]).
hadPlan(ex51548,pg4).
hadOutPort(ex51548,pout41).
hasOutPort(pg4,pout41).
hadOutPort(ex51548,pout42).
hasOutPort(pg4,pout42).
hadOutPort(ex51548,pout43).
hasOutPort(pg4,pout43).
hadInPort(ex51548,pin41).
hasInPort(pg4,pin41).
wasInformedBy(ex51548,ex51541).
wasInformedBy(ex51574,ex51548).
wasInformedBy(ex51565,ex51548).
wasPartOf(ex51548,ew51537).
activity(ex51541,[prop(prov:type,['provone:execution']),prop(prov:label,'ImportFile'),prop(prov:startTime,'2015-07-22 20:29:25'),prop(prov:endTime,'2015-07-22 20:29:27'),prop(wfms:completed,'0')]).
hadPlan(ex51541,pg10).
hadOutPort(ex51541,pout101).
hasOutPort(pg10,pout101).
used(ex51541,dc2012).
wasDerivedFrom(dc51559,dc2012).
wasPartOf(ex51541,ew51537).
entity(dc2012,[prop(prov:type,['provone:document']),prop(prov:label,'COI-Old World sandflies.txt'),prop(prov:type,'null'),prop(prov:value,'null')]).
wasPartOf(ex51603,ew51537).
wasPartOf(ex51594,ew51537).
wasPartOf(ex51583,ew51537).
wasPartOf(ex51574,ew51537).
wasPartOf(ex51565,ew51537).
activity(ex51603,[prop(prov:type,['provone:execution']),prop(prov:label,'ExportFiles'),prop(prov:startTime,'2015-07-22 20:37:13'),prop(prov:endTime,'2015-07-22 20:37:14'),prop(wfms:completed,'0')]).
hadPlan(ex51603,pg5).
hadInPort(ex51603,pin51).
hasInPort(pg5,pin51).
wasInformedBy(ex51603,ex51583).
activity(ex51583,[prop(prov:type,['provone:execution']),prop(prov:label,'MEGA_ML'),prop(prov:startTime,'2015-07-22 20:31:56'),prop(prov:endTime,'2015-07-22 20:37:12'),prop(wfms:completed,'0')]).
hadPlan(ex51583,pg2).
hadInPort(ex51583,pin21).
hasInPort(pg2,pin21).
hadOutPort(ex51583,pout21).
hasOutPort(pg2,pout21).
hadOutPort(ex51583,pout22).
hasOutPort(pg2,pout22).
wasInformedBy(ex51583,ex51574).
wasInformedBy(ex51594,ex51583).
activity(ex51574,[prop(prov:type,['provone:execution']),prop(prov:label,'ClustalW'),prop(prov:startTime,'2015-07-22 20:29:35'),prop(prov:endTime,'2015-07-22 20:31:56'),prop(wfms:completed,'0')]).
hadPlan(ex51574,pg1).
hadOutPort(ex51574,pout11).
hasOutPort(pg1,pout11).
hadInPort(ex51574,pin11).
hasInPort(pg1,pin11).
activity(ex51594,[prop(prov:type,['provone:execution']),prop(prov:label,'ExportFiles'),prop(prov:startTime,'2015-07-22 20:37:12'),prop(prov:endTime,'2015-07-22 20:37:13'),prop(wfms:completed,'0')]).
hadPlan(ex51594,pg3).
hadInPort(ex51594,pin31).
hasInPort(pg3,pin31).
activity(ex51565,[prop(prov:type,['provone:execution']),prop(prov:label,'CSVExport'),prop(prov:startTime,'2015-07-22 20:29:31'),prop(prov:endTime,'2015-07-22 20:29:34'),prop(wfms:completed,'0')]).
hadPlan(ex51565,pg6).
hadInPort(ex51565,pin61).
hasInPort(pg6,pin61).
activity(ew51537,[prop(prov:type,['provone:execution']),prop(prov:label,'Testing ML Pipeline'),prop(prov:startTime,'2015-07-22 20:29:25'),prop(prov:endTime,'2015-07-22 20:37:14'),prop(wfms:completed,'')]).
hadSystem(ew51537, 1).
hadPlan(ew51537,w6480).
entity(w6480,[prop(prov:type,['prov:plan','provone:workflow']),prop(prov:label,'ML Pipeline')]).
hasDataSet(w6480, 1).
entity(pg1,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'ClustalW')]).
hasSubProgram(w6480,pg1).
entity(pout11,[prop(prov:type,['provone:port']),prop(prov:label,'aligned-sequences')]).
entity(pin11,[prop(prov:type,['provone:port']),prop(prov:label,'input-sequences')]).
entity(d11,[prop(prov:type,['provone:data']),prop(prov:label,'Align'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin11,d11).
entity(d12,[prop(prov:type,['provone:data']),prop(prov:label,'AllowRetriesOnTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin11,d12).
entity(d13,[prop(prov:type,['provone:data']),prop(prov:label,'Caption'),prop(prov:type,'String'),prop(prov:value,'${Align}')]).
hasDefaultParam(pin11,d13).
entity(d14,[prop(prov:type,['provone:data']),prop(prov:label,'EnforceInvocationTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin11,d14).
entity(d15,[prop(prov:type,['provone:data']),prop(prov:label,'InvocationTimeout'),prop(prov:type,'Integer'),prop(prov:value,'3600')]).
hasDefaultParam(pin11,d15).
entity(d16,[prop(prov:type,['provone:data']),prop(prov:label,'Label'),prop(prov:type,'String'),prop(prov:value,'ClustalW')]).
hasDefaultParam(pin11,d16).
entity(d17,[prop(prov:type,['provone:data']),prop(prov:label,'Name'),prop(prov:type,'String'),prop(prov:value,'block_1')]).
hasDefaultParam(pin11,d17).
entity(d18,[prop(prov:type,['provone:data']),prop(prov:label,'Output-Type'),prop(prov:type,'String'),prop(prov:value,'FASTA')]).
hasDefaultParam(pin11,d18).
entity(d19,[prop(prov:type,['provone:data']),prop(prov:label,'ProceedOnFail'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin11,d19).
entity(d110,[prop(prov:type,['provone:data']),prop(prov:label,'ProgressUpdateInterval'),prop(prov:type,'Integer'),prop(prov:value,'30')]).
hasDefaultParam(pin11,d110).
entity(d111,[prop(prov:type,['provone:data']),prop(prov:label,'StdOutSize'),prop(prov:type,'Integer'),prop(prov:value,'40960')]).
hasDefaultParam(pin11,d111).
entity(d112,[prop(prov:type,['provone:data']),prop(prov:label,'StrOutAndErrFileName'),prop(prov:type,'String'),prop(prov:value,'Debug-')]).
hasDefaultParam(pin11,d112).
entity(d113,[prop(prov:type,['provone:data']),prop(prov:label,'StreamingChunkSize'),prop(prov:type,'Integer'),prop(prov:value,'1000')]).
hasDefaultParam(pin11,d113).
entity(d114,[prop(prov:type,['provone:data']),prop(prov:label,'TimeoutRetries'),prop(prov:type,'Integer'),prop(prov:value,'1')]).
hasDefaultParam(pin11,d114).
entity(d115,[prop(prov:type,['provone:data']),prop(prov:label,'UploadStdOutAndErr'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin11,d115).
entity(pg5,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'Export Files')]).
hasSubProgram(w6480,pg5).
entity(pin51,[prop(prov:type,['provone:port']),prop(prov:label,'file-list')]).
entity(d51,[prop(prov:type,['provone:data']),prop(prov:label,'AllowRetriesOnTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin51,d51).
entity(d52,[prop(prov:type,['provone:data']),prop(prov:label,'AutomaticFolder'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin51,d52).
entity(d53,[prop(prov:type,['provone:data']),prop(prov:label,'Caption'),prop(prov:type,'String'),prop(prov:value,'')]).
hasDefaultParam(pin51,d53).
entity(d54,[prop(prov:type,['provone:data']),prop(prov:label,'Comments'),prop(prov:type,'String'),prop(prov:value,'Saved data')]).
hasDefaultParam(pin51,d54).
entity(d55,[prop(prov:type,['provone:data']),prop(prov:label,'EnforceInvocationTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin51,d55).
entity(d56,[prop(prov:type,['provone:data']),prop(prov:label,'InvocationTimeout'),prop(prov:type,'Integer'),prop(prov:value,'3600')]).
hasDefaultParam(pin51,d56).
entity(d57,[prop(prov:type,['provone:data']),prop(prov:label,'Label'),prop(prov:type,'String'),prop(prov:value,'Export Files')]).
hasDefaultParam(pin51,d57).
entity(d58,[prop(prov:type,['provone:data']),prop(prov:label,'MakePublic'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin51,d58).
entity(d59,[prop(prov:type,['provone:data']),prop(prov:label,'Name'),prop(prov:type,'String'),prop(prov:value,'block_5')]).
hasDefaultParam(pin51,d59).
entity(d510,[prop(prov:type,['provone:data']),prop(prov:label,'ProceedOnFail'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin51,d510).
entity(d511,[prop(prov:type,['provone:data']),prop(prov:label,'ProgressUpdateInterval'),prop(prov:type,'Integer'),prop(prov:value,'30')]).
hasDefaultParam(pin51,d511).
entity(d512,[prop(prov:type,['provone:data']),prop(prov:label,'SaveToLastImportFolder'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin51,d512).
entity(d513,[prop(prov:type,['provone:data']),prop(prov:label,'SaveToSubdirectory'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin51,d513).
entity(d514,[prop(prov:type,['provone:data']),prop(prov:label,'StdOutSize'),prop(prov:type,'Integer'),prop(prov:value,'4096')]).
hasDefaultParam(pin51,d514).
entity(d515,[prop(prov:type,['provone:data']),prop(prov:label,'StrOutAndErrFileName'),prop(prov:type,'String'),prop(prov:value,'Debug-')]).
hasDefaultParam(pin51,d515).
entity(d516,[prop(prov:type,['provone:data']),prop(prov:label,'StreamingChunkSize'),prop(prov:type,'Integer'),prop(prov:value,'1000')]).
hasDefaultParam(pin51,d516).
entity(d517,[prop(prov:type,['provone:data']),prop(prov:label,'Subdirectory'),prop(prov:type,'String'),prop(prov:value,'')]).
hasDefaultParam(pin51,d517).
entity(d518,[prop(prov:type,['provone:data']),prop(prov:label,'TargetFolder'),prop(prov:type,'Folder'),prop(prov:value,'')]).
hasDefaultParam(pin51,d518).
entity(d519,[prop(prov:type,['provone:data']),prop(prov:label,'TimeoutRetries'),prop(prov:type,'Integer'),prop(prov:value,'1')]).
hasDefaultParam(pin51,d519).
entity(d520,[prop(prov:type,['provone:data']),prop(prov:label,'UploadMetadata'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin51,d520).
entity(d521,[prop(prov:type,['provone:data']),prop(prov:label,'UploadStdOutAndErr'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin51,d521).
entity(pg3,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'Export Files')]).
hasSubProgram(w6480,pg3).
entity(pin31,[prop(prov:type,['provone:port']),prop(prov:label,'file-list')]).
entity(d31,[prop(prov:type,['provone:data']),prop(prov:label,'AllowRetriesOnTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin31,d31).
entity(d32,[prop(prov:type,['provone:data']),prop(prov:label,'AutomaticFolder'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin31,d32).
entity(d33,[prop(prov:type,['provone:data']),prop(prov:label,'Caption'),prop(prov:type,'String'),prop(prov:value,'')]).
hasDefaultParam(pin31,d33).
entity(d34,[prop(prov:type,['provone:data']),prop(prov:label,'Comments'),prop(prov:type,'String'),prop(prov:value,'Saved data')]).
hasDefaultParam(pin31,d34).
entity(d35,[prop(prov:type,['provone:data']),prop(prov:label,'EnforceInvocationTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin31,d35).
entity(d36,[prop(prov:type,['provone:data']),prop(prov:label,'InvocationTimeout'),prop(prov:type,'Integer'),prop(prov:value,'3600')]).
hasDefaultParam(pin31,d36).
entity(d37,[prop(prov:type,['provone:data']),prop(prov:label,'Label'),prop(prov:type,'String'),prop(prov:value,'Export Files')]).
hasDefaultParam(pin31,d37).
entity(d38,[prop(prov:type,['provone:data']),prop(prov:label,'MakePublic'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin31,d38).
entity(d39,[prop(prov:type,['provone:data']),prop(prov:label,'Name'),prop(prov:type,'String'),prop(prov:value,'block_3')]).
hasDefaultParam(pin31,d39).
entity(d310,[prop(prov:type,['provone:data']),prop(prov:label,'ProceedOnFail'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin31,d310).
entity(d311,[prop(prov:type,['provone:data']),prop(prov:label,'ProgressUpdateInterval'),prop(prov:type,'Integer'),prop(prov:value,'30')]).
hasDefaultParam(pin31,d311).
entity(d312,[prop(prov:type,['provone:data']),prop(prov:label,'SaveToLastImportFolder'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin31,d312).
entity(d313,[prop(prov:type,['provone:data']),prop(prov:label,'SaveToSubdirectory'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin31,d313).
entity(d314,[prop(prov:type,['provone:data']),prop(prov:label,'StdOutSize'),prop(prov:type,'Integer'),prop(prov:value,'4096')]).
hasDefaultParam(pin31,d314).
entity(d315,[prop(prov:type,['provone:data']),prop(prov:label,'StrOutAndErrFileName'),prop(prov:type,'String'),prop(prov:value,'Debug-')]).
hasDefaultParam(pin31,d315).
entity(d316,[prop(prov:type,['provone:data']),prop(prov:label,'StreamingChunkSize'),prop(prov:type,'Integer'),prop(prov:value,'1000')]).
hasDefaultParam(pin31,d316).
entity(d317,[prop(prov:type,['provone:data']),prop(prov:label,'Subdirectory'),prop(prov:type,'String'),prop(prov:value,'')]).
hasDefaultParam(pin31,d317).
entity(d318,[prop(prov:type,['provone:data']),prop(prov:label,'TargetFolder'),prop(prov:type,'Folder'),prop(prov:value,'')]).
hasDefaultParam(pin31,d318).
entity(d319,[prop(prov:type,['provone:data']),prop(prov:label,'TimeoutRetries'),prop(prov:type,'Integer'),prop(prov:value,'1')]).
hasDefaultParam(pin31,d319).
entity(d320,[prop(prov:type,['provone:data']),prop(prov:label,'UploadMetadata'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin31,d320).
entity(d321,[prop(prov:type,['provone:data']),prop(prov:label,'UploadStdOutAndErr'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin31,d321).
entity(pg4,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'Filter Duplicates')]).
hasSubProgram(w6480,pg4).
entity(pout41,[prop(prov:type,['provone:port']),prop(prov:label,'sequence-map')]).
entity(pout42,[prop(prov:type,['provone:port']),prop(prov:label,'removed-sequences')]).
entity(pout43,[prop(prov:type,['provone:port']),prop(prov:label,'filtered-fasta-files')]).
entity(pin41,[prop(prov:type,['provone:port']),prop(prov:label,'fasta-files')]).
entity(d41,[prop(prov:type,['provone:data']),prop(prov:label,'AllowRetriesOnTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin41,d41).
entity(d42,[prop(prov:type,['provone:data']),prop(prov:label,'Caption'),prop(prov:type,'String'),prop(prov:value,'')]).
hasDefaultParam(pin41,d42).
entity(d43,[prop(prov:type,['provone:data']),prop(prov:label,'EnforceInvocationTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin41,d43).
entity(d44,[prop(prov:type,['provone:data']),prop(prov:label,'InvocationTimeout'),prop(prov:type,'Integer'),prop(prov:value,'3600')]).
hasDefaultParam(pin41,d44).
entity(d45,[prop(prov:type,['provone:data']),prop(prov:label,'Label'),prop(prov:type,'String'),prop(prov:value,'Filter Duplicates')]).
hasDefaultParam(pin41,d45).
entity(d46,[prop(prov:type,['provone:data']),prop(prov:label,'Name'),prop(prov:type,'String'),prop(prov:value,'block_4')]).
hasDefaultParam(pin41,d46).
entity(d47,[prop(prov:type,['provone:data']),prop(prov:label,'Normalize Sequence Names'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin41,d47).
entity(d48,[prop(prov:type,['provone:data']),prop(prov:label,'ProceedOnFail'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin41,d48).
entity(d49,[prop(prov:type,['provone:data']),prop(prov:label,'ProgressUpdateInterval'),prop(prov:type,'Integer'),prop(prov:value,'30')]).
hasDefaultParam(pin41,d49).
entity(d410,[prop(prov:type,['provone:data']),prop(prov:label,'StdOutSize'),prop(prov:type,'Integer'),prop(prov:value,'4096')]).
hasDefaultParam(pin41,d410).
entity(d411,[prop(prov:type,['provone:data']),prop(prov:label,'StrOutAndErrFileName'),prop(prov:type,'String'),prop(prov:value,'Debug-')]).
hasDefaultParam(pin41,d411).
entity(d412,[prop(prov:type,['provone:data']),prop(prov:label,'StreamingChunkSize'),prop(prov:type,'Integer'),prop(prov:value,'1000')]).
hasDefaultParam(pin41,d412).
entity(d413,[prop(prov:type,['provone:data']),prop(prov:label,'TimeoutRetries'),prop(prov:type,'Integer'),prop(prov:value,'1')]).
hasDefaultParam(pin41,d413).
entity(d414,[prop(prov:type,['provone:data']),prop(prov:label,'UploadStdOutAndErr'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin41,d414).
entity(pg6,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'CSVExport')]).
hasSubProgram(w6480,pg6).
entity(pin61,[prop(prov:type,['provone:port']),prop(prov:label,'input-data')]).
entity(d61,[prop(prov:type,['provone:data']),prop(prov:label,'AllowRetriesOnTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin61,d61).
entity(d62,[prop(prov:type,['provone:data']),prop(prov:label,'AutomaticFolder'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin61,d62).
entity(d63,[prop(prov:type,['provone:data']),prop(prov:label,'Caption'),prop(prov:type,'String'),prop(prov:value,'${FileName}')]).
hasDefaultParam(pin61,d63).
entity(d64,[prop(prov:type,['provone:data']),prop(prov:label,'EnforceInvocationTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin61,d64).
entity(d65,[prop(prov:type,['provone:data']),prop(prov:label,'FileName'),prop(prov:type,'String'),prop(prov:value,'filtered-seqs.csv')]).
hasDefaultParam(pin61,d65).
entity(d66,[prop(prov:type,['provone:data']),prop(prov:label,'IncludeNames'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin61,d66).
entity(d67,[prop(prov:type,['provone:data']),prop(prov:label,'InvocationTimeout'),prop(prov:type,'Integer'),prop(prov:value,'3600')]).
hasDefaultParam(pin61,d67).
entity(d68,[prop(prov:type,['provone:data']),prop(prov:label,'Label'),prop(prov:type,'String'),prop(prov:value,'CSVExport')]).
hasDefaultParam(pin61,d68).
entity(d69,[prop(prov:type,['provone:data']),prop(prov:label,'Name'),prop(prov:type,'String'),prop(prov:value,'block_6')]).
hasDefaultParam(pin61,d69).
entity(d610,[prop(prov:type,['provone:data']),prop(prov:label,'ProceedOnFail'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin61,d610).
entity(d611,[prop(prov:type,['provone:data']),prop(prov:label,'ProgressUpdateInterval'),prop(prov:type,'Integer'),prop(prov:value,'30')]).
hasDefaultParam(pin61,d611).
entity(d612,[prop(prov:type,['provone:data']),prop(prov:label,'QuoteStringOutput'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin61,d612).
entity(d613,[prop(prov:type,['provone:data']),prop(prov:label,'StdOutSize'),prop(prov:type,'Integer'),prop(prov:value,'4096')]).
hasDefaultParam(pin61,d613).
entity(d614,[prop(prov:type,['provone:data']),prop(prov:label,'StrOutAndErrFileName'),prop(prov:type,'String'),prop(prov:value,'Debug-')]).
hasDefaultParam(pin61,d614).
entity(d615,[prop(prov:type,['provone:data']),prop(prov:label,'StreamingChunkSize'),prop(prov:type,'Integer'),prop(prov:value,'1000')]).
hasDefaultParam(pin61,d615).
entity(d616,[prop(prov:type,['provone:data']),prop(prov:label,'TargetFolder'),prop(prov:type,'Folder'),prop(prov:value,'')]).
hasDefaultParam(pin61,d616).
entity(d617,[prop(prov:type,['provone:data']),prop(prov:label,'TimeoutRetries'),prop(prov:type,'Integer'),prop(prov:value,'1')]).
hasDefaultParam(pin61,d617).
entity(d618,[prop(prov:type,['provone:data']),prop(prov:label,'UploadStdOutAndErr'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin61,d618).
entity(pg9,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'CSVExport')]).
hasSubProgram(w6480,pg9).
entity(pin91,[prop(prov:type,['provone:port']),prop(prov:label,'input-data')]).
entity(d91,[prop(prov:type,['provone:data']),prop(prov:label,'AllowRetriesOnTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin91,d91).
entity(d92,[prop(prov:type,['provone:data']),prop(prov:label,'AutomaticFolder'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin91,d92).
entity(d93,[prop(prov:type,['provone:data']),prop(prov:label,'Caption'),prop(prov:type,'String'),prop(prov:value,'${FileName}')]).
hasDefaultParam(pin91,d93).
entity(d94,[prop(prov:type,['provone:data']),prop(prov:label,'EnforceInvocationTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin91,d94).
entity(d95,[prop(prov:type,['provone:data']),prop(prov:label,'FileName'),prop(prov:type,'String'),prop(prov:value,'sequence-map.csv')]).
hasDefaultParam(pin91,d95).
entity(d96,[prop(prov:type,['provone:data']),prop(prov:label,'IncludeNames'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin91,d96).
entity(d97,[prop(prov:type,['provone:data']),prop(prov:label,'InvocationTimeout'),prop(prov:type,'Integer'),prop(prov:value,'3600')]).
hasDefaultParam(pin91,d97).
entity(d98,[prop(prov:type,['provone:data']),prop(prov:label,'Label'),prop(prov:type,'String'),prop(prov:value,'CSVExport')]).
hasDefaultParam(pin91,d98).
entity(d99,[prop(prov:type,['provone:data']),prop(prov:label,'Name'),prop(prov:type,'String'),prop(prov:value,'block_9')]).
hasDefaultParam(pin91,d99).
entity(d910,[prop(prov:type,['provone:data']),prop(prov:label,'ProceedOnFail'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin91,d910).
entity(d911,[prop(prov:type,['provone:data']),prop(prov:label,'ProgressUpdateInterval'),prop(prov:type,'Integer'),prop(prov:value,'30')]).
hasDefaultParam(pin91,d911).
entity(d912,[prop(prov:type,['provone:data']),prop(prov:label,'QuoteStringOutput'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin91,d912).
entity(d913,[prop(prov:type,['provone:data']),prop(prov:label,'StdOutSize'),prop(prov:type,'Integer'),prop(prov:value,'4096')]).
hasDefaultParam(pin91,d913).
entity(d914,[prop(prov:type,['provone:data']),prop(prov:label,'StrOutAndErrFileName'),prop(prov:type,'String'),prop(prov:value,'Debug-')]).
hasDefaultParam(pin91,d914).
entity(d915,[prop(prov:type,['provone:data']),prop(prov:label,'StreamingChunkSize'),prop(prov:type,'Integer'),prop(prov:value,'1000')]).
hasDefaultParam(pin91,d915).
entity(d916,[prop(prov:type,['provone:data']),prop(prov:label,'TargetFolder'),prop(prov:type,'Folder'),prop(prov:value,'')]).
hasDefaultParam(pin91,d916).
entity(d917,[prop(prov:type,['provone:data']),prop(prov:label,'TimeoutRetries'),prop(prov:type,'Integer'),prop(prov:value,'1')]).
hasDefaultParam(pin91,d917).
entity(d918,[prop(prov:type,['provone:data']),prop(prov:label,'UploadStdOutAndErr'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin91,d918).
entity(pg10,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'Import File')]).
hasSubProgram(w6480,pg10).
entity(pout101,[prop(prov:type,['provone:port']),prop(prov:label,'imported-file')]).
entity(d101,[prop(prov:type,['provone:data']),prop(prov:label,'AllowRetriesOnTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
entity(d102,[prop(prov:type,['provone:data']),prop(prov:label,'Caption'),prop(prov:type,'String'),prop(prov:value,'')]).
entity(d103,[prop(prov:type,['provone:data']),prop(prov:label,'DebugMode'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
entity(d104,[prop(prov:type,['provone:data']),prop(prov:label,'EnforceInvocationTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
entity(d105,[prop(prov:type,['provone:data']),prop(prov:label,'InvocationTimeout'),prop(prov:type,'Integer'),prop(prov:value,'3600')]).
entity(d106,[prop(prov:type,['provone:data']),prop(prov:label,'Label'),prop(prov:type,'String'),prop(prov:value,'Import File')]).
entity(d107,[prop(prov:type,['provone:data']),prop(prov:label,'Name'),prop(prov:type,'String'),prop(prov:value,'block_10')]).
entity(d108,[prop(prov:type,['provone:data']),prop(prov:label,'ProceedOnFail'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
entity(d109,[prop(prov:type,['provone:data']),prop(prov:label,'ProgressUpdateInterval'),prop(prov:type,'Integer'),prop(prov:value,'30')]).
entity(d1010,[prop(prov:type,['provone:data']),prop(prov:label,'Source'),prop(prov:type,'Document'),prop(prov:value,'')]).
entity(d1011,[prop(prov:type,['provone:data']),prop(prov:label,'StdOutSize'),prop(prov:type,'Integer'),prop(prov:value,'4096')]).
entity(d1012,[prop(prov:type,['provone:data']),prop(prov:label,'StrOutAndErrFileName'),prop(prov:type,'String'),prop(prov:value,'Debug-')]).
entity(d1013,[prop(prov:type,['provone:data']),prop(prov:label,'StreamingChunkSize'),prop(prov:type,'Integer'),prop(prov:value,'1000')]).
entity(d1014,[prop(prov:type,['provone:data']),prop(prov:label,'TimeoutRetries'),prop(prov:type,'Integer'),prop(prov:value,'1')]).
entity(d1015,[prop(prov:type,['provone:data']),prop(prov:label,'UploadStdOutAndErr'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
entity(pg2,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'MEGA-Maximum Likelihood')]).
hasSubProgram(w6480,pg2).
entity(pin21,[prop(prov:type,['provone:port']),prop(prov:label,'input-data')]).
entity(pout21,[prop(prov:type,['provone:port']),prop(prov:label,'consensus-output')]).
entity(pout22,[prop(prov:type,['provone:port']),prop(prov:label,'analysis-output')]).
entity(d21,[prop(prov:type,['provone:data']),prop(prov:label,'AllowRetriesOnTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin21,d21).
entity(d22,[prop(prov:type,['provone:data']),prop(prov:label,'Branch Swap Filter'),prop(prov:type,'String'),prop(prov:value,'Very Strong')]).
hasDefaultParam(pin21,d22).
entity(d23,[prop(prov:type,['provone:data']),prop(prov:label,'Caption'),prop(prov:type,'String'),prop(prov:value,'${No. of Bootstrap Replications};${Number of Threads}')]).
hasDefaultParam(pin21,d23).
entity(d24,[prop(prov:type,['provone:data']),prop(prov:label,'EnforceInvocationTimeout'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin21,d24).
entity(d25,[prop(prov:type,['provone:data']),prop(prov:label,'Gaps/Missing Data Treatment'),prop(prov:type,'String'),prop(prov:value,'Complete deletion')]).
hasDefaultParam(pin21,d25).
entity(d26,[prop(prov:type,['provone:data']),prop(prov:label,'Initial Tree for ML'),prop(prov:type,'String'),prop(prov:value,'Make initial tree automatically (Default - NJ/BioNJ)')]).
hasDefaultParam(pin21,d26).
entity(d27,[prop(prov:type,['provone:data']),prop(prov:label,'InvocationTimeout'),prop(prov:type,'Integer'),prop(prov:value,'3600')]).
hasDefaultParam(pin21,d27).
entity(d28,[prop(prov:type,['provone:data']),prop(prov:label,'Label'),prop(prov:type,'String'),prop(prov:value,'MEGA-Maximum Likelihood')]).
hasDefaultParam(pin21,d28).
entity(d29,[prop(prov:type,['provone:data']),prop(prov:label,'ML Heuristic Method'),prop(prov:type,'String'),prop(prov:value,'Nearest-Neighbor-Interchange (NNI)')]).
hasDefaultParam(pin21,d29).
entity(d210,[prop(prov:type,['provone:data']),prop(prov:label,'Model/Method'),prop(prov:type,'String'),prop(prov:value,'General Time Reversible model')]).
hasDefaultParam(pin21,d210).
entity(d211,[prop(prov:type,['provone:data']),prop(prov:label,'Name'),prop(prov:type,'String'),prop(prov:value,'block_2')]).
hasDefaultParam(pin21,d211).
entity(d212,[prop(prov:type,['provone:data']),prop(prov:label,'No of Discrete Gamma Categories'),prop(prov:type,'Long'),prop(prov:value,'4')]).
hasDefaultParam(pin21,d212).
entity(d213,[prop(prov:type,['provone:data']),prop(prov:label,'No. of Bootstrap Replications'),prop(prov:type,'Long'),prop(prov:value,'10')]).
hasDefaultParam(pin21,d213).
entity(d214,[prop(prov:type,['provone:data']),prop(prov:label,'Number of Threads'),prop(prov:type,'Long'),prop(prov:value,'4')]).
hasDefaultParam(pin21,d214).
entity(d215,[prop(prov:type,['provone:data']),prop(prov:label,'ProceedOnFail'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin21,d215).
entity(d216,[prop(prov:type,['provone:data']),prop(prov:label,'ProgressUpdateInterval'),prop(prov:type,'Integer'),prop(prov:value,'30')]).
hasDefaultParam(pin21,d216).
entity(d217,[prop(prov:type,['provone:data']),prop(prov:label,'Rates among Sites'),prop(prov:type,'String'),prop(prov:value,'Uniform rates')]).
hasDefaultParam(pin21,d217).
entity(d218,[prop(prov:type,['provone:data']),prop(prov:label,'Site Coverage Cutoff (%)'),prop(prov:type,'Long'),prop(prov:value,'95')]).
hasDefaultParam(pin21,d218).
entity(d219,[prop(prov:type,['provone:data']),prop(prov:label,'StdOutSize'),prop(prov:type,'Integer'),prop(prov:value,'4096')]).
hasDefaultParam(pin21,d219).
entity(d220,[prop(prov:type,['provone:data']),prop(prov:label,'Stop on error'),prop(prov:type,'Boolean'),prop(prov:value,'true')]).
hasDefaultParam(pin21,d220).
entity(d221,[prop(prov:type,['provone:data']),prop(prov:label,'StrOutAndErrFileName'),prop(prov:type,'String'),prop(prov:value,'Debug-')]).
hasDefaultParam(pin21,d221).
entity(d222,[prop(prov:type,['provone:data']),prop(prov:label,'StreamingChunkSize'),prop(prov:type,'Integer'),prop(prov:value,'1000')]).
hasDefaultParam(pin21,d222).
entity(d223,[prop(prov:type,['provone:data']),prop(prov:label,'Test of Phylogeny'),prop(prov:type,'String'),prop(prov:value,'Bootstrap method')]).
hasDefaultParam(pin21,d223).
entity(d224,[prop(prov:type,['provone:data']),prop(prov:label,'TimeoutRetries'),prop(prov:type,'Integer'),prop(prov:value,'1')]).
hasDefaultParam(pin21,d224).
entity(d225,[prop(prov:type,['provone:data']),prop(prov:label,'UploadStdOutAndErr'),prop(prov:type,'Boolean'),prop(prov:value,'false')]).
hasDefaultParam(pin21,d225).
%
%SciCumulus Facts
%
dataSet(2,'SciCumulus').
entity(w1s,[prop(prov:type,['prov:plan','provone:workflow']),prop(prov:label,'sciphy')]).
hasDataSet(w1s, 2).
entity(pg1s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'dataselection')]).
entity(pg2s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'mafft')]).
entity(pg3s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'readseq')]).
entity(pg4s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'modelgenerator')]).
entity(pg5s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'raxml1')]).
entity(pg6s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'raxml2')]).
entity(pg7s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'mergeRaxml')]).
entity(pg8s,[prop(prov:type,['prov:plan','provone:program']),prop(prov:label,'raxml3')]).
entity(pin1s,[prop(prov:type,['provone:port']),prop(prov:label,'idataselection')]).
entity(pint2s,[prop(prov:type,['provone:port']),prop(prov:label,'odataselection')]).
entity(pint3s,[prop(prov:type,['provone:port']),prop(prov:label,'omafft')]).
entity(pint4s,[prop(prov:type,['provone:port']),prop(prov:label,'oreadseq')]).
entity(pint5s,[prop(prov:type,['provone:port']),prop(prov:label,'omodelgenerator')]).
entity(pint6s,[prop(prov:type,['provone:port']),prop(prov:label,'oraxml1')]).
entity(pint7s,[prop(prov:type,['provone:port']),prop(prov:label,'oraxml2')]).
entity(pint8s,[prop(prov:type,['provone:port']),prop(prov:label,'omergeraxml')]).
entity(pout9s,[prop(prov:type,['provone:port']),prop(prov:label,'oraxml3')]).
hasSubProgram(w1s,pg1s).
hasSubProgram(w1s,pg2s).
hasSubProgram(w1s,pg3s).
hasSubProgram(w1s,pg4s).
hasSubProgram(w1s,pg5s).
hasSubProgram(w1s,pg6s).
hasSubProgram(w1s,pg7s).
hasSubProgram(w1s,pg8s).
hasOutPort(pg1s,pint2s).
hasOutPort(pg2s,pint3s).
hasOutPort(pg3s,pint4s).
hasOutPort(pg4s,pint5s).
hasOutPort(pg4s,pint5s).
hasOutPort(pg5s,pint6s).
hasOutPort(pg6s,pint7s).
hasOutPort(pg7s,pint8s).
hasOutPort(pg8s,pout9s).
hasInPort(pg1s,pin1s).
hasInPort(pg2s,pint2s).
hasInPort(pg3s,pint3s).
hasInPort(pg4s,pint4s).
hasInPort(pg5s,pint5s).
hasInPort(pg6s,pint5s).
hasInPort(pg7s,pint6s).
hasInPort(pg7s,pint7s).
hasInPort(pg8s,pint8s).
entity(dc1s,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_FILE'),prop(prov:value,'ORTHOMCL256')]).
entity(dc6s,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_FILE'),prop(prov:value,'ORTHOMCL256')]).
entity(dc12s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE12'),prop(prov:value,'ORTHOMCL256.fastaNumbered')]).
entity(dc13s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE13'),prop(prov:value,'ORTHOMCL256.mafft')]).
entity(dc14s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE14'),prop(prov:value,'dlmafft.data')]).
entity(dc21s,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_NUMBERED'),prop(prov:value,'ORTHOMCL256.fastaNumbered')]).
entity(dc20s,[prop(prov:type,['provone:document']),prop(prov:label,'MAFFT_FILE'),prop(prov:value,'ORTHOMCL256.mafft')]).
entity(dc19s,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_FILE'),prop(prov:value,'ORTHOMCL256')]).
entity(dc26s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE26'),prop(prov:value,'ORTHOMCL256.phylip')]).
entity(dc27s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE27'),prop(prov:value,'dlreadseq.data')]).
entity(dc32s,[prop(prov:type,['provone:document']),prop(prov:label,'PHYLIP'),prop(prov:value,'ORTHOMCL256.phylip')]).
entity(dc31s,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_NUMBERED'),prop(prov:value,'ORTHOMCL256.fastaNumbered')]).
entity(dc30s,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_FILE'),prop(prov:value,'ORTHOMCL256')]).
entity(dc37s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE37'),prop(prov:value,'ORTHOMCL256.mg')]).
entity(dc38s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE38'),prop(prov:value,'ORTHOMCL256.mg.modelFromMG.txt')]).
entity(dc39s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE39'),prop(prov:value,'ORTHOMCL256.phylip_phyml.sh')]).
entity(dc40s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE40'),prop(prov:value,'ORTHOMCL256.phylip_phymlBoot.sh')]).
entity(dc41s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE41'),prop(prov:value,'ORTHOMCL256.phylip_puzzleBoot.sh')]).
entity(dc42s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE42'),prop(prov:value,'ORTHOMCL256.phylip_treePuzzle.sh')]).
entity(dc43s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE43'),prop(prov:value,'dlmodelgenerator.data')]).
entity(dc46s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE46'),prop(prov:value,'modelgenerator0.out')]).
entity(dc56s,[prop(prov:type,['provone:document']),prop(prov:label,'MG'),prop(prov:value,'ORTHOMCL256.mg.modelFromMG.txt')]).
entity(dc55s,[prop(prov:type,['provone:document']),prop(prov:label,'PHYLIP'),prop(prov:value,'ORTHOMCL256.phylip')]).
entity(dc54s,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_NUMBERED'),prop(prov:value,'ORTHOMCL256.fastaNumbered')]).
entity(dc53s,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_FILE'),prop(prov:value,'ORTHOMCL256')]).
entity(dc65s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE65'),prop(prov:value,'ORTHOMCL256.phylip.modelMGBateRaxml.txt')]).
entity(dc66s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE66'),prop(prov:value,'RAxML_bestTree.ORTHOMCL256.phylip_raxml_tree1.singleTree')]).
entity(dc67s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE67'),prop(prov:value,'RAxML_info.ORTHOMCL256.phylip_raxml_tree1.singleTree')]).
entity(dc68s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE68'),prop(prov:value,'RAxML_log.ORTHOMCL256.phylip_raxml_tree1.singleTree')]).
entity(dc69s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE69'),prop(prov:value,'RAxML_parsimonyTree.ORTHOMCL256.phylip_raxml_tree1.singleTree')]).
entity(dc70s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE70'),prop(prov:value,'RAxML_result.ORTHOMCL256.phylip_raxml_tree1.singleTree')]).
entity(dc71s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE71'),prop(prov:value,'dlraxml1.data')]).
entity(dc50s,[prop(prov:type,['provone:document']),prop(prov:label,'MG'),prop(prov:value,'ORTHOMCL256.mg.modelFromMG.txt')]).
entity(dc49s,[prop(prov:type,['provone:document']),prop(prov:label,'PHYLIP'),prop(prov:value,'ORTHOMCL256.phylip')]).
entity(dc48s,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_NUMBERED'),prop(prov:value,'ORTHOMCL256.fastaNumbered')]).
entity(dc47s,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_FILE'),prop(prov:value,'ORTHOMCL256')]).
entity(dc77s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE77'),prop(prov:value,'ORTHOMCL256.phylip.modelMGBateRaxml.txt')]).
entity(dc78s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE78'),prop(prov:value,'RAxML_bootstrap.ORTHOMCL256.phylip_tree2.raxml')]).
entity(dc79s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE79'),prop(prov:value,'RAxML_info.ORTHOMCL256.phylip_tree2.raxml')]).
entity(dc80s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE80'),prop(prov:value,'dlraxml2.data')]).
entity(dc88s,[prop(prov:type,['provone:document']),prop(prov:label,'BOOTSTRAP'),prop(prov:value,'RAxML_bootstrap.ORTHOMCL256.phylip_tree2.raxml')]).
entity(dc87s,[prop(prov:type,['provone:document']),prop(prov:label,'MG'),prop(prov:value,'ORTHOMCL256.mg.modelFromMG.txt')]).
entity(dc86s,[prop(prov:type,['provone:document']),prop(prov:label,'BESTTREE'),prop(prov:value,'RAxML_bestTree.ORTHOMCL256.phylip_raxml_tree1.singleTree')]).
entity(dc85s,[prop(prov:type,['provone:document']),prop(prov:label,'PHYLIP'),prop(prov:value,'ORTHOMCL256.phylip')]).
entity(dc84s,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_NUMBERED'),prop(prov:value,'ORTHOMCL256.fastaNumbered')]).
entity(dc83s,[prop(prov:type,['provone:document']),prop(prov:label,'FASTA_FILE'),prop(prov:value,'ORTHOMCL256')]).
entity(dc92s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE92'),prop(prov:value,'ORTHOMCL256.phylip.modelMGBateRaxml.txt')]).
entity(dc93s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE93'),prop(prov:value,'RAxML_bipartitions.ORTHOMCL256.phylip_tree3.BS_TREE')]).
entity(dc94s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE94'),prop(prov:value,'RAxML_bipartitionsBranchLabels.ORTHOMCL256.phylip_tree3.BS_TREE')]).
entity(dc95s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE95'),prop(prov:value,'RAxML_info.ORTHOMCL256.phylip_tree3.BS_TREE')]).
entity(dc96s,[prop(prov:type,['provone:document']),prop(prov:label,'FILE96'),prop(prov:value,'dlraxml3.data')]).
activity(ew12s,[prop(prov:type,['provone:execution']),prop(prov:label,'sciphy-1'),prop(prov:startTime,'2015-11-13 15:52:53.115+00'),prop(prov:endTime,'2015-11-13 15:55:59.816+00'),prop(wfms:completed,'1')]).
hadSystem(ew12, 2).
activity(ex1s,[prop(prov:type,['provone:execution']),prop(prov:label,'dataselection'),prop(prov:startTime,'2015-11-13 15:52:53.322+00'),prop(prov:endTime,'2015-11-13 15:52:53.332+00'),prop(wfms:completed,'1')]).
activity(ex2s,[prop(prov:type,['provone:execution']),prop(prov:label,'mafft'),prop(prov:startTime,'2015-11-13 15:52:53.46+00'),prop(prov:endTime,'2015-11-13 15:52:53.518+00'),prop(wfms:completed,'1')]).
activity(ex3s,[prop(prov:type,['provone:execution']),prop(prov:label,'readseq'),prop(prov:startTime,'2015-11-13 15:52:53.67+00'),prop(prov:endTime,'2015-11-13 15:52:53.829+00'),prop(wfms:completed,'1')]).
activity(ex4s,[prop(prov:type,['provone:execution']),prop(prov:label,'modelgenerator'),prop(prov:startTime,'2015-11-13 15:52:54.004+00'),prop(prov:endTime,'2015-11-13 15:55:44.235+00'),prop(wfms:completed,'1')]).
activity(ex5s,[prop(prov:type,['provone:execution']),prop(prov:label,'raxml2'),prop(prov:startTime,'2015-11-13 15:55:44.551+00'),prop(prov:endTime,'2015-11-13 15:55:59.464+00'),prop(wfms:completed,'1')]).
activity(ex6s,[prop(prov:type,['provone:execution']),prop(prov:label,'raxml1'),prop(prov:startTime,'2015-11-13 15:55:44.559+00'),prop(prov:endTime,'2015-11-13 15:55:54.382+00'),prop(wfms:completed,'1')]).
activity(ex7s,[prop(prov:type,['provone:execution']),prop(prov:label,'mergeRaxml'),prop(prov:startTime,'null'),prop(prov:endTime,'null'),prop(wfms:completed,'1')]).
activity(ex8s,[prop(prov:type,['provone:execution']),prop(prov:label,'raxml3'),prop(prov:startTime,'2015-11-13 15:55:59.659+00'),prop(prov:endTime,'2015-11-13 15:55:59.673+00'),prop(wfms:completed,'1')]).
wasGeneratedBy(dc1s,ex1s).
wasGeneratedBy(dc6s,ex2s).
wasGeneratedBy(dc12s,ex2s).
wasGeneratedBy(dc13s,ex2s).
wasGeneratedBy(dc14s,ex2s).
wasGeneratedBy(dc21s,ex3s).
wasGeneratedBy(dc20s,ex3s).
wasGeneratedBy(dc19s,ex3s).
wasGeneratedBy(dc26s,ex3s).
wasGeneratedBy(dc27s,ex3s).
wasGeneratedBy(dc32s,ex4s).
wasGeneratedBy(dc31s,ex4s).
wasGeneratedBy(dc30s,ex4s).
wasGeneratedBy(dc37s,ex4s).
wasGeneratedBy(dc38s,ex4s).
wasGeneratedBy(dc39s,ex4s).
wasGeneratedBy(dc40s,ex4s).
wasGeneratedBy(dc41s,ex4s).
wasGeneratedBy(dc42s,ex4s).
wasGeneratedBy(dc43s,ex4s).
wasGeneratedBy(dc46s,ex4s).
wasGeneratedBy(dc56s,ex6s).
wasGeneratedBy(dc55s,ex6s).
wasGeneratedBy(dc54s,ex6s).
wasGeneratedBy(dc53s,ex6s).
wasGeneratedBy(dc65s,ex6s).
wasGeneratedBy(dc66s,ex6s).
wasGeneratedBy(dc67s,ex6s).
wasGeneratedBy(dc68s,ex6s).
wasGeneratedBy(dc69s,ex6s).
wasGeneratedBy(dc70s,ex6s).
wasGeneratedBy(dc71s,ex6s).
wasGeneratedBy(dc50s,ex5s).
wasGeneratedBy(dc49s,ex5s).
wasGeneratedBy(dc48s,ex5s).
wasGeneratedBy(dc47s,ex5s).
wasGeneratedBy(dc77s,ex5s).
wasGeneratedBy(dc78s,ex5s).
wasGeneratedBy(dc79s,ex5s).
wasGeneratedBy(dc80s,ex5s).
wasGeneratedBy(dc88s,ex8s).
wasGeneratedBy(dc87s,ex8s).
wasGeneratedBy(dc86s,ex8s).
wasGeneratedBy(dc85s,ex8s).
wasGeneratedBy(dc84s,ex8s).
wasGeneratedBy(dc83s,ex8s).
wasGeneratedBy(dc92s,ex8s).
wasGeneratedBy(dc93s,ex8s).
wasGeneratedBy(dc94s,ex8s).
wasGeneratedBy(dc95s,ex8s).
wasGeneratedBy(dc96s,ex8s).
used(ex2s,dc5s).
used(ex2s,dc1s).
used(ex3s,dc18s).
used(ex3s,dc6s).
used(ex3s,dc12s).
used(ex3s,dc13s).
used(ex3s,dc14s).
used(ex3s,dc15s).
used(ex3s,dc16s).
used(ex3s,dc17s).
used(ex4s,dc26s).
used(ex4s,dc27s).
used(ex4s,dc28s).
used(ex4s,dc29s).
used(ex4s,dc19s).
used(ex4s,dc21s).
used(ex4s,dc20s).
used(ex6s,dc42s).
used(ex5s,dc42s).
used(ex6s,dc43s).
used(ex5s,dc43s).
used(ex6s,dc44s).
used(ex5s,dc44s).
used(ex6s,dc45s).
used(ex5s,dc45s).
used(ex5s,dc46s).
used(ex6s,dc46s).
used(ex6s,dc32s).
used(ex5s,dc32s).
used(ex6s,dc31s).
used(ex5s,dc31s).
used(ex6s,dc30s).
used(ex5s,dc30s).
used(ex6s,dc37s).
used(ex5s,dc37s).
used(ex6s,dc38s).
used(ex5s,dc38s).
used(ex6s,dc39s).
used(ex5s,dc39s).
used(ex6s,dc40s).
used(ex5s,dc40s).
used(ex6s,dc41s).
used(ex5s,dc41s).
used(ex7s,dc50s).
used(ex7s,dc49s).
used(ex7s,dc48s).
used(ex7s,dc47s).
used(ex7s,dc77s).
used(ex7s,dc78s).
used(ex7s,dc79s).
used(ex7s,dc80s).
used(ex7s,dc81s).
used(ex7s,dc82s).
used(ex7s,dc71s).
used(ex7s,dc56s).
used(ex7s,dc73s).
used(ex7s,dc72s).
used(ex7s,dc55s).
used(ex7s,dc54s).
used(ex7s,dc53s).
used(ex7s,dc65s).
used(ex7s,dc66s).
used(ex7s,dc67s).
used(ex7s,dc68s).
used(ex7s,dc69s).
used(ex7s,dc70s).
wasPartOf(ex1s,ew12s).
wasPartOf(ex7s,ew12s).
wasPartOf(ex2s,ew12s).
wasPartOf(ex3s,ew12s).
wasPartOf(ex4s,ew12s).
wasPartOf(ex6s,ew12s).
wasPartOf(ex5s,ew12s).
wasPartOf(ex8s,ew12s).
wasAssociatedWith(ex1s,u1s).
wasAssociatedWith(ex2s,u1s).
wasAssociatedWith(ex3s,u1s).
wasAssociatedWith(ex4s,u1s).
wasAssociatedWith(ex6s,u1s).
wasAssociatedWith(ex5s,u1s).
wasAssociatedWith(ex8s,u1s).
wasInformedBy(ex2s,ex1s).
wasInformedBy(ex3s,ex2s).
wasInformedBy(ex4s,ex3s).
wasInformedBy(ex5s,ex4s).
wasInformedBy(ex6s,ex4s).
wasInformedBy(ex7s,ex5s).
wasInformedBy(ex7s,ex6s).
wasInformedBy(ex8s,ex7s).
wasDerivedFrom(dc6s,dc1s).
wasDerivedFrom(dc7s,dc1s).
wasDerivedFrom(dc8s,dc1s).
wasDerivedFrom(dc9s,dc1s).
wasDerivedFrom(dc10s,dc1s).
wasDerivedFrom(dc11s,dc1s).
wasDerivedFrom(dc12s,dc1s).
wasDerivedFrom(dc13s,dc1s).
wasDerivedFrom(dc14s,dc1s).
wasDerivedFrom(dc15s,dc1s).
wasDerivedFrom(dc16s,dc1s).
wasDerivedFrom(dc17s,dc1s).
wasDerivedFrom(dc18s,dc1s).
wasDerivedFrom(dc19s,dc6s).
wasDerivedFrom(dc20s,dc6s).
wasDerivedFrom(dc21s,dc6s).
wasDerivedFrom(dc22s,dc6s).
wasDerivedFrom(dc23s,dc6s).
wasDerivedFrom(dc24s,dc6s).
wasDerivedFrom(dc25s,dc6s).
wasDerivedFrom(dc26s,dc6s).
wasDerivedFrom(dc27s,dc6s).
wasDerivedFrom(dc28s,dc6s).
wasDerivedFrom(dc29s,dc6s).
wasDerivedFrom(dc19s,dc12s).
wasDerivedFrom(dc20s,dc12s).
wasDerivedFrom(dc21s,dc12s).
wasDerivedFrom(dc22s,dc12s).
wasDerivedFrom(dc23s,dc12s).
wasDerivedFrom(dc24s,dc12s).
wasDerivedFrom(dc25s,dc12s).
wasDerivedFrom(dc26s,dc12s).
wasDerivedFrom(dc27s,dc12s).
wasDerivedFrom(dc28s,dc12s).
wasDerivedFrom(dc29s,dc12s).
wasDerivedFrom(dc19s,dc13s).
wasDerivedFrom(dc20s,dc13s).
wasDerivedFrom(dc21s,dc13s).
wasDerivedFrom(dc22s,dc13s).
wasDerivedFrom(dc23s,dc13s).
wasDerivedFrom(dc24s,dc13s).
wasDerivedFrom(dc25s,dc13s).
wasDerivedFrom(dc26s,dc13s).
wasDerivedFrom(dc27s,dc13s).
wasDerivedFrom(dc28s,dc13s).
wasDerivedFrom(dc29s,dc13s).
wasDerivedFrom(dc19s,dc14s).
wasDerivedFrom(dc20s,dc14s).
wasDerivedFrom(dc21s,dc14s).
wasDerivedFrom(dc22s,dc14s).
wasDerivedFrom(dc23s,dc14s).
wasDerivedFrom(dc24s,dc14s).
wasDerivedFrom(dc25s,dc14s).
wasDerivedFrom(dc26s,dc14s).
wasDerivedFrom(dc27s,dc14s).
wasDerivedFrom(dc28s,dc14s).
wasDerivedFrom(dc29s,dc14s).
wasDerivedFrom(dc30s,dc19s).
wasDerivedFrom(dc31s,dc19s).
wasDerivedFrom(dc32s,dc19s).
wasDerivedFrom(dc33s,dc19s).
wasDerivedFrom(dc34s,dc19s).
wasDerivedFrom(dc35s,dc19s).
wasDerivedFrom(dc36s,dc19s).
wasDerivedFrom(dc37s,dc19s).
wasDerivedFrom(dc38s,dc19s).
wasDerivedFrom(dc39s,dc19s).
wasDerivedFrom(dc40s,dc19s).
wasDerivedFrom(dc41s,dc19s).
wasDerivedFrom(dc42s,dc19s).
wasDerivedFrom(dc43s,dc19s).
wasDerivedFrom(dc44s,dc19s).
wasDerivedFrom(dc45s,dc19s).
wasDerivedFrom(dc46s,dc19s).
wasDerivedFrom(dc30s,dc20s).
wasDerivedFrom(dc31s,dc20s).
wasDerivedFrom(dc32s,dc20s).
wasDerivedFrom(dc33s,dc20s).
wasDerivedFrom(dc34s,dc20s).
wasDerivedFrom(dc35s,dc20s).
wasDerivedFrom(dc36s,dc20s).
wasDerivedFrom(dc37s,dc20s).
wasDerivedFrom(dc38s,dc20s).
wasDerivedFrom(dc39s,dc20s).
wasDerivedFrom(dc40s,dc20s).
wasDerivedFrom(dc41s,dc20s).
wasDerivedFrom(dc42s,dc20s).
wasDerivedFrom(dc43s,dc20s).
wasDerivedFrom(dc44s,dc20s).
wasDerivedFrom(dc45s,dc20s).
wasDerivedFrom(dc46s,dc20s).
wasDerivedFrom(dc30s,dc21s).
wasDerivedFrom(dc31s,dc21s).
wasDerivedFrom(dc32s,dc21s).
wasDerivedFrom(dc33s,dc21s).
wasDerivedFrom(dc34s,dc21s).
wasDerivedFrom(dc35s,dc21s).
wasDerivedFrom(dc36s,dc21s).
wasDerivedFrom(dc37s,dc21s).
wasDerivedFrom(dc38s,dc21s).
wasDerivedFrom(dc39s,dc21s).
wasDerivedFrom(dc40s,dc21s).
wasDerivedFrom(dc41s,dc21s).
wasDerivedFrom(dc42s,dc21s).
wasDerivedFrom(dc43s,dc21s).
wasDerivedFrom(dc44s,dc21s).
wasDerivedFrom(dc45s,dc21s).
wasDerivedFrom(dc46s,dc21s).
wasDerivedFrom(dc30s,dc26s).
wasDerivedFrom(dc31s,dc26s).
wasDerivedFrom(dc32s,dc26s).
wasDerivedFrom(dc33s,dc26s).
wasDerivedFrom(dc34s,dc26s).
wasDerivedFrom(dc35s,dc26s).
wasDerivedFrom(dc36s,dc26s).
wasDerivedFrom(dc37s,dc26s).
wasDerivedFrom(dc38s,dc26s).
wasDerivedFrom(dc39s,dc26s).
wasDerivedFrom(dc40s,dc26s).
wasDerivedFrom(dc41s,dc26s).
wasDerivedFrom(dc42s,dc26s).
wasDerivedFrom(dc43s,dc26s).
wasDerivedFrom(dc44s,dc26s).
wasDerivedFrom(dc45s,dc26s).
wasDerivedFrom(dc46s,dc26s).
wasDerivedFrom(dc30s,dc27s).
wasDerivedFrom(dc31s,dc27s).
wasDerivedFrom(dc32s,dc27s).
wasDerivedFrom(dc33s,dc27s).
wasDerivedFrom(dc34s,dc27s).
wasDerivedFrom(dc35s,dc27s).
wasDerivedFrom(dc36s,dc27s).
wasDerivedFrom(dc37s,dc27s).
wasDerivedFrom(dc38s,dc27s).
wasDerivedFrom(dc39s,dc27s).
wasDerivedFrom(dc40s,dc27s).
wasDerivedFrom(dc41s,dc27s).
wasDerivedFrom(dc42s,dc27s).
wasDerivedFrom(dc43s,dc27s).
wasDerivedFrom(dc44s,dc27s).
wasDerivedFrom(dc45s,dc27s).
wasDerivedFrom(dc46s,dc27s).
wasDerivedFrom(dc47s,dc30s).
wasDerivedFrom(dc48s,dc30s).
wasDerivedFrom(dc49s,dc30s).
wasDerivedFrom(dc50s,dc30s).
wasDerivedFrom(dc51s,dc30s).
wasDerivedFrom(dc52s,dc30s).
wasDerivedFrom(dc53s,dc30s).
wasDerivedFrom(dc54s,dc30s).
wasDerivedFrom(dc55s,dc30s).
wasDerivedFrom(dc56s,dc30s).
wasDerivedFrom(dc57s,dc30s).
wasDerivedFrom(dc58s,dc30s).
wasDerivedFrom(dc59s,dc30s).
wasDerivedFrom(dc60s,dc30s).
wasDerivedFrom(dc61s,dc30s).
wasDerivedFrom(dc62s,dc30s).
wasDerivedFrom(dc63s,dc30s).
wasDerivedFrom(dc64s,dc30s).
wasDerivedFrom(dc65s,dc30s).
wasDerivedFrom(dc66s,dc30s).
wasDerivedFrom(dc67s,dc30s).
wasDerivedFrom(dc68s,dc30s).
wasDerivedFrom(dc69s,dc30s).
wasDerivedFrom(dc70s,dc30s).
wasDerivedFrom(dc71s,dc30s).
wasDerivedFrom(dc72s,dc30s).
wasDerivedFrom(dc73s,dc30s).
wasDerivedFrom(dc74s,dc30s).
wasDerivedFrom(dc75s,dc30s).
wasDerivedFrom(dc76s,dc30s).
wasDerivedFrom(dc77s,dc30s).
wasDerivedFrom(dc78s,dc30s).
wasDerivedFrom(dc79s,dc30s).
wasDerivedFrom(dc80s,dc30s).
wasDerivedFrom(dc81s,dc30s).
wasDerivedFrom(dc82s,dc30s).
wasDerivedFrom(dc47s,dc31s).
wasDerivedFrom(dc48s,dc31s).
wasDerivedFrom(dc49s,dc31s).
wasDerivedFrom(dc50s,dc31s).
wasDerivedFrom(dc51s,dc31s).
wasDerivedFrom(dc52s,dc31s).
wasDerivedFrom(dc53s,dc31s).
wasDerivedFrom(dc54s,dc31s).
wasDerivedFrom(dc55s,dc31s).
wasDerivedFrom(dc56s,dc31s).
wasDerivedFrom(dc57s,dc31s).
wasDerivedFrom(dc58s,dc31s).
wasDerivedFrom(dc59s,dc31s).
wasDerivedFrom(dc60s,dc31s).
wasDerivedFrom(dc61s,dc31s).
wasDerivedFrom(dc62s,dc31s).
wasDerivedFrom(dc63s,dc31s).
wasDerivedFrom(dc64s,dc31s).
wasDerivedFrom(dc65s,dc31s).
wasDerivedFrom(dc66s,dc31s).
wasDerivedFrom(dc67s,dc31s).
wasDerivedFrom(dc68s,dc31s).
wasDerivedFrom(dc69s,dc31s).
wasDerivedFrom(dc70s,dc31s).
wasDerivedFrom(dc71s,dc31s).
wasDerivedFrom(dc72s,dc31s).
wasDerivedFrom(dc73s,dc31s).
wasDerivedFrom(dc74s,dc31s).
wasDerivedFrom(dc75s,dc31s).
wasDerivedFrom(dc76s,dc31s).
wasDerivedFrom(dc77s,dc31s).
wasDerivedFrom(dc78s,dc31s).
wasDerivedFrom(dc79s,dc31s).
wasDerivedFrom(dc80s,dc31s).
wasDerivedFrom(dc81s,dc31s).
wasDerivedFrom(dc82s,dc31s).
wasDerivedFrom(dc47s,dc32s).
wasDerivedFrom(dc48s,dc32s).
wasDerivedFrom(dc49s,dc32s).
wasDerivedFrom(dc50s,dc32s).
wasDerivedFrom(dc51s,dc32s).
wasDerivedFrom(dc52s,dc32s).
wasDerivedFrom(dc53s,dc32s).
wasDerivedFrom(dc54s,dc32s).
wasDerivedFrom(dc55s,dc32s).
wasDerivedFrom(dc56s,dc32s).
wasDerivedFrom(dc57s,dc32s).
wasDerivedFrom(dc58s,dc32s).
wasDerivedFrom(dc59s,dc32s).
wasDerivedFrom(dc60s,dc32s).
wasDerivedFrom(dc61s,dc32s).
wasDerivedFrom(dc62s,dc32s).
wasDerivedFrom(dc63s,dc32s).
wasDerivedFrom(dc64s,dc32s).
wasDerivedFrom(dc65s,dc32s).
wasDerivedFrom(dc66s,dc32s).
wasDerivedFrom(dc67s,dc32s).
wasDerivedFrom(dc68s,dc32s).
wasDerivedFrom(dc69s,dc32s).
wasDerivedFrom(dc70s,dc32s).
wasDerivedFrom(dc71s,dc32s).
wasDerivedFrom(dc72s,dc32s).
wasDerivedFrom(dc73s,dc32s).
wasDerivedFrom(dc74s,dc32s).
wasDerivedFrom(dc75s,dc32s).
wasDerivedFrom(dc76s,dc32s).
wasDerivedFrom(dc77s,dc32s).
wasDerivedFrom(dc78s,dc32s).
wasDerivedFrom(dc79s,dc32s).
wasDerivedFrom(dc80s,dc32s).
wasDerivedFrom(dc81s,dc32s).
wasDerivedFrom(dc82s,dc32s).
wasDerivedFrom(dc47s,dc37s).
wasDerivedFrom(dc48s,dc37s).
wasDerivedFrom(dc49s,dc37s).
wasDerivedFrom(dc50s,dc37s).
wasDerivedFrom(dc51s,dc37s).
wasDerivedFrom(dc52s,dc37s).
wasDerivedFrom(dc53s,dc37s).
wasDerivedFrom(dc54s,dc37s).
wasDerivedFrom(dc55s,dc37s).
wasDerivedFrom(dc56s,dc37s).
wasDerivedFrom(dc57s,dc37s).
wasDerivedFrom(dc58s,dc37s).
wasDerivedFrom(dc59s,dc37s).
wasDerivedFrom(dc60s,dc37s).
wasDerivedFrom(dc61s,dc37s).
wasDerivedFrom(dc62s,dc37s).
wasDerivedFrom(dc63s,dc37s).
wasDerivedFrom(dc64s,dc37s).
wasDerivedFrom(dc65s,dc37s).
wasDerivedFrom(dc66s,dc37s).
wasDerivedFrom(dc67s,dc37s).
wasDerivedFrom(dc68s,dc37s).
wasDerivedFrom(dc69s,dc37s).
wasDerivedFrom(dc70s,dc37s).
wasDerivedFrom(dc71s,dc37s).
wasDerivedFrom(dc72s,dc37s).
wasDerivedFrom(dc73s,dc37s).
wasDerivedFrom(dc74s,dc37s).
wasDerivedFrom(dc75s,dc37s).
wasDerivedFrom(dc76s,dc37s).
wasDerivedFrom(dc77s,dc37s).
wasDerivedFrom(dc78s,dc37s).
wasDerivedFrom(dc79s,dc37s).
wasDerivedFrom(dc80s,dc37s).
wasDerivedFrom(dc81s,dc37s).
wasDerivedFrom(dc82s,dc37s).
wasDerivedFrom(dc47s,dc38s).
wasDerivedFrom(dc48s,dc38s).
wasDerivedFrom(dc49s,dc38s).
wasDerivedFrom(dc50s,dc38s).
wasDerivedFrom(dc51s,dc38s).
wasDerivedFrom(dc52s,dc38s).
wasDerivedFrom(dc53s,dc38s).
wasDerivedFrom(dc54s,dc38s).
wasDerivedFrom(dc55s,dc38s).
wasDerivedFrom(dc56s,dc38s).
wasDerivedFrom(dc57s,dc38s).
wasDerivedFrom(dc58s,dc38s).
wasDerivedFrom(dc59s,dc38s).
wasDerivedFrom(dc60s,dc38s).
wasDerivedFrom(dc61s,dc38s).
wasDerivedFrom(dc62s,dc38s).
wasDerivedFrom(dc63s,dc38s).
wasDerivedFrom(dc64s,dc38s).
wasDerivedFrom(dc65s,dc38s).
wasDerivedFrom(dc66s,dc38s).
wasDerivedFrom(dc67s,dc38s).
wasDerivedFrom(dc68s,dc38s).
wasDerivedFrom(dc69s,dc38s).
wasDerivedFrom(dc70s,dc38s).
wasDerivedFrom(dc71s,dc38s).
wasDerivedFrom(dc72s,dc38s).
wasDerivedFrom(dc73s,dc38s).
wasDerivedFrom(dc74s,dc38s).
wasDerivedFrom(dc75s,dc38s).
wasDerivedFrom(dc76s,dc38s).
wasDerivedFrom(dc77s,dc38s).
wasDerivedFrom(dc78s,dc38s).
wasDerivedFrom(dc79s,dc38s).
wasDerivedFrom(dc80s,dc38s).
wasDerivedFrom(dc81s,dc38s).
wasDerivedFrom(dc82s,dc38s).
wasDerivedFrom(dc47s,dc39s).
wasDerivedFrom(dc48s,dc39s).
wasDerivedFrom(dc49s,dc39s).
wasDerivedFrom(dc50s,dc39s).
wasDerivedFrom(dc51s,dc39s).
wasDerivedFrom(dc52s,dc39s).
wasDerivedFrom(dc53s,dc39s).
wasDerivedFrom(dc54s,dc39s).
wasDerivedFrom(dc55s,dc39s).
wasDerivedFrom(dc56s,dc39s).
wasDerivedFrom(dc57s,dc39s).
wasDerivedFrom(dc58s,dc39s).
wasDerivedFrom(dc59s,dc39s).
wasDerivedFrom(dc60s,dc39s).
wasDerivedFrom(dc61s,dc39s).
wasDerivedFrom(dc62s,dc39s).
wasDerivedFrom(dc63s,dc39s).
wasDerivedFrom(dc64s,dc39s).
wasDerivedFrom(dc65s,dc39s).
wasDerivedFrom(dc66s,dc39s).
wasDerivedFrom(dc67s,dc39s).
wasDerivedFrom(dc68s,dc39s).
wasDerivedFrom(dc69s,dc39s).
wasDerivedFrom(dc70s,dc39s).
wasDerivedFrom(dc71s,dc39s).
wasDerivedFrom(dc72s,dc39s).
wasDerivedFrom(dc73s,dc39s).
wasDerivedFrom(dc74s,dc39s).
wasDerivedFrom(dc75s,dc39s).
wasDerivedFrom(dc76s,dc39s).
wasDerivedFrom(dc77s,dc39s).
wasDerivedFrom(dc78s,dc39s).
wasDerivedFrom(dc79s,dc39s).
wasDerivedFrom(dc80s,dc39s).
wasDerivedFrom(dc81s,dc39s).
wasDerivedFrom(dc82s,dc39s).
wasDerivedFrom(dc47s,dc40s).
wasDerivedFrom(dc48s,dc40s).
wasDerivedFrom(dc49s,dc40s).
wasDerivedFrom(dc50s,dc40s).
wasDerivedFrom(dc51s,dc40s).
wasDerivedFrom(dc52s,dc40s).
wasDerivedFrom(dc53s,dc40s).
wasDerivedFrom(dc54s,dc40s).
wasDerivedFrom(dc55s,dc40s).
wasDerivedFrom(dc56s,dc40s).
wasDerivedFrom(dc57s,dc40s).
wasDerivedFrom(dc58s,dc40s).
wasDerivedFrom(dc59s,dc40s).
wasDerivedFrom(dc60s,dc40s).
wasDerivedFrom(dc61s,dc40s).
wasDerivedFrom(dc62s,dc40s).
wasDerivedFrom(dc63s,dc40s).
wasDerivedFrom(dc64s,dc40s).
wasDerivedFrom(dc65s,dc40s).
wasDerivedFrom(dc66s,dc40s).
wasDerivedFrom(dc67s,dc40s).
wasDerivedFrom(dc68s,dc40s).
wasDerivedFrom(dc69s,dc40s).
wasDerivedFrom(dc70s,dc40s).
wasDerivedFrom(dc71s,dc40s).
wasDerivedFrom(dc72s,dc40s).
wasDerivedFrom(dc73s,dc40s).
wasDerivedFrom(dc74s,dc40s).
wasDerivedFrom(dc75s,dc40s).
wasDerivedFrom(dc76s,dc40s).
wasDerivedFrom(dc77s,dc40s).
wasDerivedFrom(dc78s,dc40s).
wasDerivedFrom(dc79s,dc40s).
wasDerivedFrom(dc80s,dc40s).
wasDerivedFrom(dc81s,dc40s).
wasDerivedFrom(dc82s,dc40s).
wasDerivedFrom(dc47s,dc41s).
wasDerivedFrom(dc48s,dc41s).
wasDerivedFrom(dc49s,dc41s).
wasDerivedFrom(dc50s,dc41s).
wasDerivedFrom(dc51s,dc41s).
wasDerivedFrom(dc52s,dc41s).
wasDerivedFrom(dc53s,dc41s).
wasDerivedFrom(dc54s,dc41s).
wasDerivedFrom(dc55s,dc41s).
wasDerivedFrom(dc56s,dc41s).
wasDerivedFrom(dc57s,dc41s).
wasDerivedFrom(dc58s,dc41s).
wasDerivedFrom(dc59s,dc41s).
wasDerivedFrom(dc60s,dc41s).
wasDerivedFrom(dc61s,dc41s).
wasDerivedFrom(dc62s,dc41s).
wasDerivedFrom(dc63s,dc41s).
wasDerivedFrom(dc64s,dc41s).
wasDerivedFrom(dc65s,dc41s).
wasDerivedFrom(dc66s,dc41s).
wasDerivedFrom(dc67s,dc41s).
wasDerivedFrom(dc68s,dc41s).
wasDerivedFrom(dc69s,dc41s).
wasDerivedFrom(dc70s,dc41s).
wasDerivedFrom(dc71s,dc41s).
wasDerivedFrom(dc72s,dc41s).
wasDerivedFrom(dc73s,dc41s).
wasDerivedFrom(dc74s,dc41s).
wasDerivedFrom(dc75s,dc41s).
wasDerivedFrom(dc76s,dc41s).
wasDerivedFrom(dc77s,dc41s).
wasDerivedFrom(dc78s,dc41s).
wasDerivedFrom(dc79s,dc41s).
wasDerivedFrom(dc80s,dc41s).
wasDerivedFrom(dc81s,dc41s).
wasDerivedFrom(dc82s,dc41s).
wasDerivedFrom(dc47s,dc42s).
wasDerivedFrom(dc48s,dc42s).
wasDerivedFrom(dc49s,dc42s).
wasDerivedFrom(dc50s,dc42s).
wasDerivedFrom(dc51s,dc42s).
wasDerivedFrom(dc52s,dc42s).
wasDerivedFrom(dc53s,dc42s).
wasDerivedFrom(dc54s,dc42s).
wasDerivedFrom(dc55s,dc42s).
wasDerivedFrom(dc56s,dc42s).
wasDerivedFrom(dc57s,dc42s).
wasDerivedFrom(dc58s,dc42s).
wasDerivedFrom(dc59s,dc42s).
wasDerivedFrom(dc60s,dc42s).
wasDerivedFrom(dc61s,dc42s).
wasDerivedFrom(dc62s,dc42s).
wasDerivedFrom(dc63s,dc42s).
wasDerivedFrom(dc64s,dc42s).
wasDerivedFrom(dc65s,dc42s).
wasDerivedFrom(dc66s,dc42s).
wasDerivedFrom(dc67s,dc42s).
wasDerivedFrom(dc68s,dc42s).
wasDerivedFrom(dc69s,dc42s).
wasDerivedFrom(dc70s,dc42s).
wasDerivedFrom(dc71s,dc42s).
wasDerivedFrom(dc72s,dc42s).
wasDerivedFrom(dc73s,dc42s).
wasDerivedFrom(dc74s,dc42s).
wasDerivedFrom(dc75s,dc42s).
wasDerivedFrom(dc76s,dc42s).
wasDerivedFrom(dc77s,dc42s).
wasDerivedFrom(dc78s,dc42s).
wasDerivedFrom(dc79s,dc42s).
wasDerivedFrom(dc80s,dc42s).
wasDerivedFrom(dc81s,dc42s).
wasDerivedFrom(dc82s,dc42s).
wasDerivedFrom(dc47s,dc43s).
wasDerivedFrom(dc48s,dc43s).
wasDerivedFrom(dc49s,dc43s).
wasDerivedFrom(dc50s,dc43s).
wasDerivedFrom(dc51s,dc43s).
wasDerivedFrom(dc52s,dc43s).
wasDerivedFrom(dc53s,dc43s).
wasDerivedFrom(dc54s,dc43s).
wasDerivedFrom(dc55s,dc43s).
wasDerivedFrom(dc56s,dc43s).
wasDerivedFrom(dc57s,dc43s).
wasDerivedFrom(dc58s,dc43s).
wasDerivedFrom(dc59s,dc43s).
wasDerivedFrom(dc60s,dc43s).
wasDerivedFrom(dc61s,dc43s).
wasDerivedFrom(dc62s,dc43s).
wasDerivedFrom(dc63s,dc43s).
wasDerivedFrom(dc64s,dc43s).
wasDerivedFrom(dc65s,dc43s).
wasDerivedFrom(dc66s,dc43s).
wasDerivedFrom(dc67s,dc43s).
wasDerivedFrom(dc68s,dc43s).
wasDerivedFrom(dc69s,dc43s).
wasDerivedFrom(dc70s,dc43s).
wasDerivedFrom(dc71s,dc43s).
wasDerivedFrom(dc72s,dc43s).
wasDerivedFrom(dc73s,dc43s).
wasDerivedFrom(dc74s,dc43s).
wasDerivedFrom(dc75s,dc43s).
wasDerivedFrom(dc76s,dc43s).
wasDerivedFrom(dc77s,dc43s).
wasDerivedFrom(dc78s,dc43s).
wasDerivedFrom(dc79s,dc43s).
wasDerivedFrom(dc80s,dc43s).
wasDerivedFrom(dc81s,dc43s).
wasDerivedFrom(dc82s,dc43s).
wasDerivedFrom(dc47s,dc46s).
wasDerivedFrom(dc48s,dc46s).
wasDerivedFrom(dc49s,dc46s).
wasDerivedFrom(dc50s,dc46s).
wasDerivedFrom(dc51s,dc46s).
wasDerivedFrom(dc52s,dc46s).
wasDerivedFrom(dc53s,dc46s).
wasDerivedFrom(dc54s,dc46s).
wasDerivedFrom(dc55s,dc46s).
wasDerivedFrom(dc56s,dc46s).
wasDerivedFrom(dc57s,dc46s).
wasDerivedFrom(dc58s,dc46s).
wasDerivedFrom(dc59s,dc46s).
wasDerivedFrom(dc60s,dc46s).
wasDerivedFrom(dc61s,dc46s).
wasDerivedFrom(dc62s,dc46s).
wasDerivedFrom(dc63s,dc46s).
wasDerivedFrom(dc64s,dc46s).
wasDerivedFrom(dc65s,dc46s).
wasDerivedFrom(dc66s,dc46s).
wasDerivedFrom(dc67s,dc46s).
wasDerivedFrom(dc68s,dc46s).
wasDerivedFrom(dc69s,dc46s).
wasDerivedFrom(dc70s,dc46s).
wasDerivedFrom(dc71s,dc46s).
wasDerivedFrom(dc72s,dc46s).
wasDerivedFrom(dc73s,dc46s).
wasDerivedFrom(dc74s,dc46s).
wasDerivedFrom(dc75s,dc46s).
wasDerivedFrom(dc76s,dc46s).
wasDerivedFrom(dc77s,dc46s).
wasDerivedFrom(dc78s,dc46s).
wasDerivedFrom(dc79s,dc46s).
wasDerivedFrom(dc80s,dc46s).
wasDerivedFrom(dc81s,dc46s).
wasDerivedFrom(dc82s,dc46s).
hadPlan(ex1s,pg1s).
hadPlan(ex7s,pg7s).
hadPlan(ex2s,pg2s).
hadPlan(ex3s,pg3s).
hadPlan(ex4s,pg4s).
hadPlan(ex6s,pg5s).
hadPlan(ex5s,pg6s).
hadPlan(ex8s,pg8s).
hadPlan(ew12s,w1s).
hadInPort(ex1s,pin1s).
hadInPort(ex2s,pint2s).
hadInPort(ex3s,pint3s).
hadInPort(ex4s,pint4s).
hadInPort(ex6s,pint5s).
hadInPort(ex5s,pint5s).
hadInPort(ex7s,pint6s).
hadInPort(ex7s,pint7s).
hadInPort(ex8s,pint8s).
hadOutPort(ex1s,pint2s).
hadOutPort(ex2s,pint3s).
hadOutPort(ex3s,pint4s).
hadOutPort(ex4s,pint5s).
hadOutPort(ex4s,pint5s).
hadOutPort(ex6s,pint6s).
hadOutPort(ex5s,pint7s).
hadOutPort(ex7s,pint8s).
hadOutPort(ex8s,pout9s).
agent(u1s,[prop(prov:type,['provone:user']),prop(prov:label,'wellington-VirtualBox')]).
entity(d1s,[prop(prov:type,['provone:data']),prop(prov:label,'name'),prop(prov:type,'text'),prop(prov:value,'i3')]).
hasDefaultParam(pint2s,d1s).
%
%Rules
%
[library(dcg/basics)].
%=============================================================
%1.Retrieve all programs with their input and output ports for the workflow 'w' and provenance graph 'g'. (C1)
%8.Retrieve all programs with their input and output ports for each workflow specification. (C4)

query_1_8(DstName, WkfName, PgId, PgName, InPortId, OutPortId, InPortName, OutPortName) :-
	dataSet(DsId, DstName),
	hasDataSet(WkfId, DsId),
	entity(WkfId,[prop(prov:type,['prov:plan','provone:workflow']),prop(prov:label,WkfName)]),
	hasSubProgram(WkfId, PgId),
	entity(PgId, [prop(prov:type,['prov:plan','provone:program']),prop(prov:label,PgName)]),
	(
	  (
	    hasInPort(PgId,InPortId),
	    entity(InPortId, [prop(prov:type,['provone:port']),prop(_,InPortName)])
	  );
	  (
	    hasOutPort(PgId,OutPortId) ,
	    entity(OutPortId, [prop(prov:type,['provone:port']),prop(_,OutPortName)])
	  )
	), nl.

inPorts(PgId) :-
	hasInPort(PgId, PortId),
	entity(PortId, [prop(prov:type,['provone:port']),prop(_,Port)]),
	write('Input: '),
	write(Port), nl.

outPorts(PgId) :-
	hasOutPort(PgId, PortId),
	entity(PortId, [prop(prov:type,['provone:port']),prop(_,Port)]),
	write('Output: '),
	write(Port),nl.
%=============================================================
%2.Retrieve all activity executions with their generated data for the workflow execution w and provenance graph g. (C2)
%9.Retrieve all activity executions with their generated data for each workflow execution. (C5)

query_2_9(DstName, WExName, ExName) :-
	dataSet(DsId, DstName),
	hasDataSet(WkfId, DsId),
	entity(WkfId,[prop(prov:type,['prov:plan','provone:workflow']),_]),
	activity(WEx,[prop(prov:type,['provone:execution']),prop(prov:label,WExName),_,_,_]),
	hadPlan(WEx, WkfId),
	wasPartOf(Ex, WEx),
	activity(Ex,[prop(prov:type,['provone:execution']),prop(prov:label,ExName),_,_,_]),nl.

%=============================================================
%6.Retrieve all programs (plans) of each execution and their input parameters for the workflow execution w and provenance graph 'g'.(C3)
%14.Retrieve all programs (plans) of each  execution and their input parameters for each workflow wf.(C6)

query_6_14(DstName, WExName, ExId, ExName, PgId, PgName, DataName, DataValue) :-
	dataSet(DsId, DstName),
	hasDataSet(WkfId, DsId),
	entity(WkfId,[prop(prov:type,['prov:plan','provone:workflow']),_]),
	activity(WEx,[prop(prov:type,['provone:execution']),prop(prov:label,WExName),_,_,_]),
	hadPlan(WEx, WkfId),
	wasPartOf(ExId, WEx),
	entity(PgId, [prop(prov:type,['prov:plan','provone:program']),prop(prov:label,PgName)]),
	activity(ExId,[prop(prov:type,['provone:execution']),prop(prov:label,ExName),_,_,_]),
	hadPlan(ExId, PgId),
	hasInPort(PgId, PortId),
	hasDefaultParam(PortId, DataId),
	entity(DataId, [prop(prov:type, ['provone:data']), prop(prov:label,DataName),prop(prov:type,'Boolean'),prop(prov:value,DataValue)]), nl.

%=============================================================
%7.Retrieve the workflow version, and the time consumed by each workflow execution for the workflow wf and provenance graph g. (C3)
%13.Retrieve the time consumed by each workflow execution for each workflow and provenance graph.  (C6)

query_7_13(DstName, WkfName, WExName, ExTime) :-
	dataSet(DsId, DstName),
	hasDataSet(WkfId, DsId),
	entity(WkfId,[prop(prov:type,['prov:plan','provone:workflow']), prop(_,WkfName)]),
	activity(WExId, [_, prop(prov:label, WExName),prop(prov:startTime, StartTime), prop(prov:endTime, EndTime), _]),
	hadPlan(WExId,WkfId),
	parse_time(StartTime, Stamp1),
	parse_time(EndTime, Stamp2),
	ExTime is Stamp2 - Stamp1, nl.

%=============================================================
%3.Retrieve the time consumed by each activity execution for the workflow execution w and provenance graph g. (C2)
%10.Retrieve the time consumed by each activity execution for each workflow execution.  (C5)

query_3_10(DstName, WExName, ExName, ExTime) :-
	dataSet(DsId, DstName),
	hasDataSet(WkfId, DsId),
	activity(WExId, [_, prop(prov:label, WExName),_,_,_]),
	hadPlan(WExId,WkfId),
	activity(ExId, [_, prop(prov:label, ExName),prop(prov:startTime, StartTime), prop(prov:endTime, EndTime), _]),
	wasPartOf(ExId,WExId),
	parse_time(StartTime, Stamp1),
	parse_time(EndTime, Stamp2),
	ExTime is Stamp2 - Stamp1, nl.

%=============================================================
%5.Retrieve the complete dataflow trace of the output data d for the workflow execution w and provenance graph g. (C2)
%12.Retrieve the complete dataflow trace and the workflow specification for each workflow execution. (C6)

dataTrace(DstName, WkfName, WExName, OutputId, InputId) :-
	dataSet(DsId, DstName),
	hasDataSet(WkfId, DsId),
	activity(WExId,[prop(prov:type,['provone:execution']),prop(prov:label, WExName),_,_,_]),
	entity(WkfId,[prop(prov:type,['prov:plan','provone:workflow']),prop(prov:label,WkfName)]),
	hadPlan(WExId,WkfId),
	wasPartOf(ExId, WExId),
	wasGeneratedBy(OutputId, ExId),
	dataFlow(OutputId, InputId), nl.

dataFlow(Output, Input) :-
	wasDerivedFrom(Output, Input).
	
dataFlow(Output, Input) :-
	wasDerivedFrom(Output, X),
	dataFlow(X, Input).

%============================================================
%4.Retrieve the complete activity execution trace that influenced the generation of the data d. (C2)
%11.Retrieve the ports, workflow executions, provenance graphs, and the complete activity execution trace that influenced the generation of all data. (C6)

activityTrace(DstName, WExName, PortId, ExId2, DataId) :-
	dataSet(DsId, DstName),
	hasDataSet(WkfId, DsId),
	activity(WExId, [_, prop(prov:label, WExName),_,_,_]),
	hadPlan(WExId,WkfId),
	wasPartOf(ExId, WExId),
	(   hadInPort(ExId,PortId); hadOutPort(ExId, PortId)),
	wasGeneratedBy(DataId, ExId),
	activityFlows(ExId,ExId2), nl.

activityFlows(Ex1, Ex2) :-
	wasInformedBy(Ex1, Ex2), nl,
	write('Execution = '), write(Ex1).

activityFlows(Ex1, Ex2) :-
	wasInformedBy(Ex1, Ex3),
	activityFlows(Ex3, Ex2).

rule13(ExId2,DataId) :-
	wasGeneratedBy(DataId, ExId),
	activityFlows(ExId,ExId2), nl.

