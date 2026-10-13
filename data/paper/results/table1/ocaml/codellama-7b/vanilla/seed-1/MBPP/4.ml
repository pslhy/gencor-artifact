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


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
