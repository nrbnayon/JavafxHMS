package sample.admin.AdminPages;

import javafx.event.ActionEvent;
import sample.Main;
import sample.BackEnd.CommonTask;

import java.io.IOException;

public class AdminHome {
    public void BackToMain(ActionEvent actionEvent) throws IOException {
        CommonTask.pageNavigation("/sample/sample.fxml", Main.stage,this.getClass(),"Admin Dashboard", 600, 400);
    }
}
