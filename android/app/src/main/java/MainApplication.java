import android.app.Application;
import com.yandex.mapkit.MapKitFactory;

public class MainApplication extends Application {
    @Override
    public void onCreate() {
        super.onCreate();
        MapKitFactory.setLocale("Russian"); // Your preferred language. Not required, defaults to system language
        MapKitFactory.setApiKey("5fe1870a-16ff-4e2b-90c4-8bdce7f5135a"); // Your generated API key
    }
}