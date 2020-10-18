package Cart;

import Item.Item;

import java.util.PriorityQueue;
import java.util.Queue;

public class Cart {
    private static Queue<Item> q = new PriorityQueue<Item>();

    public Cart() {

    }

    public static void addItem(Item a) { q.add(a); }

    public static Queue<Item> getItems() { return q; }

    public static void deleteAll() {
        q.clear();
    }


}
