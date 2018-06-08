...

connect = DriverManager
          .getConnection(
        		  "jdbc:mysql://" + "IPADDRESS" + ":3311/" + DB +"?allowMultiQueries=true;cacheServerConfiguration=true&" + 
          "jdbcCompliantTruncation=false&zeroDateTimeBehavior=convertToNull&tinyInt1isBit=false&allowMultiQueries=true&yearIsDateType=false",
          TENANT_ID + "#" + USER_ID,"tenant1password");

...


resultSet = executeQuery(connect, "select ID from customer; select * from mainInfoTest4;" +
		"select * from mainInfoTest4 as t1, mainInfoTest1 as t2 where t1.ID = t2.ID;");
while (resultSet.next()) {
	System.out.println("IDs " + resultSet.getInt("C_CUSTKEY"));
}
if (statement.getMoreResults()) {
	ResultSet nextRs = statement.getResultSet();
	while (nextRs.next()) {
		System.out.println("ID_" + nextRs.getInt("ID"));
		System.out.println("Name_" + nextRs.getString("Name"));
		System.out.println("SecondName_" + nextRs.getString("SecondName"));
	}
}
if (statement.getMoreResults()) {
	ResultSet nextRs = statement.getResultSet();
	while (nextRs.next()) {
		System.out.println("ColumnCount:_" + nextRs.getMetaData().getColumnCount());
		System.out.println("ID1_" + nextRs.getInt(1));
		System.out.println("name_" + nextRs.getString(2));
		System.out.println("SecondName_" + nextRs.getString(3));
		System.out.println("ID2_" + nextRs.getInt(4));
		System.out.println("name_" + nextRs.getString(5));
	}
}

...