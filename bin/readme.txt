exportgo.sh  //excel导出到go语言
exportjs.sh  //excel导出到js语言
exportjson.sh //excel导出到json


-t 模板文件路径
-i excel输入路径
-o 输出路径
-d 转换方式 目前支持 json go js

-include 必须包含的sheet页和表格名
-exclude 过滤sheet页和表格名, 注 include的优先级大于exclude

-ff 过滤字段名
-a 表格别名 如 长弓:Long,短弓:Short
-l 解析对应的行号 如 -l 1,0,2   1行为字段名 0行为类型 2行为字段描述


注:需要把参数内的路径缓存本地的



字段类型关键字
string float bool int enum id name array json


模板关键字

<table><table> 
<enum></enum>
<field></field>

${table_alias}  //表格别名     兵种表
${table_name}   //表格名       army
${table_fixname}   //表格名转驼峰       Army
${table_uppername} //表格名转大写       ARMY
${table_data}  //表格的json数据

${field_alias}  //字段别名     字段1
${field_name}   //字段名      field1  
${field_fixname}   //字段名      Field1

${enum_name}  //枚举名
${enum_value} //枚举值
${enum_alias} //枚举别名