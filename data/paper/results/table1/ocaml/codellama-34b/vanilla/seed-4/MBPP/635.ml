let rec heap_sort (iterable : int list) : int list = 
    let heap = new Heap with Item = Anything with Capacity = (length iterable) in
    List.iterv (fun (x : int) -> heap.add x) iterable;
    let list = [] in
    List.append list (heap_sort (heap_tail heap));
 
let heap_tail (heap : Heap with Item = Anything) : Heap with Item = Anything =
    let tmp_heap = new Heap with Item = Anything in
    let index = 0 in
    List.iterv
        (fun (item : int) ->
            if index < heap.length / 2
            then tmp_heap.add item
        )
        heap.get_items;
    tmp_heap.add 
        (heap.get_item_at
            (heap.length - 1));
 
    let new_heap = new Heap with Item = Anything in
    List.append new_heap.get_items
        (List.reverse (heap_tail (heap.clear())));
 
    new_heap.clear()


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
