package timetable;

public class SQLRequests {

    public String[] createRequestStrings(String dep, String month) {
        String[] SQL = new String[3];
        String depNum = "";
        switch (dep.toLowerCase()) {
            case "all":
                depNum = "department.idDepartment";
                break;
            case "a":
                depNum = "1";
                break;
            case "b":
                depNum = "2";
                break;
            case "c":
                depNum = "3";
                break;
            case "d":
                depNum = "4";
                break;
            case "e":
                depNum = "5";
                break;
            case "f":
                depNum = "6";
                break;
            case "g":
                depNum = "7";
                break;
            case "h":
                depNum = "8";
                break;
            case "i":
                depNum = "9";
                break;
            case "j":
                depNum = "10";
                break;
        }

        int numDays = 0;
        int monthNum = 0;
        int id1=1;
        int id2=365;
        switch (month.toLowerCase()) {
            case "january":
                numDays = 31;
                id1=1;
                id2=id1+numDays-1;
                monthNum = 1;
                break;
            case "february":
                numDays = 28;
                id1=32;
                id2=id1+numDays-1;
                monthNum = 2;
                break;
            case "march":
                numDays = 31;
                id1=60;
                id2=id1+numDays-1;
                monthNum = 3;
                break;
            case "april":
                numDays = 30;
                id1=91;
                id2=id1+numDays-1;
                monthNum = 4;
                break;
            case "may":
                numDays = 31;
                id1=121;
                id2=id1+numDays-1;
                monthNum = 5;
                break;
            case "june":
                numDays = 30;
                id1=152;
                id2=id1+numDays-1;
                monthNum = 6;
                break;
            case "july":
                numDays = 31;
                id1=182;
                id2=id1+numDays-1;
                monthNum = 7;
                break;
            case "august":
                numDays = 31;
                id1=213;
                id2=id1+numDays-1;
                monthNum = 8;
                break;
            case "september":
                numDays = 30;
                id1=244;
                id2=id1+numDays-1;
                monthNum = 9;
                break;
            case "october":
                numDays = 31;
                id1=274;
                id2=id1+numDays-1;
                monthNum = 10;
                break;
            case "november":
                numDays = 30;
                id1=305;
                id2=id1+numDays-1;
                monthNum = 11;
                break;
            case "december":
                numDays = 31;
                id1=335;
                id2=id1+numDays-1;
                monthNum = 12;
                break;
        }

        SQL[0] = "CREATE TEMPORARY TABLE TT1 AS (SELECT * FROM new_database.linktable3 where (linktable3.idDay>=" + id1 + " and linktable3.idDay<=" + id2 + "));";
        SQL[1] = "CREATE TEMPORARY TABLE TT2 AS (SELECT employee.name, employee.position, employee.idEmployee ,department.departmentName, calendar.data, flag.flagName " +
                "FROM employee, department, calendar, flag, TT1 " +
                "where ((TT1.idEmployee=employee.idEmployee and TT1.idDay=calendar.idCalendar and TT1.idFlag=flag.idFlag and employee.departmentEmployee=department.idDepartment and " + depNum + "=employee.departmentEmployee)));";
        SQL[2] = "select name, position, idEmployee, ";//, departmentName
        StringBuilder s = new StringBuilder();
        for (int i = 1; i <= numDays; i++) {
            if (((i+id1)%7==0)||((i-1+id1)%7==0)){
                s.append("MAX( if( data='2018-" + monthNum + "-" + i + "', flagName, 0 ) ) as '" + i + "В"  + "', ");
            }
            else {
                s.append("MAX( if( data='2018-" + monthNum + "-" + i + "', flagName, 0 ) ) as '" + i + "', ");
            }
        }
        SQL[2] += s.toString();
        SQL[2] += "concat('Итого: ', 'Хд (', CONVERT(SUM( if( data, flagName = 'Хд', 0 )),char), '), '," +
                "'Я (', CONVERT(SUM( if( data, flagName = 'Я', 0 )),char), '), '," +
                "'Н (', CONVERT(SUM( if( data, flagName = 'Н', 0 )),char), '), '," +
                "'В (', CONVERT(SUM( if( data, flagName = 'В', 0 )),char), '), '," +
                "'Рв (', CONVERT(SUM( if( data, flagName = 'Рв', 0 )),char), '), '," +
                "'Б (', CONVERT(SUM( if( data, flagName = 'Б', 0 )),char), '), '," +
                "'К (', CONVERT(SUM( if( data, flagName = 'К', 0 )),char), '), '," +
                "'ОТ (', CONVERT(SUM( if( data, flagName = 'ОТ', 0 )),char), '), '," +
                "'До (', CONVERT(SUM( if( data, flagName = 'До', 0 )),char), '), '," +
                "'Хд (', CONVERT(SUM( if( data, flagName = 'Хд', 0 )),char), '), '," +
                "'У (', CONVERT(SUM( if( data, flagName = 'У', 0 )),char), '), '," +
                "'Ож (', CONVERT(SUM( if( data, flagName = 'Ож', 0 )),char), '). '" +
                ") as 'SUM'  from TT2 group by name;";


        return SQL;
    }
}
