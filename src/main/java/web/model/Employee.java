package web.model;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by mipan on 04.09.2015.
 */
@Entity
@Table(name = "employee")
public class Employee implements Serializable {

    private int id;
    private String firstName;
    private String lastName;
    private String secondName;
    private Integer age;
    private String experience;
    private String description;


    public Employee() {
    }

    public Employee(int id, String firstName, String lastName, String secondName, Integer age, String experience, String description) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.secondName = secondName;
        this.age = age;
        this.experience = experience;
        this.description = description;
    }


    @Id
    @Column(name = "id")
    @GeneratedValue(strategy=GenerationType.AUTO)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name = "first_name", nullable = true)
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    @Column(name = "last_name", nullable = true)
    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    @Column(name = "second_name", nullable = true)
    public String getSecondName() {
        return secondName;
    }

    public void setSecondName(String secondName) {
        this.secondName = secondName;
    }

    @Column(name = "age", nullable = true)
    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    @Column(name = "experience", nullable = true)
    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    @Column(name = "description", nullable = true)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
