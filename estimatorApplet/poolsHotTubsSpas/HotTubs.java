package poolsHotTubsSpas;

import javax.swing.JRadioButton;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.JButton;
import javax.swing.JTextArea;
import javax.swing.JPanel;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;

import java.awt.Color;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.event.ComponentEvent;
import java.awt.event.ComponentListener;

import java.text.DecimalFormat;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class HotTubs extends JPanel implements ActionListener,
		ComponentListener {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	JRadioButton roundTub;
	JRadioButton ovalTub;
	JLabel tubLengthLabel;
	JTextField tubLengthField;
	JLabel tubWidthLabel;
	JTextField tubWidthField;
	JLabel tubDepthLabel;
	JTextField tubDepthField;
	JButton calcTub;
	JButton clearTub;
	JButton saveQuote;
	JLabel tubVolumeLabel;
	JTextField tubVolumeField;
	JTextArea tubError;
	private Connection tubConnect;
	private Statement tubStatement;

	public HotTubs() {
		roundTub = new JRadioButton("Round Tub");
		roundTub.setSelected(false);
		roundTub.addActionListener(this);

		ovalTub = new JRadioButton("Oval Tub");
		ovalTub.setSelected(false);
		ovalTub.addActionListener(this);

		tubLengthLabel = new JLabel();
		tubLengthLabel.setText("Enter the tub's length (ft):");

		tubLengthField = new JTextField(10);
		tubLengthField.getDocument().addDocumentListener(new LengthDocument());

		tubWidthLabel = new JLabel();
		tubWidthLabel.setText("Enter the tub's width (ft):");

		tubWidthField = new JTextField(10);

		tubDepthLabel = new JLabel();
		tubDepthLabel.setText("Enter the tub's depth (ft):");

		tubDepthField = new JTextField(10);

		calcTub = getTubVolume();
		calcTub.setBackground(Color.BLUE);
		calcTub.setForeground(Color.WHITE);

		clearTub = clearTubFields();
		clearTub.setBackground(Color.BLUE);
		clearTub.setForeground(Color.WHITE);

		saveQuote = saveTubEstimate();
		saveQuote.setBackground(Color.BLUE);
		saveQuote.setForeground(Color.WHITE);

		ExitButton eButton = new ExitButton();

		tubVolumeLabel = new JLabel();
		tubVolumeLabel.setText("The tub's volume is (ft^3):");

		tubVolumeField = new JTextField(10);

		tubError = new JTextArea();
		tubError.setVisible(false);

		this.add(roundTub);
		this.add(ovalTub);
		this.add(tubLengthLabel);
		this.add(tubLengthField);
		this.add(tubWidthLabel);
		this.add(tubWidthField);
		this.add(tubDepthLabel);
		this.add(tubDepthField);
		this.add(calcTub);
		this.add(clearTub);
		this.add(eButton.getExitButton());
		this.add(tubVolumeLabel);
		this.add(tubVolumeField);
		this.add(saveQuote);
		this.add(tubError);
		
		try {
			String tubConnectUrl = "jdbc:sqlserver://localhost;instanceName=SQLEXPRESS;integratedSecurity=true;databaseName=WaterWorks;";
			tubConnect = DriverManager.getConnection(tubConnectUrl);
		} catch (Exception e) {
			System.err.append("Unable to find and load driver");
			
		}

	}

	class LengthDocument implements DocumentListener {
		@Override
		public void insertUpdate(DocumentEvent l) {
			if (roundTub.isSelected()) {
				tubWidthField.setText(tubLengthField.getText());
				tubError.setVisible(true);
			}
		}

		@Override
		public void removeUpdate(DocumentEvent l) {
			tubWidthField.setText(tubLengthField.getText());
			tubWidthField.setEditable(true);
			tubError.setVisible(false);
		}

		@Override
		public void changedUpdate(DocumentEvent l) {
		}
	}

	@Override
	public void actionPerformed(ActionEvent tub) {
		if (tub.getSource() == roundTub) {
			ovalTub.setSelected(false);
			tubLengthField.setText("");
			tubDepthField.setText("");
			tubVolumeField.setText("");
			tubWidthField.setEditable(false);
			tubError.setText("Tub's width set to length");
		} else if (tub.getSource() == ovalTub) {
			roundTub.setSelected(false);
			tubLengthField.setText("");
			tubWidthField.setText("");
			tubDepthField.setText("");
			tubVolumeField.setText("");
			tubWidthField.setEditable(true);
			tubError.setVisible(false);
		}
	}
	

	public JButton getTubVolume() {
		JButton calculateTub;
		calculateTub = new JButton("Calculate Volume");
		calculateTub.setMnemonic('C');
		calculateTub.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent ct) {
				DecimalFormat number = new DecimalFormat("###.##");
				double length = 0, width = 0, depth = 0, volume;
				String input;

				try {
					input = tubLengthField.getText();
					if (input.equals("")) {
						tubLengthField.setBackground(Color.YELLOW);
						tubError.setText("Please fill out all fields!");
						tubError.setVisible(true);
					} else {
						length = Double.parseDouble(input);
						tubError.setVisible(false);
					}
				} catch (NumberFormatException fe) {
					tubError.append("Please Enter Valid Numbers!");
					tubError.setVisible(true);
				}

				try {
					input = tubWidthField.getText();
					if (input.equals("")) {
						tubWidthField.setBackground(Color.YELLOW);
						tubError.setText("Please fill out all fields!");
						tubError.setVisible(true);
					} else {
						width = Double.parseDouble(input);
					}
				} catch (NumberFormatException fe) {
					tubError.append("Please Enter Valid Numbers!");
					tubError.setVisible(true);
				}

				try {
					input = tubDepthField.getText();
					if (input.equals("")) {
						tubDepthField.setBackground(Color.YELLOW);
						tubError.setText("Please fill out all fields!");
						tubError.setVisible(true);
					} else {
						depth = Double.parseDouble(input);
						tubError.setVisible(false);
					}
				} catch (NumberFormatException fe) {
					tubError.append("Please Enter Valid Numbers!");
					tubError.setVisible(true);
				}
				
				volume = (Math.PI * ((length * width) * (length * width)))
						* depth;
				tubVolumeField.setText(number.format(volume));
			}

		});
		return calculateTub;
	}

	public JButton clearTubFields() {
		JButton resetFields;
		resetFields = new JButton("Reset");
		resetFields.setMnemonic('R');
		resetFields.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent rt) {
				tubWidthField.setText(null);
				tubLengthField.setText(null);
				tubDepthField.setText(null);
				tubVolumeField.setText(null);
				tubError.setText(null);
			}
		});
		return resetFields;
	}

	public JButton saveTubEstimate() {
		JButton saveEstimate;
		saveEstimate = new JButton("Save My Estimate");
		saveEstimate.setMnemonic('S');
		saveEstimate.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent s) {
				double TubW = Double.parseDouble(tubWidthField.getText());
				double TubL = Double.parseDouble(tubLengthField.getText());
				double TubV = Double.parseDouble(tubVolumeField.getText());
				double TubD = Double.parseDouble(tubDepthField.getText());
				try {
					tubStatement = tubConnect.createStatement();
					tubStatement.executeUpdate("INSERT INTO HOT_TUB (TubV, TubD, TubW, TubL) VALUES (" + 
					"'" + TubV + "', '" + TubD + "', '" + TubW + "', '" + TubL + "'" + ")");
					tubConnect.close();
					tubError.setText("Your estimate has been saved.\n"
							+ "Someone will contact you soon with a quote.");
					tubError.setVisible(true);
				} catch (SQLException insertException) {
					insertException.printStackTrace();
					tubError.setText("Oops! There was a problem saving your\n"
							+ "quote. Please try again later.");
					tubError.setVisible(true);
				}
			}
		});
		return saveEstimate;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	@Override
	public void componentHidden(ComponentEvent arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void componentMoved(ComponentEvent arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void componentResized(ComponentEvent arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void componentShown(ComponentEvent arg0) {
		// TODO Auto-generated method stub

	}

}
