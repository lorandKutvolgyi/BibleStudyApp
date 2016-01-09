package view;

import javax.annotation.PostConstruct;
import javax.inject.Singleton;

import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Text;

public class BibleTextPart {
    private Text text;

    @Singleton
    public BibleTextPart() {
        // TODO Your code here
    }

    @PostConstruct
    public void postConstruct(Composite parent) {
        text = new Text(parent, SWT.MULTI | SWT.BORDER | SWT.WRAP);
        text.setEditable(false);
    }

    public void setText(String text) {
        this.text.setText(text);
    }

}