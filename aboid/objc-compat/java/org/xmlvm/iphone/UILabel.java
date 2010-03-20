package org.xmlvm.iphone;

import java.awt.Color;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics2D;

public class UILabel extends UIView {

    private String text;
    private Font   font;
    private Color  fontColor;
    private Color  shadowColor;
    private CGSize shadowOffset;
    private int    textAlignment;

    public UILabel() {
        super(new CGRect(0, 0, 0, 0));
        init();
    }

    public UILabel(CGRect rect) {
        super(rect);
        init();
    }

    private void init() {
        // Set a default font
        setFont(new Font("Arial", Font.PLAIN, 16));
        setFontColor(Color.BLACK);
        setBackgroundColor(Color.WHITE);
        setTextAlignment(UITextAlignment.UITextAlignmentLeft);
        setText("");
        shadowOffset = new CGSize(0, 0);
    }

    public void setText(String text) {
        this.text = text;
        this.setNeedsDisplay();
    }

    public void setFont(Font font) {
        this.font = font;
        this.setNeedsDisplay();
    }

    // TODO should be called setTextColor
    public void setFontColor(Color fontColor) {
        this.fontColor = fontColor;
        this.setNeedsDisplay();
    }

    public void setBackgroundColor(Color color) {
        this.backgroundColor = color;
        this.setNeedsDisplay();
    }

    public void setTextAlignment(int alignment) {
        this.textAlignment = alignment;
        this.setNeedsDisplay();
    }

    public void drawRect(CGRect r) {
        this.setTransformForThisView();
        Graphics2D g = CGContext.theContext.graphicsContext;
        CGRect displayRect = getDisplayRect();
        if (backgroundColor != null) {
            g.setPaint(backgroundColor);
            g.fillRect((int) displayRect.origin.x, (int) displayRect.origin.y,
                    (int) displayRect.size.width, (int) displayRect.size.height);
        }
        g.setFont(font);
        FontMetrics fm = g.getFontMetrics();
        int width = fm.stringWidth(text);
        int height = fm.getHeight();
        int descent = fm.getDescent();
        // TODO Centering hard coded for now
        int x = (int) displayRect.origin.x;
        int y = (int) displayRect.origin.y;
        switch (textAlignment) {
        case UITextAlignment.UITextAlignmentLeft:
            // Do nothing
            break;
        case UITextAlignment.UITextAlignmentCenter:
            x += ((int) frame.size.width - width) / 2;
            break;
        }
        y += ((int) frame.size.height - height) / 2 + height - descent;
        
        if (shadowColor != null) {
            g.setColor(shadowColor);
            g.drawString(text, x + shadowOffset.width, y + shadowOffset.height);
        }
        
        g.setColor(fontColor);
        g.drawString(text, x, y);
        this.restoreLastTransform();
    }

    public Color getShadowColor() {
        return shadowColor;
    }

    public void setShadowColor(Color shadowColor) {
        this.shadowColor = shadowColor;
    }

    public CGSize getShadowOffset() {
        return shadowOffset;
    }

    public void setShadowOffset(CGSize shadowOffset) {
        this.shadowOffset = shadowOffset;
    }
}