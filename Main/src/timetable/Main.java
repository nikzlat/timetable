package timetable;

import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.geometry.Insets;
import javafx.scene.Group;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TableView;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import javafx.stage.Stage;

import java.awt.*;

/**
 * The Timetable program
 *
 * @author Nikolay Kuzmin
 * @version 1.0
 * @since 2018-05-12
 */

public class Main extends Application {

    private String department = "All";
    private String month = "January";

    //Window
    private Dimension sSize = Toolkit.getDefaultToolkit().getScreenSize();
    private int vert = sSize.height;
    private int hor = sSize.width;


    //Main Scene
    private Scene scene = new Scene(new Group());


    //TableView
    private DBConnection dbConnection = new DBConnection();
    private SQLRequests sqlRequests = new SQLRequests();

    private String[] SQL = {"SELECT e.name, d.departmentName FROM new_database.employee e, department d where departmentEmployee=idDepartment;"};

    private TableView table = dbConnection.buildData(SQL);


    //Buttons Department
    private Button buttonDepA = new Button("Department A");
    private Button buttonDepB = new Button("Department B");
    private Button buttonDepC = new Button("Department C");
    private Button buttonDepD = new Button("Department D");
    private Button buttonDepE = new Button("Department E");
    private Button buttonDepF = new Button("Department F");

    //Buttons Month
    private Button buttonMonth1 = new Button("January");
    private Button buttonMonth2 = new Button("February");
    private Button buttonMonth3 = new Button("March");
    private Button buttonMonth4 = new Button("April");
    private Button buttonMonth5 = new Button("May");
    private Button buttonMonth6 = new Button("June");
    private Button buttonMonth7 = new Button("July");
    private Button buttonMonth8 = new Button("August");
    private Button buttonMonth9 = new Button("September");
    private Button buttonMonth10 = new Button("October");
    private Button buttonMonth11 = new Button("November");
    private Button buttonMonth12 = new Button("December");

    private Label labelDepartments = new Label("Departments");
    private Label labelMonth = new Label("Month");


    private VBox vBoxDepartment = new VBox(); //Департаменты слева
    private HBox hBoxMonth = new HBox(); //Месяца слева
    private VBox vBoxTimetable = new VBox(); //Табель справа
    private HBox hBoxMain = new HBox(); //Внешний


    public static void main(String[] args) {
        launch(args);
    }


    @Override
    public void start(Stage stage) {

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


        labelDepartments.setFont(new Font("Arial", 20));
        labelMonth.setFont(new Font("Arial", 15));


        vBoxDepartment.setSpacing(10);
        vBoxDepartment.setPadding(new Insets(10, 0, 0, 10));
        vBoxDepartment.getChildren().addAll(labelDepartments, buttonDepA, buttonDepB, buttonDepC, buttonDepD, buttonDepE, buttonDepF);


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

    private void buttonAction() {
        String[] SQLArray = sqlRequests.createRequestStrings(department, month);
        vBoxTimetable.getChildren().clear();
        table = dbConnection.buildData(SQLArray);
        vBoxTimetable.getChildren().addAll(hBoxMonth, table);
        labelMonth.setText("Month " + month);
        labelDepartments.setFont(new Font("Arial", 15));
        labelDepartments.setText("Department " + department);
    }

}
