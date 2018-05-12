package timetable;

import javafx.application.Application;
import javafx.scene.Group;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.awt.*;
import java.sql.SQLException;

public class MainExtendedAppVersion extends Application {
    //Window
    private Dimension sSize = Toolkit.getDefaultToolkit().getScreenSize();
    private int vert = sSize.height;
    private int hor = sSize.width;


    //Main Scene
    private Scene scene = new Scene(new Group());


    //TableView
    private DBConnection dbConnection = new DBConnection();
    private SQLRequests sqlRequests = new SQLRequests();
    private String SQL = "";

    //private TableView table = dbConnection.buildData(SQL);

    public static void main(String[] args) {
        launch(args);
    }

    public static void insertData(String s) throws SQLException {

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

        /*table.setMinSize(1000, 500);
        table.setMaxSize(1000, 500);
        table.setTableMenuButtonVisible(true);*/



        //((Group) scene.getRoot()).getChildren().addAll(hBoxMain);

        /*void Insert(String s) throws SQLException {

            Connection conn = openConnectionToDB();

            Statement stmt = conn.createStatement();

            stmt.executeUpdate(s);

            stmt.close();

            closeConnectionToDB(conn);

        }*/




        stage.setScene(scene);
        stage.show();
    }

}
