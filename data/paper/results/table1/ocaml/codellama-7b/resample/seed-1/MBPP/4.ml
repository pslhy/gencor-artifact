(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list =
    let rec aux (queue : int Heap) (remaining_nums : int list) : int list =
        match remaining_nums with
        | [] -> queue
        | x :: xs ->
            let queue = heap_add (Queue.BewareOverflow Bound ()) queue x in
            if Heap.length queue > n then
                heap_pop (Queue.BewareOverflow Bound ()) queue
            else
                aux queue xs
    in
    aux (Heap.of_list (List.rev nums)) nums

let find_largest_numbers (nums : int list) (n : int) : int list =
    let max_heap = heap_queue_largest nums n in
    List.map heap_peek (Heap.to_list max_heap)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:34: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list =
  let rec aux (queue : int Heap) (remaining_nums : int list) : int list =
    match remaining_nums with
    | [] -> queue
    | x :: xs ->
        let queue = Heap.add queue x in
        if Heap.size queue > n then
          Heap.pop queue
        else
          aux queue xs
  in
  aux (Heap.empty ()) nums

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:32: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list =
  let rec aux (queue : int Heap) (remaining_nums : int list) : int list =
    match remaining_nums with
    | [] -> queue
    | x :: xs ->
        let queue = Heap.add queue x in
        if Heap.size queue > n then
          Heap.pop_reusing queue
        else
          aux queue xs
  in
  aux (Heap.empty ()) nums

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:32: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list =
  let rec aux (queue : int Heap) (remaining_nums : int list) : int list =
    match remaining_nums with
    | [] -> Heap.to_list queue
    | x :: xs ->
        let queue = Heap.add queue x in
        if Heap.size queue > n then
          Heap.pop_reusing queue
        else
          aux queue xs
  in
  aux (Heap.empty ()) nums

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:32: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list =
  let rec aux (queue : int Heap) (remaining_nums : int list) : int list =
    match remaining_nums with
    | [] -> queue
    | x :: xs ->
        let queue = Heap.add queue x in
        if Heap.size queue > n then
          Heap.pop_reusing queue
        else
          aux queue xs
  in
  aux (Heap.empty ()) nums

