package timetable;

import javafx.beans.property.SimpleStringProperty;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.util.Callback;

import java.io.File;
import java.io.FileNotFoundException;
import java.sql.*;
import java.util.Scanner;


public class DBConnection {

    private Connection openConnectionToDB() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        Connection conn = null;

        try {
            conn = DriverManager.getConnection(
                    "jdbc:mysql://94.19.191.97:3307/new_database?autoReconnect=true&useSSL=false",
                    "root", "Rjnbrb^^");

            if (conn == null) {
                System.out.println("Нет соединения с БД!");
                System.exit(0);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    private void closeConnectionToDB(Connection conn) throws SQLException {
        if (conn != null) {
            conn.close();
        }
    }


    //CONNECTION DATABASE
    TableView buildData(String[] SQL) {

        /*executeSqlScript(c, file1);
        executeSqlScript(c, file2);
        executeSqlScript(c, file3);
        executeSqlScript(c, file4);
        executeSqlScript(c, file5);*/


        ObservableList<ObservableList> data = FXCollections.observableArrayList();
        TableView tableview = new TableView();
        try {
            Connection c = openConnectionToDB();
            //ResultSet
            ResultSet rs;
            if (SQL.length > 1) {
                c.createStatement().executeUpdate(SQL[0]);
                c.createStatement().executeUpdate(SQL[1]);
                rs = c.createStatement().executeQuery(SQL[2]);

            } else {
                rs = c.createStatement().executeQuery(SQL[0]);
            }


            /*
              TABLE COLUMN ADDED DYNAMICALLY
             */
            for (int i = 0; i < rs.getMetaData().getColumnCount(); i++) {
                //We are using non property style for making dynamic table
                final int j = i;
                TableColumn col = new TableColumn(rs.getMetaData().getColumnName(i + 1));
                col.setCellValueFactory(new Callback<TableColumn.CellDataFeatures<ObservableList, String>, ObservableValue<String>>() {
                    public ObservableValue<String> call(TableColumn.CellDataFeatures<ObservableList, String> param) {
                        return new SimpleStringProperty(param.getValue().get(j).toString());
                    }
                });

                tableview.getColumns().addAll(col);
                //System.out.println("Column [" + i + "] ");
            }

            /*
             * Data added to ObservableList *
             */

            while (rs.next()) {
                //Iterate Row
                ObservableList<String> row = FXCollections.observableArrayList();
                for (int i = 1; i <= rs.getMetaData().getColumnCount(); i++) {
                    //Iterate Column
                    if (rs.getString(i) != null) {
                        row.add(rs.getString(i));
                    }
                }
                //System.out.println("Row [1] added " + row);
                data.add(row);

            }
            closeConnectionToDB(c);
            //FINALLY ADDED TO TableView
            tableview.setItems(data);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error on Building Data");
        }

        return tableview;
    }


    public void executeSqlScript(Connection conn, File inputFile) {

        conn = openConnectionToDB();
        // Delimiter
        String delimiter = ";";

        // Create scanner
        Scanner scanner;
        try {
            scanner = new Scanner(inputFile).useDelimiter(delimiter);
        } catch (FileNotFoundException e1) {
            e1.printStackTrace();
            return;
        }

        // Loop through the SQL file statements
        Statement currentStatement = null;
        while (scanner.hasNext()) {

            // Get statement
            String rawStatement = scanner.next() + delimiter;
            try {
                // Execute statement
                currentStatement = conn.createStatement();
                currentStatement.execute(rawStatement);
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                // Release resources
                if (currentStatement != null) {
                    try {
                        currentStatement.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
                currentStatement = null;
            }
        }
        scanner.close();
    }


}
