/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package murach.business;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/**
 *
 * @author POW
 */
public class User implements Serializable{
    private String firstName;
    private String lastName;
    private String email;
    private String dob;
    private String aboutus;
    private List<String> announcements;
    private String contactPreference;

    // Constructors
    public User() {}

    public User(String firstName, String lastName, String email, String dob,
                String aboutus, List<String> announcements, String contactPreference) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.dob = dob;
        this.aboutus = aboutus;
        this.announcements = announcements;
        this.contactPreference = contactPreference;
    }

    // Getters & Setters
    public String getFirstName() { return firstName; }
    public void setFirstName(String firstName) { this.firstName = firstName; }

    public String getLastName() { return lastName; }
    public void setLastName(String lastName) { this.lastName = lastName; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getDob() { return dob; }
    public void setDob(String dob) { this.dob = dob; }

    public String getAboutus() { return aboutus; }
    public void setAboutus(String aboutus) { this.aboutus = aboutus; }

    public List<String> getAnnouncements() { return announcements; }
    public void setAnnouncements(List<String> announcements) { this.announcements = announcements; }

    public String getContactPreference() { return contactPreference; }
    public void setContactPreference(String contactPreference) { this.contactPreference = contactPreference; }
}