package hooks;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import utilities.Driver;

public class Hooks {
    /*
    Hooks her bir scenario yada scenario outline dan once yada sonra calismasini istedigimiz methodlar konur
    @Before ve @After methodlarini icerir
    Burada onemli olan raporlama isleminin ekran goruntusu ile birlikte Hooks yardimiyla yapilir
     */
    @Before
    public void setUpScenarios() {
        System.out.println("Before Methodu");
    }

    @After
    public void tearDownScenarios(Scenario scenario) {
        System.out.println("After Methodu");
        if (scenario.isFailed()) {//eger bir scenario fail ederse ekran goruntusunu al ve rapora ekle
            final byte[] failedScreenshot = ((TakesScreenshot) Driver.getDriver()).getScreenshotAs(OutputType.BYTES);
            //              ekran goruntusu             file tipi               ekran goruntusu adi
            scenario.attach(failedScreenshot, "image/png", "failed_scenario" + scenario.getName());
            Driver.closeDriver();
        }
    }
}
