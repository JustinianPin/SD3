package ejb;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.TableGenerator;

@Entity //adica e JPA
public class StudentEntity {
    @Id //dupa ce camp vor f identificate inregistrarile (Primary Key)
    @GeneratedValue //val generata automat
    // MODIFICARE STACKOVERFLOW: 2 etichete
    /*
    @GeneratedValue(generator="sqlite")
    @TableGenerator(name="sqlite", table="bazaDeDateSQLite",
            pkColumnName="name", valueColumnName="seq",
            pkColumnValue="sqliteTestTable")
    */
    //trebuie tipuride date (INCAPSULATE) simple (primitive sau nu) SI SA FIE SERIALIZABILE
    private int id;
    private String nume;
    private String prenume;
    private int varsta;
    public StudentEntity() {
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getNume() {
        return nume;
    }
    public void setNume(String nume) {
        this.nume = nume;
    }
    public String getPrenume() {
        return prenume;
    }
    public void setPrenume(String prenume) {
        this.prenume = prenume;
    }
    public int getVarsta() {
        return varsta;
    }
    public void setVarsta(int varsta) {
        this.varsta = varsta;
    }
}