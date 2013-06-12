package poolsHotTubsSpas;

import java.awt.Color;

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
			e.printStackTrace();
			System.err.println("Applet launch did not complete successfully!");
		}
	}

	public void start() {

	}

	public void stop() {

	}

	public void destroy() {

	}

	private void CourseProject() {
		setName("Water Works Project Estimator");

		JTabbedPane tabs = new JTabbedPane();
		getContentPane().add(tabs);
		tabs.addTab("Pools", new Pools());
		tabs.addTab("Hot Tubs", new HotTubs());

		setSize(300, 300);
		setVisible(true);
		tabs.setBackground(Color.BLUE);
		tabs.setForeground(Color.WHITE);
	}

	/*
	 * public static void main(String[] args) { CourseProject exit = new
	 * CourseProject(); exit.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	 * 
	 * }
	 */

}
