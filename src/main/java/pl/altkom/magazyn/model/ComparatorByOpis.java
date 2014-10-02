package pl.altkom.magazyn.model;

import java.util.Comparator;

public class ComparatorByOpis implements Comparator<Towar> {
    
    @Override
    public int compare(Towar o1, Towar o2) {
        String opi1 = o1.getOpis();
        String opi2 = o2.getOpis();
        return opi1.compareToIgnoreCase(opi2);
    }

}
