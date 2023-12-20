package sample.manager.ManagerPages;

import de.jensd.fx.glyphs.fontawesome.FontAwesomeIconView;
import javafx.event.ActionEvent;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;
import java.net.URL;
import java.util.ResourceBundle;
import java.util.concurrent.atomic.AtomicInteger;

public class ManagerMain implements Initializable {

    public BorderPane borderpane;
    public FontAwesomeIconView close;
    public FontAwesomeIconView minimize;
    public FontAwesomeIconView maximize;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        windowLoad("ManagerHome.fxml");

        close.setOnMouseClicked(event -> {
            System.exit(0);
        });

        minimize.setOnMouseClicked(event -> {
            minimizeStageOfNode((Node) event.getSource());
        });

        AtomicInteger maxWindow = new AtomicInteger();
        maximize.setOnMouseClicked(event -> {
            Stage stage1 = (Stage) borderpane.getScene().getWindow();
            stage1.setMaximized(!stage1.isMaximized());
        });
    }

    public void windowLoad(String URL)
    {
        try
        {
            Pane window = FXMLLoader.load(getClass().getResource(URL));
            borderpane.setCenter(window);
        }
        catch(Exception err)
        {
            System.out.println("Problem : " + err);
        }
    }

    public void ManageRooms(ActionEvent actionEvent) {
        windowLoad("ManagerManageRooms.fxml");
    }

    public void ManagerHome(ActionEvent actionEvent) {
        windowLoad("ManagerHome.fxml");
    }

    public void ManagerCheckIn(ActionEvent actionEvent) {
        windowLoad("ManagerCheckIn.fxml");
    }

    public void ManagerCheckOut(ActionEvent actionEvent) {
        windowLoad("ManagerCheckOut.fxml");
    }

    public void CheckOutDetails(ActionEvent actionEvent) {
        windowLoad("ManagerCheckOutDetails.fxml");
    }

    public void closeApplication(MouseEvent mouseEvent) {
        System.exit(0);
    }

    private void minimizeStageOfNode(Node node) {
        Stage stage = (Stage) node.getScene().getWindow();
        stage.setIconified(true);
    }
}
