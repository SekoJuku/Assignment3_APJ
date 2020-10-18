package Item;

import Item.Item;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import java.util.SortedSet;

public class ItemSet {
    private static Set<Item> items = new HashSet<Item>();
    private static Set<Item> items1;

    private ItemSet() { }

    private static void addUsers() {
        items.add(new Item(135, "Mamba", "Food", "Brick like thing that is delicious to chew! Has 4 mini Mambas, which contains 4 chewing candies"));
        items.add(new Item(250,"Snickers","Food", "Good to eat when ur hungry!"));
        items.add(new Item(200,"Coca-Cola","Food", "Black liquid made by some secret recipe!"));
        items.add(new Item(500000,"iFruit 12","Electronics", "It's FENOMAL DESIGN, GREAT PERFORMANCE, and so on."));
        items.add(new Item(250000,"Sumsang 20","Electronics","goooood."));
        items.add(new Item(220000,"Xiaomi Mi 10","Electronics", "Nice price/quality"));
        items.add(new Item(12000,"Adidas Trousers","Clothes", "Nice looking sport trousers, has good resistance against bulges in ankles area. Set 'Gopnik' 1/3"));
        items.add(new Item(15000,"Adidas Top","Clothes", "Nice looking sport top, quite good in keeping heat inside. Set 'Gopnik' 1/3"));
        items.add(new Item(45000,"Adidas Sneakers","Clothes", "Nice sneackers, good for running/chasing. Set 'Gopnik' 1/3"));
        items1 = items;
    }
    private static void addItems(Item a) {
        items.add(a);
    }

    public static Set<Item> getItems() {
        if(items.isEmpty()) {
            //System.out.println("GG!");
            addUsers();
        }
        return items1;
    }

    public static Set<Item> getItems(String a) {
        Set<Item> filteredItems = null;
        for (Item item :
                items1) {
            if (item.getCategory().equals("a")) {
                filteredItems.add(item);
            }
        }
        return filteredItems;
    }

    public static Item findItem(String name) {
        for (Item item :
                items1) {
            if (item.getName().equals(name)) {
                return item;
            }
        }
        return null;
    }


    public static boolean deleteItem(Item a) {
        return items1.remove(a);
    }


}
