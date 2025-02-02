codeunit 137701 "Tax Config. Test Helper"
{
    procedure GetJsonInText() JsonText: Text
    begin
        JsonText += '[{"Code":"VAT","TaxTypeDescription":"Value added Tax",';
        JsonText += '"Enable":true,"TaxEntities":[{"TableName":"G/L Account",';
        JsonText += '"Type":"Master"},{"TableName":"Customer","Type":"Master"},';
        JsonText += '{"TableName":"Item","Type":"Master"},{"TableName":"Sales Header","Type":"Transaction"},';
        JsonText += '{"TableName":"Sales Line","Type":"Transaction"},{"TableName":"VAT Entry","Type":"Transaction"},';
        JsonText += '{"TableName":"VAT Business Posting Group","Type":"Master"},{"TableName":"VAT Product Posting Group","Type":"Master"}],';
        JsonText += '"Attributes":[{"TaxType":"","ID":1,"Name":"State","Type":"Text","LookupTable":"State","LookupField":"Code","LookupPage":"","GroupedInSubLedger":false,"VisibleOnInterface":false,"EntityMapping":';
        JsonText += '[{"Entity":"Location","MappingField":"State Code"},';
        JsonText += '{"Entity":"Customer","MappingField":"State Code"},{"Entity":"Vendor","MappingField":"State Code"},';
        JsonText += '{"Entity":"Company Information","MappingField":"State Code"},{"Entity":"Gen. Journal Line","MappingField":"Location State Code"},';
        JsonText += '{"Entity":"Order Address","MappingField":"State"}]},';
        JsonText += '{"TaxType":"","ID":2,"Name":"PAN No.","Type":"Text","LookupTable":"","LookupField":"","LookupPage":"","GroupedInSubLedger":false,';
        JsonText += '"VisibleOnInterface":false,"EntityMapping":[{"Entity":"Customer","MappingField":"P.A.N. No."},{"Entity":"Vendor","MappingField":"P.A.N. No."}]},';
        JsonText += '{"TaxType":"","ID":3,"Name":"TCAN No.","Type":"Text","LookupTable":"","LookupField":"","LookupPage":"","GroupedInSubLedger":false,"VisibleOnInterface":false,';
        JsonText += '"EntityMapping":[{"Entity":"Location","MappingField":"T.C.A.N. No."},{"Entity":"Company Information","MappingField":"T.C.A.N. No."},';
        JsonText += '{"Entity":"Gen. Journal Line","MappingField":"T.C.A.N. No."}]},{"TaxType":"","ID":4,"Name":"Customer GST Registration No.",';
        JsonText += '"Type":"Text","LookupTable":"","LookupField":"","LookupPage":"","GroupedInSubLedger":false,"VisibleOnInterface":false,';
        JsonText += '"EntityMapping":[{"Entity":"Customer","MappingField":"GST Registration No."}]},{"TaxType":"","ID":5,"Name":"TAN No.","Type":"Text",';
        JsonText += '"LookupTable":"","LookupField":"","LookupPage":"","GroupedInSubLedger":false,"VisibleOnInterface":false,"EntityMapping":[{"Entity":"Location",';
        JsonText += '"MappingField":"T.A.N. No."},{"Entity":"Company Information","MappingField":"T.A.N. No."},{"Entity":"Gen. Journal Line","MappingField":"T.A.N. No."}]},';
        JsonText += '{"TaxType":"VAT","ID":3650,"Name":"VATBusPostingGrp","Type":"Text","LookupTable":"VAT Business Posting Group","LookupField":"Code",';
        JsonText += '"LookupPage":"VAT Business Posting Groups","GroupedInSubLedger":false,"VisibleOnInterface":true,';
        JsonText += '"EntityMapping":[{"Entity":"Customer","MappingField":"VAT Bus. Posting Group"},{"Entity":"Sales Line","MappingField":"VAT Bus. Posting Group"}]},';
        JsonText += '{"TaxType":"VAT","ID":3651,"Name":"VATProdPostingGrp","Type":"Text","LookupTable":"VAT Product Posting Group","LookupField":"Code",';
        JsonText += '"LookupPage":"VAT Product Posting Groups","GroupedInSubLedger":false,"VisibleOnInterface":true,';
        JsonText += '"EntityMapping":[{"Entity":"Item","MappingField":"VAT Prod. Posting Group"},';
        JsonText += '{"Entity":"Sales Line","MappingField":"VAT Prod. Posting Group"}]}],"AccountingPeriod":{"AccountingPeriodCode":"VAT","AccountingPeriodDesc":"VAT"},';
        JsonText += '"Components":[{"ID":1,"Name":"VAT","Type":"Decimal","RoundingPrecision":0.01,"Direction":"Nearest","SkipPosting":false,"ComponentType":"Normal"},';
        JsonText += '{"ID":10001,"Name":"VATFormula","Type":"Decimal","RoundingPrecision":0.01,"Direction":"Nearest","SkipPosting":true,"ComponentType":"Formula",';
        JsonText += '"Formula":{"ComponentName":"VATFormula","Expression":"VAT+100","Token":[{"TokenName":"VAT","ValueType":"Component","Value":"VAT"}]}}],';
        JsonText += '"TaxRateColumnSetup":[{"Sequence":1,"ID":7301,"ColumnType":"Tax Attributes","ColumnName":"VATBusPostingGrp","Type":"Text"},';
        JsonText += '{"Sequence":2,"ID":7302,"ColumnType":"Tax Attributes","ColumnName":"VATProdPostingGrp","Type":"Text"},';
        JsonText += '{"Sequence":3,"ID":7303,"ColumnType":"Range From","ColumnName":"Effective","Type":"Date"},';
        JsonText += '{"Sequence":4,"ID":7304,"ColumnType":"Component","ColumnName":"VAT","Type":"Decimal"}],';
        JsonText += '"UseCases":[{"CaseID":"{53C65764-882F-4596-A04A-094911693412}","Description":"Sales Document Use Cases","Version":0.0,';
        JsonText += '"TaxType":"VAT","ChangedBy":"","Code":"","TaxEntity":"Sales Line","ParentUseCase":"","PresentationOrder":2,"Indent":0,';
        JsonText += '"Attributes":[{"Name":"VATProdPostingGrp","When":[{"ValueType":"Relation","Relation":{"TableName":"Sales Line",';
        JsonText += '"TableFilters":[{"FiterFieldName":"Document Type","FilterType":"Equals",';
        JsonText += '"FilterValue":{"Type":"Lookup","Lookup":{"SourceType":"Current Record","TableName":"Sales Line","FieldName":"Document Type"}}},';
        JsonText += '{"FiterFieldName":"Document No.","FilterType":"Equals",';
        JsonText += '"FilterValue":{"Type":"Lookup","Lookup":{"SourceType":"Current Record","TableName":"Sales Line","FieldName":"Document No."}}}]}}]},';
        JsonText += '{"Name":"VATBusPostingGrp","When":[{"ValueType":"Relation",';
        JsonText += '"Relation":{"TableName":"Sales Line","TableFilters":[{"FiterFieldName":"Document Type","FilterType":"Equals",';
        JsonText += '"FilterValue":{"Type":"Lookup","Lookup":{"SourceType":"Current Record","TableName":"Sales Line","FieldName":"Document Type"}}},';
        JsonText += '{"FiterFieldName":"Document No.","FilterType":"Equals","FilterValue":{"Type":"Lookup","Lookup":{"SourceType":"Current Record","TableName":"Sales Line",';
        JsonText += '"FieldName":"Document No."}}}]}}]}],"RateColumns":[{"Name":"Effective","When":[{"ValueType":"Lookup",';
        JsonText += '"Lookup":{"SourceType":"Table","TableName":"Sales Header","TableFieldName":"Posting Date","Method":"First",';
        JsonText += '"TableFilters":[{"FiterFieldName":"Document Type","FilterType":"Equals","FilterValue":{"Type":"Lookup",';
        JsonText += '"Lookup":{"SourceType":"Current Record","TableName":"Sales Line","FieldName":"Document Type"}}},';
        JsonText += '{"FiterFieldName":"No.","FilterType":"Equals","FilterValue":{"Type":"Lookup","Lookup":{"SourceType":"Current Record",';
        JsonText += '"TableName":"Sales Line","FieldName":"Document No."}}}]}}]}],"ComputationVariables":[],"ComputationScript":[],"PostingVariables":[],';
        JsonText += '"PostingScript":[],"Components":[],"AttachedEvents":[]},{"CaseID":"{8B8CAACA-798D-4BA5-8ED3-7A2C778121CB}",';
        JsonText += '"Description":"Calculate tax on Sales Order Line","Version":1.00001,"TaxType":"VAT","ChangedBy":"Partner","Code":"",';
        JsonText += '"TaxEntity":"Sales Line","ParentCaseId":"{53C65764-882F-4596-A04A-094911693412}","ParentUseCase":"Sales Document Use Cases","PresentationOrder":3,"Indent":1,"PostingTableName":"VAT Posting Setup",';
        JsonText += '"PostingTableFilters":[{"FiterFieldName":"VAT Bus. Posting Group","FilterType":"Equals","FilterValue":{"Type":"Lookup",';
        JsonText += '"Lookup":{"SourceType":"Current Record","TableName":"Sales Line","FieldName":"VAT Bus. Posting Group"}}},';
        JsonText += '{"FiterFieldName":"VAT Prod. Posting Group","FilterType":"Equals","FilterValue":{"Type":"Lookup","Lookup":{"SourceType":"Current Record",';
        JsonText += '"TableName":"Sales Line","FieldName":"VAT Prod. Posting Group"}}}],"Attributes":[],"RateColumns":[],';
        JsonText += '"ComputationVariables":[{"Name":"BlankDimensionErr","Datatype":"String"},{"Name":"LoopNTimesCounter","Datatype":"Number"},';
        JsonText += '{"Name":"LoopNTimeMessage","Datatype":"String"},{"Name":"LoopWithConditionCounter","Datatype":"Number"},';
        JsonText += '{"Name":"LoopWithConditionMessage","Datatype":"String"},{"Name":"LineItemNo","Datatype":"String"},';
        JsonText += '{"Name":"CustomerBalance","Datatype":"Number"},{"Name":"CustomerBalanceText","Datatype":"String"},{"Name":"LengthOfDocNoTxt","Datatype":"String"},';
        JsonText += '{"Name":"ConvertLowerCaseTxt","Datatype":"String"},{"Name":"ConvertUpperCaseTxt","Datatype":"String"},{"Name":"LowerCaseMsg","Datatype":"String"},';
        JsonText += '{"Name":"UpperCaseMsg","Datatype":"String"},{"Name":"NumberCalcVar","Datatype":"Number"},{"Name":"NumberCalcTxt","Datatype":"String"},';
        JsonText += '{"Name":"CalculatedDueDate","Datatype":"Date"},{"Name":"DueDateMsg","Datatype":"String"},{"Name":"YearOfPostingDate","Datatype":"Number"},';
        JsonText += '{"Name":"YearMsg","Datatype":"String"},{"Name":"DateInterval","Datatype":"Number"},{"Name":"DateIntervalTxt","Datatype":"String"},';
        JsonText += '{"Name":"CurrentTime","Datatype":"Time"},{"Name":"ExtractDateTimeTxt","Datatype":"String"},{"Name":"ConvertedDateTime","Datatype":"Datetime"},';
        JsonText += '{"Name":"ConvertedDateTimeTxt","Datatype":"String"},{"Name":"DateYear","Datatype":"Number"},{"Name":"TextVariable","Datatype":"String"},';
        JsonText += '{"Name":"NumberVariable","Datatype":"Number"}],"ComputationScript":[{"ActivityType":"COMMENT","Activity":{"Comment":"Starting execution"}},';
        JsonText += '{"ActivityType":"IFSTATEMENT","Activity":{"Condition":{"Body":[{"Operator":" ","ConditionType":"Equals","LHS":{"Lookup":{"SourceType":"Table",';
        JsonText += '"TableName":"Sales Header","TableFieldName":"Shortcut Dimension 1 Code","Method":"First","TableFilters":[{"FiterFieldName":"Document Type",';
        JsonText += '"FilterType":"Equals","FilterValue":{"Type":"Lookup","Lookup":{"SourceType":"Current Record","TableName":"Sales Line","FieldName":"Document Type"}}},';
        JsonText += '{"FiterFieldName":"No.","FilterType":"Equals","FilterValue":{"Type":"Lookup","Lookup":{"SourceType":"Current Record",';
        JsonText += '"TableName":"Sales Line","FieldName":"Document No."}}}]}},"RHS":{"Type":"Constant","Value":""}}]},';
        JsonText += '"Body":[{"ActivityType":"COMMENT","Activity":{"Comment":"This is to ensure that If condition is executed."}}],';
        JsonText += '"ElseIf":{"Condition":{"Body":[]},"Body":[{"ActivityType":"STRINGEXPRESSION","Activity":{"OutputVariableName":"BlankDimensionErr",';
        JsonText += '"Expression":"Shortcut dimension 1 code cannot be blank on Order no. {OrderNo}.","Token":[{"TokenName":"OrderNo","FormatString":"",';
        JsonText += '"LookupVariableName":{"Type":"Lookup","Lookup":{"SourceType":"Current Record","TableName":"Sales Line","FieldName":"Document No."}}}]}},';
        JsonText += '{"ActivityType":"COMMENT","Activity":{"Comment":"This is to ensure that else statment is executed."}}]}}},{"ActivityType":"LOOPNTIMES",';
        JsonText += '"Activity":{"IndexVariable":"LoopNTimesCounter","NValue":{"Type":"Constant","Value":"3"},"Body":[{"ActivityType":"STRINGEXPRESSION",';
        JsonText += '"Activity":{"OutputVariableName":"LoopNTimeMessage","Expression":"Loop N Times counter {Counter}",';
        JsonText += '"Token":[{"TokenName":"Counter","FormatString":"","LookupVariableName":{"Type":"Lookup","Lookup":{"SourceType":"Variable",';
        JsonText += '"VariableName":"LoopNTimesCounter"}}}]}}]}},{"ActivityType":"LOOPWITHCONDITION","Activity":{"Condition":{"Body":[{"Operator":" ",';
        JsonText += '"ConditionType":"Not Equals","LHS":{"Lookup":{"SourceType":"Variable","VariableName":"LoopWithConditionCounter"}},';
        JsonText += '"RHS":{"Type":"Constant","Value":"3"}}]},"Body":[{"ActivityType":"STRINGEXPRESSION",';
        JsonText += '"Activity":{"OutputVariableName":"LoopWithConditionMessage","Expression":"Loop with condition counter : {Counter}",';
        JsonText += '"Token":[{"TokenName":"Counter","FormatString":"","LookupVariableName":{"Type":"Lookup","Lookup":{"SourceType":"Variable",';
        JsonText += '"VariableName":"LoopWithConditionCounter"}}}]}},{"ActivityType":"NUMBERCALCULATION","Activity":{"OutputVariableName":"LoopWithConditionCounter",';
        JsonText += '"Operator":"Plus","LHS":{"Type":"Lookup","Lookup":{"SourceType":"Variable","VariableName":"LoopWithConditionCounter"}},';
        JsonText += '"RHS":{"Type":"Constant","Value":"1"}}}]}},{"ActivityType":"LOOPTHROUGHRECORDS","Activity":{"TableName":"Sales Line",';
        JsonText += '"TableFilters":[{"FiterFieldName":"Document Type","FilterType":"Equals","FilterValue":{"Type":"Lookup","Lookup":{"SourceType":"Current Record",';
        JsonText += '"TableName":"Sales Line","FieldName":"Document Type"}}},{"FiterFieldName":"Document No.","FilterType":"Equals","FilterValue":{"Type":"Lookup",';
        JsonText += '"Lookup":{"SourceType":"Current Record","TableName":"Sales Line","FieldName":"Document No."}}}],';
        JsonText += '"LoopThroughRecordFields":[{"FieldName":"No.","VariableName":"LineItemNo"}],"Body":[{"ActivityType":"COMMENT",';
        JsonText += '"Activity":{"Comment":"This is to ensure that Loop Throught record is executed."}}]}},{"ActivityType":"SETVARIABLE",';
        JsonText += '"Activity":{"OutputVariableName":"CustomerBalance","OutputValue":{"Type":"Lookup","Lookup":{"SourceType":"Table","TableName":"Customer",';
        JsonText += '"TableFieldName":"Balance","Method":"First","TableFilters":[{"FiterFieldName":"No.","FilterType":"Equals",';
        JsonText += '"FilterValue":{"Type":"Lookup","Lookup":{"SourceType":"Current Record","TableName":"Sales Line","FieldName":"Sell-to Customer No."}}}]}}}},';
        JsonText += '{"ActivityType":"STRINGEXPRESSION","Activity":{"OutputVariableName":"CustomerBalanceText","Expression":"Customer balance as of {Today} is {Balance}.",';
        JsonText += '"Token":[{"TokenName":"Balance","FormatString":"","LookupVariableName":{"Type":"Lookup","Lookup":{"SourceType":"Variable",';
        JsonText += '"VariableName":"CustomerBalance"}}},{"TokenName":"Today","FormatString":"","LookupVariableName":{"Type":"Lookup","Lookup":{"SourceType":"System",';
        JsonText += '"SystemVariableName":"Today"}}}]}},{"ActivityType":"LENGTHOFSTRING","Activity":{"OutputVariableName":"LengthOfDocNoTxt",';
        JsonText += '"LookupVariableName":{"Type":"Constant","Value":"ABCD"}}},{"ActivityType":"CONVERTCASEOFSTRING","Activity":{"OutputVariableName":"ConvertLowerCaseTxt",';
        JsonText += '"LookupVariableName":{"Type":"Constant","Value":"ABCD"},"ConvertToCase":"Lower Case"}},{"ActivityType":"CONVERTCASEOFSTRING",';
        JsonText += '"Activity":{"OutputVariableName":"ConvertUpperCaseTxt","LookupVariableName":{"Type":"Constant","Value":"abcd"},';
        JsonText += '"ConvertToCase":"Upper Case"}},{"ActivityType":"NUMBERCALCULATION","Activity":{"OutputVariableName":"NumberCalcVar","Operator":"Divided By",';
        JsonText += '"LHS":{"Type":"Constant","Value":"10"},"RHS":{"Type":"Constant","Value":"2"}}},{"ActivityType":"ROUNDNUMBER",';
        JsonText += '"Activity":{"OutputVariableName":"NumberCalcVar","NumberLookupVariableName":{"Type":"Lookup","Lookup":{"SourceType":"Variable","VariableName":"NumberCalcVar"}},';
        JsonText += '"PrecisionLookupVariableName":{"Type":"Constant","Value":"1"},"Direction":"Nearest"}},{"ActivityType":"DATECALCULATION",';
        JsonText += '"Activity":{"OutputVariableName":"CalculatedDueDate","StringText":{"Type":"Constant","Value":"2003-04-05"},';
        JsonText += '"NumberText":{"Type":"Constant","Value":"10"},"OperatorText":"plus","PeriodText":"Days"}},{"ActivityType":"STRINGEXPRESSION",';
        JsonText += '"Activity":{"OutputVariableName":"DueDateMsg","Expression":"{DueDate}","Token":[{"TokenName":"DueDate","FormatString":"",';
        JsonText += '"LookupVariableName":{"Type":"Lookup","Lookup":{"SourceType":"Variable","VariableName":"CalculatedDueDate"}}}]}},';
        JsonText += '{"ActivityType":"EXTRACTDATEPART","Activity":{"OutputVariableName":"DateYear","DateLookup":{"Type":"Constant","Value":"2003-04-05"},"PartText":"Year"}},';
        JsonText += '{"ActivityType":"STRINGEXPRESSION","Activity":{"OutputVariableName":"YearMsg","Expression":"Year of Posting date {PostingDate} is {Year}.",';
        JsonText += '"Token":[{"TokenName":"PostingDate","FormatString":"","LookupVariableName":{"Type":"Lookup","Lookup":{"SourceType":"Table","TableName":"Sales Header",';
        JsonText += '"TableFieldName":"Posting Date","Method":"First","TableFilters":[{"FiterFieldName":"Document Type","FilterType":"Equals",';
        JsonText += '"FilterValue":{"Type":"Lookup","Lookup":{"SourceType":"Current Record","TableName":"Sales Line","FieldName":"Document Type"}}},';
        JsonText += '{"FiterFieldName":"No.","FilterType":"Equals","FilterValue":{"Type":"Lookup","Lookup":{"SourceType":"Current Record","TableName":"Sales Line",';
        JsonText += '"FieldName":"Document No."}}}]}}},{"TokenName":"Year","FormatString":"","LookupVariableName":{"Type":"Lookup","Lookup":{"SourceType":"Variable",';
        JsonText += '"VariableName":"DateYear"}}}]}},{"ActivityType":"FINDINTERVALBETWEENDATES","Activity":{"Output":"DateInterval",';
        JsonText += '"FromDate":{"Type":"Constant","Value":"2003-04-05"},"ToDate":{"Type":"Constant","Value":"2003-04-15"},"Interval":"Days"}},';
        JsonText += '{"ActivityType":"STRINGEXPRESSION","Activity":{"OutputVariableName":"DateIntervalTxt","Expression":"Date Interval between Posting date and ';
        JsonText += 'calculated due date is {Durartion}","Token":[{"TokenName":"Durartion","FormatString":"",';
        JsonText += '"LookupVariableName":{"Type":"Lookup","Lookup":{"SourceType":"Variable","VariableName":"DateInterval"}}}]}},{"ActivityType":"EXTRACTDATETIMEPART",';
        JsonText += '"Activity":{"OutputVariableName":"CurrentTime","DateLookup":{"Type":"Lookup","Lookup":{"SourceType":"System","SystemVariableName":"WorkDate"}},';
        JsonText += '"PartText":"Time"}},{"ActivityType":"STRINGEXPRESSION","Activity":{"OutputVariableName":"ExtractDateTimeTxt","Expression":"Extract time {currentTime}",';
        JsonText += '"Token":[{"TokenName":"currentTime","FormatString":"","LookupVariableName":{"Type":"Lookup","Lookup":{"SourceType":"Variable",';
        JsonText += '"VariableName":"CurrentTime"}}}]}},{"ActivityType":"DATETODATETIME","Activity":{"OutputVariableName":"ConvertedDateTime",';
        JsonText += '"DateText":{"Type":"Lookup","Lookup":{"SourceType":"System","SystemVariableName":"WorkDate"}},';
        JsonText += '"TimeText":{"Type":"Lookup","Lookup":{"SourceType":"System","SystemVariableName":"TIME"}}}},{"ActivityType":"STRINGEXPRESSION",';
        JsonText += '"Activity":{"OutputVariableName":"ConvertedDateTimeTxt","Expression":"Workdate to DateTime : {WorkDateTime}",';
        JsonText += '"Token":[{"TokenName":"WorkDateTime","FormatString":"","LookupVariableName":{"Type":"Lookup","Lookup":{"SourceType":"Variable",';
        JsonText += '"VariableName":"ConvertedDateTime"}}}]}},{"ActivityType":"IFSTATEMENT","Activity":{"Condition":{"Body":[{"Operator":" ",';
        JsonText += '"ConditionType":"Not Equals","LHS":{"Lookup":{"SourceType":"Variable","VariableName":"LoopNTimesCounter"}},"RHS":{"Type":"Constant","Value":"3"}}]},';
        JsonText += '"Body":[{"ActivityType":"ALERTMESSAGE","Activity":{"MessageText":{"Type":"Constant","Value":"Loop n Times should be 3"},"ThrowError":true}}]}},';
        JsonText += '{"ActivityType":"IFSTATEMENT","Activity":{"Condition":{"Body":[{"Operator":" ","ConditionType":"Not Equals","LHS":{"Lookup":{"SourceType":"Variable",';
        JsonText += '"VariableName":"LengthOfDocNoTxt"}},"RHS":{"Type":"Constant","Value":"4"}}]},"Body":[{"ActivityType":"ALERTMESSAGE",';
        JsonText += '"Activity":{"MessageText":{"Type":"Constant","Value":"Length of ABCD should be 4"},"ThrowError":true}}]}},';
        JsonText += '{"ActivityType":"IFSTATEMENT","Activity":{"Condition":{"Body":[{"Operator":" ","ConditionType":"Not Equals",';
        JsonText += '"LHS":{"Lookup":{"SourceType":"Variable","VariableName":"ConvertLowerCaseTxt"}},"RHS":{"Type":"Constant","Value":"abcd"}}]},';
        JsonText += '"Body":[{"ActivityType":"ALERTMESSAGE","Activity":{"MessageText":{"Type":"Constant","Value":"lower case value should be abcd"},';
        JsonText += '"ThrowError":true}}]}},{"ActivityType":"IFSTATEMENT","Activity":{"Condition":{"Body":[{"Operator":" ",';
        JsonText += '"ConditionType":"Not Equals","LHS":{"Lookup":{"SourceType":"Variable","VariableName":"ConvertUpperCaseTxt"}},';
        JsonText += '"RHS":{"Type":"Constant","Value":"ABCD"}}]},"Body":[{"ActivityType":"ALERTMESSAGE",';
        JsonText += '"Activity":{"MessageText":{"Type":"Constant","Value":"upper case value should be ABCD"},"ThrowError":true}}]}},';
        JsonText += '{"ActivityType":"IFSTATEMENT","Activity":{"Condition":{"Body":[{"Operator":" ","ConditionType":"Not Equals",';
        JsonText += '"LHS":{"Lookup":{"SourceType":"Variable","VariableName":"NumberCalcVar"}},"RHS":{"Type":"Constant","Value":"5"}}]},';
        JsonText += '"Body":[{"ActivityType":"ALERTMESSAGE","Activity":{"MessageText":{"Type":"Constant","Value":"Number calculation value should be 5"},';
        JsonText += '"ThrowError":true}}]}},{"ActivityType":"IFSTATEMENT","Activity":{"Condition":{"Body":[{"Operator":" ","ConditionType":"Not Equals",';
        JsonText += '"LHS":{"Lookup":{"SourceType":"Variable","VariableName":"DateInterval"}},"RHS":{"Type":"Constant","Value":"10"}}]},';
        JsonText += '"Body":[{"ActivityType":"ALERTMESSAGE","Activity":{"MessageText":{"Type":"Constant","Value":"No. of days should be 10"},"ThrowError":true}}]}},';
        JsonText += '{"ActivityType":"IFSTATEMENT","Activity":{"Condition":{"Body":[{"Operator":" ","ConditionType":"Not Equals",';
        JsonText += '"LHS":{"Lookup":{"SourceType":"Variable","VariableName":"DateYear"}},"RHS":{"Type":"Constant","Value":"2003"}}]},';
        JsonText += '"Body":[{"ActivityType":"ALERTMESSAGE","Activity":{"MessageText":{"Type":"Constant","Value":"No. of days should be 2003"},';
        JsonText += '"ThrowError":true}}]}},{"ActivityType":"IFSTATEMENT","Activity":{"Condition":{"Body":[{"Operator":" ",';
        JsonText += '"ConditionType":"Not Equals","LHS":{"Lookup":{"SourceType":"Variable","VariableName":"LoopWithConditionCounter"}},';
        JsonText += '"RHS":{"Type":"Constant","Value":"3"}}]},"Body":[{"ActivityType":"ALERTMESSAGE","Activity":{"MessageText":{"Type":"Constant",';
        JsonText += '"Value":"Loop With Condition counter should be 3"},"ThrowError":true}}]}},{"ActivityType":"IFSTATEMENT",';
        JsonText += '"Activity":{"Condition":{"Body":[{"Operator":" ","ConditionType":"Not Equals","LHS":{"Lookup":{"SourceType":"Variable","VariableName":"CustomerBalance"}},';
        JsonText += '"RHS":{"Type":"Lookup","Lookup":{"SourceType":"Table","TableName":"Customer","TableFieldName":"Balance","Method":"First",';
        JsonText += '"TableFilters":[{"FiterFieldName":"No.","FilterType":"Equals","FilterValue":{"Type":"Lookup",';
        JsonText += '"Lookup":{"SourceType":"Current Record","TableName":"Sales Line","FieldName":"Sell-to Customer No."}}}]}}}]},';
        JsonText += '"Body":[]}},{"ActivityType":"CONCATENATE","Activity":{"OutputVariableName":"TextVariable","Concatenate":[]}},';
        JsonText += '{"ActivityType":"FINDSUBSTRINGINSTRING","Activity":{"OutputVariableName":"TextVariable","SubstrinText":{"Type":"Constant","Value":"A"}}},';
        JsonText += '{"ActivityType":"REPLACESUBSTRINGINSTRING","Activity":{"OutputVariableName":"TextVariable","SubstringText":{"Type":"Constant","Value":"A"},';
        JsonText += '"StringText":{"Type":"Constant","Value":"ABCD"},"NewStringText":{"Type":"Constant","Value":"B"}}},{"ActivityType":"EXTRACTSUBSTRINGFROMINDEXOFSTRING",';
        JsonText += '"Activity":{"OutputVariableName":"TextVariable","StringText":{"Type":"Constant","Value":"ABCD"},"IndexText":{"Type":"Constant","Value":"1"},';
        JsonText += '"LengthText":{"Type":"Constant","Value":"1"}}},{"ActivityType":"EXTRACTSUBSTRINGFROMPOSITION","Activity":{"Output":"TextVariable",';
        JsonText += '"String":{"Type":"Constant","Value":"ABCD"},"Length":{"Type":"Constant","Value":"2"},"Position":"start"}},{"ActivityType":"NUMERICEXPRESSION",';
        JsonText += '"Activity":{"VariableName":"NumberVariable","Expression":"Amount+100","Tokens":[{"TokenName":"Amount","TokenValue":{"Type":"Lookup",';
        JsonText += '"Lookup":{"SourceType":"Current Record","TableName":"Sales Line","FieldName":"Amount"}}}]}}],"PostingVariables":[{"Name":"VatEntryNo","Datatype":"Number"},';
        JsonText += '{"Name":"ConstantNumber","Datatype":"Number"},{"Name":"ConstantNo","Datatype":"Number"}],"PostingScript":[{"ActivityType":"SETVARIABLE",';
        JsonText += '"Activity":{"OutputVariableName":"VatEntryNo","OutputValue":{"Type":"Lookup","Lookup":{"SourceType":"Table","TableName":"VAT Entry",';
        JsonText += '"TableFieldName":"Entry No.","Method":"Last","TableFilters":[]}}}},{"ActivityType":"SETVARIABLE","Activity":{"OutputVariableName":"ConstantNo",';
        JsonText += '"OutputValue":{"Type":"Constant","Value":"1"}}},{"ActivityType":"NUMBERCALCULATION","Activity":{"OutputVariableName":"VatEntryNo",';
        JsonText += '"Operator":"Plus","LHS":{"Type":"Lookup","Lookup":{"SourceType":"Variable","VariableName":"VatEntryNo"}},"RHS":{"Type":"Constant","Value":"1"}}}],';
        JsonText += '"Components":[{"ComponentName":"VAT","Sequence":1,"Formula":{"VariableName":"VAT","Expression":"Amount*VatPercent/100",';
        JsonText += '"Tokens":[{"TokenName":"Amount","TokenValue":{"Type":"Lookup","Lookup":{"SourceType":"Current Record","TableName":"Sales Line","FieldName":"Line Amount"}}},';
        JsonText += '{"TokenName":"VatPercent","TokenValue":{"Type":"Lookup","Lookup":{"SourceType":"Component Percent","ComponentName":"VAT"}}}]}},';
        JsonText += '{"ComponentName":"VATFormula","Sequence":2,"Formula":{"VariableName":"VATFormula","Expression":"VATAmount",';
        JsonText += '"Tokens":[{"TokenName":"VATAmount","TokenValue":{"Type":"Lookup","Lookup":{"SourceType":"Component","ComponentName":"VAT"}}}]}}],';
        JsonText += '"Condition":{"Body":[{"Operator":" ","ConditionType":"Equals","LHS":{"Lookup":{"SourceType":"Current Record","TableName":"Sales Line",';
        JsonText += '"FieldName":"Document Type"}},"RHS":{"Type":"Constant","Value":"Order"}},{"Operator":"and","ConditionType":"Not Equals",';
        JsonText += '"LHS":{"Lookup":{"SourceType":"Current Record","TableName":"Sales Line","FieldName":"No."}},"RHS":{"Type":"Constant","Value":""}}]},';
        JsonText += '"TaxPostingSetup":[{"ComponentName":"VAT","TableName":"VAT Posting Setup","AccountSourceType":"Field","FieldName":"Sales VAT Account",';
        JsonText += '"AccountingImpact":"Credit","ReverseCharge":true,"ReverseAccountSourceType":"Field","ReverseChargeFieldName":"Sales VAT Account",';
        JsonText += '"When":[{"ValueType":"Insert Record","InsertRecord":{"TableName":"VAT Entry","RunTrigger":false,"SubLedgerGrpBy":"Component",';
        JsonText += '"InsertRecordFields":[{"FieldName":"Entry No.","Sequence":1,"ReverseSign":false,"Lookup":{"Type":"Lookup","Lookup":{"SourceType":"Variable",';
        JsonText += '"VariableName":"VatEntryNo"}}},{"FieldName":"Gen. Bus. Posting Group","Sequence":4,"ReverseSign":false,"Lookup":{"Type":"Lookup",';
        JsonText += '"Lookup":{"SourceType":"Posting Field","PostingVariableName":"Gen. Bus. Posting Group"}}},{"FieldName":"Gen. Prod. Posting Group","Sequence":5,';
        JsonText += '"ReverseSign":false,"Lookup":{"Type":"Lookup","Lookup":{"SourceType":"Posting Field","PostingVariableName":"Gen. Prod. Posting Group"}}},';
        JsonText += '{"FieldName":"Posting Date","Sequence":6,"ReverseSign":false,"Lookup":{"Type":"Lookup","Lookup":{"SourceType":"Column",';
        JsonText += '"RateColumnName":"Effective"}}},{"FieldName":"Document No.","Sequence":7,"ReverseSign":false,';
        JsonText += '"Lookup":{"Type":"Lookup","Lookup":{"SourceType":"Posting Field","PostingVariableName":"Posted Document No."}}},{"FieldName":"Base","Sequence":8,';
        JsonText += '"ReverseSign":false,"Lookup":{"Type":"Lookup","Lookup":{"SourceType":"Current Record","TableName":"Sales Line","FieldName":"Line Amount"}}},';
        JsonText += '{"FieldName":"Amount","Sequence":9,"ReverseSign":false,"Lookup":{"Type":"Lookup","Lookup":{"SourceType":"Component","ComponentName":"VAT"}}},';
        JsonText += '{"FieldName":"VAT Bus. Posting Group","Sequence":2,"ReverseSign":false,"Lookup":{"Type":"Lookup","Lookup":{"SourceType":"Tax Attributes",';
        JsonText += '"AttributeName":"VATBusPostingGrp"}}},{"FieldName":"VAT Prod. Posting Group","Sequence":3,"ReverseSign":false,';
        JsonText += '"Lookup":{"Type":"Lookup","Lookup":{"SourceType":"Tax Attributes","AttributeName":"VATProdPostingGrp"}}}]}}]}],"AttachedEvents":';
        JsonText += '[{"EventName":"OnAfterUpdateSalesUnitPrice","Enabled":true,"Sequence":0}]}]}]';
    end;

    procedure GetUseCaseTree() JsonText: Text
    begin
        JsonText += '[';
        JsonText += '{';
        JsonText += '"Code": "VAT-000001",';
        JsonText += '"Name": "VAT Use Case",';
        JsonText += '"NodeType": "Use Case",';
        JsonText += '"TableID": 37,';
        JsonText += '"CaseID":"{8B8CAACA-798D-4BA5-8ED3-7A2C778121CB}",';
        JsonText += '"UseCaseName": "Calculate tax on Sales Order Line",';
        JsonText += '"Condition": "VERSION(1) SORTING(Field1,Field3,Field4) WHERE(Field6=1(<>''),Field89=1(<>''),Field90=1(<>''))",';
        JsonText += '"TaxType": "GST",';
        JsonText += '"IsTaxTypeRoot": true';
        JsonText += '}';
        JsonText += ']';
    end;
}