/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author fredyalexander
 */
public class ClInventario {
    private int IdInventario;
    private String CodigoI;
    private int CantidadI;
    private String NombreI;
    private double ValorI;

    public ClInventario() {
    }

    public ClInventario(String CodigoI, int CantidadI, String NombreI, double ValorI) {
        this.CodigoI = CodigoI;
        this.CantidadI = CantidadI;
        this.NombreI = NombreI;
        this.ValorI = ValorI;
    }

    /**
     * @return the IdInventario
     */
    public int getIdInventario() {
        return IdInventario;
    }

    /**
     * @param IdInventario the IdInventario to set
     */
    public void setIdInventario(int IdInventario) {
        this.IdInventario = IdInventario;
    }

    /**
     * @return the CantidadI
     */
    public int getCantidadI() {
        return CantidadI;
    }

    /**
     * @param CantidadI the CantidadI to set
     */
    public void setCantidadI(int CantidadI) {
        this.CantidadI = CantidadI;
    }

    /**
     * @return the NombreI
     */
    public String getNombreI() {
        return NombreI;
    }

    /**
     * @param NombreI the NombreI to set
     */
    public void setNombreI(String NombreI) {
        this.NombreI = NombreI;
    }

    /**
     * @return the ValorI
     */
    public double getValorI() {
        return ValorI;
    }

    /**
     * @param ValorI the ValorI to set
     */
    public void setValorI(double ValorI) {
        this.ValorI = ValorI;
    }

    /**
     * @return the CodigoI
     */
    public String getCodigoI() {
        return CodigoI;
    }

    /**
     * @param CodigoI the CodigoI to set
     */
    public void setCodigoI(String CodigoI) {
        this.CodigoI = CodigoI;
    }
}
