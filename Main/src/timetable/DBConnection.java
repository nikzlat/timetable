package timetable;

import javafx.beans.property.SimpleStringProperty;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.util.Callback;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.*;
import java.util.Scanner;


public class DBConnection {

    Connection c;

    File file1 = new File("resources/new_database_calendar.sql");
    File file2 = new File("resources/new_database_department.sql");
    File file3 = new File("resources/new_database_employee.sql");
    File file4 = new File("resources/new_database_flag.sql");
    File file5 = new File("resources/new_database_linktable3.sql");
    File file6 = new File("resources/new_database_linktable4.sql");


    private Connection openConnectionToDB() throws SQLException {
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

    void Insert(String s) throws SQLException {

        Connection conn = openConnectionToDB();

        Statement stmt = conn.createStatement();

        stmt.executeUpdate(s);

        stmt.close();

        closeConnectionToDB(conn);

    }


    //CONNECTION DATABASE
    TableView buildData(String SQL) {

        /*executeSqlScript(c, file1);
        executeSqlScript(c, file2);
        executeSqlScript(c, file3);
        executeSqlScript(c, file4);
        executeSqlScript(c, file5);
        executeSqlScript(c, file6);*/


        ObservableList<ObservableList> data = FXCollections.observableArrayList();
        TableView tableview = new TableView();
        try {
            c = openConnectionToDB();
            //ResultSet
            ResultSet rs = c.createStatement().executeQuery(SQL);


            /**********************************
             * TABLE COLUMN ADDED DYNAMICALLY *
             **********************************/
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
                System.out.println("Column [" + i + "] ");
            }

            /********************************
             * Data added to ObservableList *
             ********************************/

            while (rs.next()) {
                //Iterate Row
                ObservableList<String> row = FXCollections.observableArrayList();
                for (int i = 1; i <= rs.getMetaData().getColumnCount(); i++) {
                    //Iterate Column
                    if (rs.getString(i) != null) {
                        row.add(rs.getString(i));
                    }
                }
                System.out.println("Row [1] added " + row);
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

    void executeSrt(String SQL) {
        //Connection c;
        try {
            c = openConnectionToDB();
            //ResultSet
            c.createStatement().executeUpdate(SQL);
            closeConnectionToDB(c);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error on Building Data");
        }
    }





    //CONNECTION DATABASE
    TableView testBuild(String SQL1,String SQL2, String SQL3) {
        //Connection c;
        ObservableList<ObservableList> data = FXCollections.observableArrayList();
        TableView tableview = new TableView();
        try {
            c = openConnectionToDB();
            //ResultSet
            c.createStatement().executeUpdate(SQL1);
            c.createStatement().executeUpdate(SQL2);
            ResultSet rs = c.createStatement().executeQuery(SQL3);


            /**********************************
             * TABLE COLUMN ADDED DYNAMICALLY *
             **********************************/
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

            /********************************
             * Data added to ObservableList *
             ********************************/

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

        tableview.setMinSize(1000, 500);
        tableview.setMaxSize(1000, 500);
        tableview.setTableMenuButtonVisible(true);
        //((TablePosition) tableview.getSelectionModel().getSelectedCells().get(0)).getTableColumn().getText();
        //getTableView().getItems().get(CustomerButtonCell.this.getIndex())
        return tableview;
    }




    public void executeSqlScript(Connection conn, File inputFile) {

        try {
            conn = openConnectionToDB();
        } catch (SQLException e) {
            e.printStackTrace();
        }
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
        while(scanner.hasNext()) {

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
