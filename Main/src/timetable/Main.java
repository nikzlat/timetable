package timetable;

import java.awt.*;
import java.sql.*;

import javafx.application.Application;
import javafx.collections.FXCollections;
import javafx.collections.ListChangeListener;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.geometry.Insets;
import javafx.geometry.Orientation;
import javafx.scene.Group;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.ScrollPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import javafx.stage.Stage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.concurrent.ThreadLocalRandom;

import javafx.beans.property.SimpleStringProperty;
import javafx.beans.value.ObservableValue;
import javafx.scene.control.TableColumn.CellDataFeatures;
import javafx.util.Callback;

/**
 * The Timetable program
 *
 * @author  Nikolay Kuzmin
 * @version 1.0
 * @since   2018-05-12
 */

public class Main extends Application {

    String department = "All";
    String month = "January";

    //Window
    Dimension sSize = Toolkit.getDefaultToolkit().getScreenSize();
    int vert = sSize.height;
    int hor = sSize.width;


    //Main Scene
    Scene scene = new Scene(new Group());


    //TableView
    DBConnection dbConnection = new DBConnection();
    SQLRequests sqlRequests = new SQLRequests();

    String[] SQLnew = new String[3];

    String SQL = "SELECT e.name, d.departmentName FROM new_database.employee e, department d where departmentEmployee=idDepartment;";

    TableView table = dbConnection.buildData(SQL);


    //Buttons Department
    Button buttonDepA = new Button("Department A");
    Button buttonDepB = new Button("Department B");
    Button buttonDepC = new Button("Department C");
    Button buttonDepD = new Button("Department D");
    Button buttonDepE = new Button("Department E");
    Button buttonDepF = new Button("Department F");

    //Buttons Month
    Button buttonMonth1 = new Button("January");
    Button buttonMonth2 = new Button("February");
    Button buttonMonth3 = new Button("March");
    Button buttonMonth4 = new Button("April");
    Button buttonMonth5 = new Button("May");
    Button buttonMonth6 = new Button("June");
    Button buttonMonth7 = new Button("July");
    Button buttonMonth8 = new Button("August");
    Button buttonMonth9 = new Button("September");
    Button buttonMonth10 = new Button("October");
    Button buttonMonth11 = new Button("November");
    Button buttonMonth12 = new Button("December");

    Label label = new Label("Departments");
    Label labelMonth = new Label("Month");


    VBox vBoxDepartment = new VBox(); //Департаменты слева
    HBox hBoxMonth = new HBox(); //Месяца слева
    VBox vBoxTimetable = new VBox(); //Табель справа
    HBox hBoxMain = new HBox(); //Внешний


    public static void main(String[] args) {
        launch(args);
    }

    public static void insertData(String s) throws SQLException {

    }

    @Override
    public void start(Stage stage) throws Exception {
        /* random flags to table
        for (int i=1;i<=10;i++){ //employee
            for (int j=1;j<=365;j++) { //day
                int randomNum = ThreadLocalRandom.current().nextInt(1, 12);
                String s = "INSERT INTO linktable3 values (" + i + ", " + j + ", " + randomNum + ");";

                dbConnection.Insert(s);
            }

        }*/


        stage.setTitle("Табель 2018");
        stage.setWidth(hor - 100);
        stage.setHeight(vert - 100);

        table.setMinSize(1000, 500);
        table.setMaxSize(1000, 500);
        table.setTableMenuButtonVisible(true);




        label.setFont(new Font("Arial", 20));
        labelMonth.setFont(new Font("Arial", 15));


        vBoxDepartment.setSpacing(10);
        vBoxDepartment.setPadding(new Insets(10, 0, 0, 10));
        vBoxDepartment.getChildren().addAll(label, buttonDepA, buttonDepB, buttonDepC, buttonDepD, buttonDepE, buttonDepF);


        hBoxMonth.setSpacing(10);
        hBoxMonth.setPadding(new Insets(10, 0, 0, 10));
        hBoxMonth.getChildren().addAll(buttonMonth1, buttonMonth2, buttonMonth3, buttonMonth4, buttonMonth5, buttonMonth6, buttonMonth7, buttonMonth8, buttonMonth9, buttonMonth10, buttonMonth11, buttonMonth12, labelMonth);


        vBoxTimetable.setSpacing(10);
        vBoxTimetable.setPadding(new Insets(10, 0, 0, 10));
        vBoxTimetable.getChildren().addAll(hBoxMonth, table);


        hBoxMain.setSpacing(10);
        hBoxMain.setPadding(new Insets(10, 0, 0, 10));
        hBoxMain.getChildren().addAll(vBoxDepartment, vBoxTimetable);

        ((Group) scene.getRoot()).getChildren().addAll(hBoxMain);


        buttonDepA.setOnAction((ActionEvent e) -> {
            department = "A";
            buttonAction();
        });
        buttonDepB.setOnAction((ActionEvent e) -> {
            department = "B";
            buttonAction();
        });
        buttonDepC.setOnAction((ActionEvent e) -> {
            department = "C";
            buttonAction();
        });
        buttonDepD.setOnAction((ActionEvent e) -> {
            department = "D";
            buttonAction();
        });
        buttonDepE.setOnAction((ActionEvent e) -> {
            department = "E";
            buttonAction();
        });
        buttonDepF.setOnAction((ActionEvent e) -> {
            department = "F";
            buttonAction();
        });


        buttonMonth1.setOnAction((ActionEvent e) -> {
            month = "January";
            buttonAction();
        });
        buttonMonth2.setOnAction((ActionEvent e) -> {
            month = "February";
            buttonAction();
        });
        buttonMonth3.setOnAction((ActionEvent e) -> {
            month = "March";
            buttonAction();
        });
        buttonMonth4.setOnAction((ActionEvent e) -> {
            month = "April";
            buttonAction();
        });
        buttonMonth5.setOnAction((ActionEvent e) -> {
            month = "May";
            buttonAction();
        });
        buttonMonth6.setOnAction((ActionEvent e) -> {
            month = "June";
            buttonAction();
        });
        buttonMonth7.setOnAction((ActionEvent e) -> {
            month = "July";
            buttonAction();
        });
        buttonMonth8.setOnAction((ActionEvent e) -> {
            month = "August";
            buttonAction();
        });
        buttonMonth9.setOnAction((ActionEvent e) -> {
            month = "September";
            buttonAction();
        });
        buttonMonth10.setOnAction((ActionEvent e) -> {
            month = "October";
            buttonAction();
        });
        buttonMonth11.setOnAction((ActionEvent e) -> {
            month = "November";
            buttonAction();
        });
        buttonMonth12.setOnAction((ActionEvent e) -> {
            month = "December";
            buttonAction();
        });




        stage.setScene(scene);
        stage.show();
    }

    void buttonAction(){
        SQLnew = sqlRequests.createRequestStrings(department, month);
        vBoxTimetable.getChildren().clear();
        table = dbConnection.testBuild(SQLnew[0], SQLnew[1], SQLnew[2]);
        vBoxTimetable.getChildren().addAll(hBoxMonth, table);
        labelMonth.setText("Month " + month);
        label.setFont(new Font("Arial", 15));
        label.setText("Department "+department);
    }

}
