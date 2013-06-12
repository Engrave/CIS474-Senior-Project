package poolsHotTubsSpas;

import javax.swing.JPanel;
import javax.swing.JTabbedPane;
import java.awt.Color;

public class CourseProject extends JPanel {
	public CourseProject() {

		setName("Water Works Project Estimator");

		JTabbedPane tabs = new JTabbedPane();
		tabs.addTab("Pools", new Pools());
		tabs.addTab("Hot Tubs", new HotTubs());
		setSize(300, 300);
		setVisible(true);
		tabs.setBackground(Color.BLUE);
	}

}
