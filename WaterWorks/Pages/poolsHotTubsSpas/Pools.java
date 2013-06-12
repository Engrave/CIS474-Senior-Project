package poolsHotTubsSpas;

import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import java.text.DecimalFormat;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.JTextArea;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Pools extends JPanel {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	JLabel poolLengthLabel;
	JTextField poolLengthField;
	JLabel poolWidthLabel;
	JTextField poolWidthField;
	JLabel poolDepthLabel;
	JTextField poolDepthField;
	JButton calcPool;
	JButton clearPool;
	JButton saveQuote;
	JLabel poolResultsLabel;
	JTextField poolResultsField;
	JTextArea errorMessage;
	
	private Connection poolConnect;
	private Statement poolStatement;

	public Pools() {
		
		setBackground(Color.WHITE);
		
		poolLengthLabel = new JLabel();
		poolLengthLabel.setText("Enter the pool's length (ft):");

		poolLengthField = new JTextField(10);

		poolWidthLabel = new JLabel();
		poolWidthLabel.setText("Enter the pool's width (ft):");

		poolWidthField = new JTextField(10);

		poolDepthLabel = new JLabel();
		poolDepthLabel.setText("Enter the pool's depth (ft):");

		poolDepthField = new JTextField(10);

		calcPool = getPoolVolume();
		calcPool.setBackground(Color.BLUE);
		calcPool.setForeground(Color.WHITE);
		clearPool = clearPoolFields();
		clearPool.setBackground(Color.BLUE);
		clearPool.setForeground(Color.WHITE);
		saveQuote = savePoolEstimate();
		saveQuote.setBackground(Color.BLUE);
		saveQuote.setForeground(Color.WHITE);
		ExitButton eButton = new ExitButton();

		poolResultsLabel = new JLabel();
		poolResultsLabel.setText("The pool's volume is (ft^3):");

		poolResultsField = new JTextField(10);

		errorMessage = new JTextArea();
		errorMessage.setVisible(false);

		this.add(poolLengthLabel);
		this.add(poolLengthField);
		this.add(poolWidthLabel);
		this.add(poolWidthField);
		this.add(poolDepthLabel);
		this.add(poolDepthField);
		this.add(calcPool);
		this.add(clearPool);
		this.add(eButton.getExitButton());
		this.add(poolResultsLabel);
		this.add(poolResultsField);
		this.add(saveQuote);
		this.add(errorMessage);
		
		try {
			String poolConnectUrl = "jdbc:sqlserver://localhost;instanceName=SQLEXPRESS;integratedSecurity=true;databaseName=WaterWorks;";
			poolConnect = DriverManager.getConnection(poolConnectUrl);
		} catch (Exception e) {
			System.err.append("Unable to find and load driver");
			
		}

	}

	public JButton getPoolVolume() {
		JButton calculatePool;
		calculatePool = new JButton("Calculate Volume");
		calculatePool.setMnemonic('C');
		calculatePool.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				DecimalFormat number = new DecimalFormat("###.##");
				double length = 0, width = 0, depth = 0, volume;
				String input;
				try {
					input = poolLengthField.getText();
					if (input.equals("")) {
						poolLengthField.setBackground(Color.YELLOW);
						errorMessage.setText("Please fill out all fields!");
						errorMessage.setVisible(true);
					} else {
						length = Double.parseDouble(input);
						errorMessage.setVisible(false);
					}
				} catch (NumberFormatException fe) {
					errorMessage.append("Please Enter Valid Numbers!");
					errorMessage.setVisible(true);
				}

				try {
					input = poolWidthField.getText();
					if (input.equals("")) {
						poolWidthField.setBackground(Color.YELLOW);
						errorMessage.setText("Please fill out all fields!");
						errorMessage.setVisible(true);
					} else {
						width = Double.parseDouble(input);
						errorMessage.setVisible(false);
					}
				} catch (NumberFormatException fe) {
					errorMessage.append("Please Enter Valid Numbers!");
					errorMessage.setVisible(true);
				}

				try {
					input = poolDepthField.getText();
					if (input.equals("")) {
						poolDepthField.setBackground(Color.YELLOW);
						errorMessage.setText("Please fill out all fields!");
						errorMessage.setVisible(true);
					} else {
						depth = Double.parseDouble(input);
						errorMessage.setVisible(false);
					}
				} catch (NumberFormatException fe) {
					errorMessage.append("Please Enter Valid Numbers!");
					errorMessage.setVisible(true);
				}
				
				volume = length * width * depth;
				poolResultsField.setText(number.format(volume));
			}
		});
		return calculatePool;
	}

	public JButton clearPoolFields() {
		JButton resetFields;
		resetFields = new JButton("Reset");
		resetFields.setMnemonic('R');
		resetFields.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent rt) {
				poolWidthField.setText(null);
				poolLengthField.setText(null);
				poolDepthField.setText(null);
				poolResultsField.setText(null);
				errorMessage.setText(null);
			}
		});
		return resetFields;
	}

	public JButton savePoolEstimate() {
		JButton saveEstimate;
		saveEstimate = new JButton("Save My Estimate");
		saveEstimate.setMnemonic('S');
		saveEstimate.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent s) {
				double PoolW = Double.parseDouble(poolWidthField.getText());
				double PoolL = Double.parseDouble(poolLengthField.getText());
				double PoolV = Double.parseDouble(poolResultsField.getText());
				double PoolD = Double.parseDouble(poolDepthField.getText());
				try {
					poolStatement = poolConnect.createStatement();
					poolStatement.executeUpdate("INSERT INTO POOL (PoolV, PoolD, PoolW, PoolL) VALUES (" + 
					"'" + PoolV + "', '" + PoolD + "', '" + PoolW + "', '" + PoolL + "'" + ")");
					poolConnect.close();
					errorMessage.setText("Your estimate has been saved.\n"
							+ "Someone will contact you soon with a quote.");
					errorMessage.setVisible(true);
				} catch (SQLException insertException) {
					insertException.printStackTrace();
					errorMessage.setText("Oops! There was a problem saving your quote.\n"
									+ "Please try again later.");
					errorMessage.setVisible(true);
				}
			}
		});
		return saveEstimate;
	}
}
