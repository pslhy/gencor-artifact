let rec heap_sort (iterable : int list) : int list = 
    (* Transform the list into a max heap using the heap_ify function *)
    let heap = List.fold_left (fun h x -> (heap_ify h x)) hed empty in

    let rec sort (heap : int list) : int list = match heap with
        | [] -> []
        | h :: t -> 
            (* Remove the largest element from the heap and place it in the result list *)
            h :: sort (List.tl t)
    in
    (* Sort the list by repeatedly removing the largest element from the heap and placing it in the result list *)
    List.rev (sort heap)
    
and heap_ify (heap : int list) (x : int) : int list =
    (* Create a new heap with the largest element at the top and recursively heapify the subtree *)
    recursive_heapify (heap_largest_element heap)

and heap_largest_element (heap : int list) : int * int list =
    (* Find the largest element in the heap and return it along with the rest of the heap *)
    match heap with
    | [] -> failwith "Heap is empty."
    | h :: t -> (h, t)

and recursive_heapify (h : int * int list) : int list = 
    (* Heapify the given heap by moving the largest element to the top and recursively heapifying the subtree *)
    match h with
    | (h, []) -> [h]
    | (h, t) ->
        (* Recursively heapify the left and right subtrees *)
        let left = recursive_heapify (heap_largest_element (List.take h) in
        let right = recursive_heapify (heap_largest_element (List.drop (h - 1) t) in
        (* Combine the largest elements in the left and right subtrees with the current element to form the new heap *)
        List.append (h :: left) right
in
heap_sort [3; 4; 1; 2; 5; 6; 7; 8; 9; 0]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
