package br.com.youse.qa.test.qatestandroid.models;

import java.io.Serializable;

/**
 * Created by julio on 14/06/16.
 */
public class Slide implements Serializable {
    private int number;
    private String title;
    private int color;
    private boolean isLast;

    public Slide(int number, String title, int color, boolean isLast) {
        this.number = number;
        this.title = title;
        this.color = color;
        this.isLast = isLast;
    }

    public int getNumber() {
        return number;
    }

    public String getTitle() {
        return title;
    }

    public boolean isLast() {
        return isLast;
    }

    public int getColor() {
        return color;
    }
}
