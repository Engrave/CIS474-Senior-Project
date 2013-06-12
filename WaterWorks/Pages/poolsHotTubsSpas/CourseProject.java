package poolsHotTubsSpas;

import java.awt.Color;

import javax.swing.JFrame;

public class CourseProject {
	public static void main(String[] args)
	{
		ProjectEstimator applet = new ProjectEstimator();
		applet.init();
		applet.start();
		
		JFrame window = new JFrame("WaterWorks Project Estimator");
		window.setContentPane(applet);
		window.setSize(300, 300);
		window.setBackground(Color.WHITE);
		window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		window.setVisible(true);
	}

}
