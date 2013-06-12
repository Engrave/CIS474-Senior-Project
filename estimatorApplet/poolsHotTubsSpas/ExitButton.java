package poolsHotTubsSpas;

import javax.swing.JButton;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class ExitButton {
	private static JButton eButton;

	public JButton getExitButton() {
		eButton = new JButton("Exit");
		eButton.setMnemonic('x');
		eButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				System.exit(0);
			}
		});
		return eButton;
	}

}
