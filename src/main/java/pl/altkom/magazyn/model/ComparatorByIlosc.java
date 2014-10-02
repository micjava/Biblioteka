package pl.altkom.magazyn.model;

import java.util.Comparator;

public class ComparatorByIlosc implements Comparator<Towar>  {
    
    @Override
    public int compare(Towar o1, Towar o2) {
        Double il1 = new Double(o1.getIlosc());
        Double il2 = new Double(o2.getIlosc());

        return il1.compareTo(il2);
    }

}
