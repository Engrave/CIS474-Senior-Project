package poolsHotTubsSpas;

import java.awt.Color;

import javax.swing.JPanel;
import javax.swing.JTabbedPane;
import javax.swing.JApplet;
import javax.swing.SwingUtilities;

public class ProjectEstimator extends JApplet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void init() {
		try {
			SwingUtilities.invokeAndWait(new Runnable() {
				public void run() {
					CourseProject();
				}
			});
		} catch (Exception e) {
			System.err.println("createGUI did not complete successfully");
		}
	}

	public void start() {

	}

	public void stop() {

	}

	public void destroy() {

	}

	private void CourseProject() {

		JTabbedPane tabs = new JTabbedPane();
		getContentPane().add(tabs);
		JPanel mainPanel = new JPanel();
		tabs.addTab("Pools", new Pools());
		tabs.addTab("Hot Tubs", new HotTubs());
		mainPanel.setBackground(Color.WHITE);
		setSize(300, 300);
		setVisible(true);
		tabs.setBackground(Color.BLUE);
		tabs.setForeground(Color.WHITE);
	}

	
	
}
