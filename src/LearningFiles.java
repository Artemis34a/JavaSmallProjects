import java.io.File;
import java.io.IOException;

public static class LearningFiles {

    static void create_file(String name, String ext){
        String address = STR."C://Users/LENOVO/Desktop/{name}./{ext}";

        File file = new File(address);

        if (!file.exists()){
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
                throw new RuntimeException(e);

            }
        }
    }

}

public static void main(String[] args) {
    String filename = "help";
    String ext = "txt";
    LearningFiles.create_file(filename, ext);

}
