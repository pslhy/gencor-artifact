let rec heap_queue_largest (nums : int list) (n : int) : int list =
    let heap_queue = Heap.merge nums in
    let rec aux current acc =
        if current <= 0 then acc
        else
            let x = Heap.maximum heap_queue in
            Heap.remove_maximum heap_queue;
            aux (current - 1) (x :: acc)
    in
    aux n []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
