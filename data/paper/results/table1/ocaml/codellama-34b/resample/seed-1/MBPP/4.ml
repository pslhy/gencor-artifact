(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
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

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:22: Unbound module "Heap" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list =
    let heap_queue = Heap.empty in
    let rec aux current acc =
        if current <= 0 then acc
        else if Heap.is_empty heap_queue then
            let elem = List.hd nums in
            Heap.insert heap_queue elem;
            aux (current - 1) (elem :: acc)
        else
            let elem = Heap.find_min heap_queue in
            Heap.remove_min heap_queue;
            aux (current - 1) (elem :: acc)
    in
    aux n []

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:22: Unbound module "Heap" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list =
    let heap_queue = Heap.empty in
    let rec aux current acc =
        if current <= 0 then acc
        else if Heap.is_empty heap_queue then
            let elem = List.hd nums in
            Heap.insert heap_queue elem;
            aux (current - 1) (elem :: acc)
        else
            let elem = Heap.find_min heap_queue in
            Heap.remove_min heap_queue;
            aux (current - 1) (elem :: acc)
    in
    aux n []

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:22: Unbound module "Heap" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list =
    let heap_queue = Heap.Heap.empty in
    let rec aux current acc =
        if current <= 0 then acc
        else if Heap.Heap.is_empty heap_queue then
            let elem = List.hd nums in
            Heap.Heap.insert heap_queue elem;
            aux (current - 1) (elem :: acc)
        else
            let elem = Heap.Heap.find_min heap_queue in
            Heap.Heap.remove_min heap_queue;
            aux (current - 1) (elem :: acc)
    in
    aux n []

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:22: Unbound module "Heap" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list =
    let heap_queue = Heap.create () in
    let rec aux current acc =
        if current <= 0 then acc
        else if Heap.is_empty heap_queue then
            let elem = List.hd nums in
            Heap.insert heap_queue elem;
            aux (current - 1) (elem :: acc)
        else
            let elem = Heap.find_min heap_queue in
            Heap.remove_min heap_queue;
            aux (current - 1) (elem :: acc)
    in
    aux n []

