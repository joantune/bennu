package pt.ist.fenixframework.plugins.scheduler;

import java.net.URL;
import java.util.Collections;
import java.util.List;

import pt.ist.fenixframework.FenixFrameworkPlugin;
import pt.ist.fenixframework.plugins.scheduler.domain.SchedulerSystem;

public class SchedulerPlugin implements FenixFrameworkPlugin {

    @Override
    public List<URL> getDomainModel() {
	return Collections.singletonList(getClass().getResource("/scheduler-plugin.dml"));
    }

    @Override
    public void initialize() {
	SchedulerSystem.getInstance();
    }

}