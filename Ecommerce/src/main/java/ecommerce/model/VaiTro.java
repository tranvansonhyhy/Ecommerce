package ecommerce.model;

import javax.persistence.*;

@Entity
@Table(name = "VaiTro")
public class VaiTro {
    private int id;
    private String maVaiTro;
    private String tenVaiTro;
    private String moTa;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="Id", unique = true, nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name = "MaVaiTro", nullable = true)
    public String getMaVaiTro() {
        return maVaiTro;
    }

    public void setMaVaiTro(String maVaiTro) {
        this.maVaiTro = maVaiTro;
    }

    @Column(name = "TenVaiTro", nullable = true)
    public String getTenVaiTro() {
        return tenVaiTro;
    }

    public void setTenVaiTro(String tenVaiTro) {
        this.tenVaiTro = tenVaiTro;
    }

    @Column(name = "MoTa", nullable = true)
    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }
}
