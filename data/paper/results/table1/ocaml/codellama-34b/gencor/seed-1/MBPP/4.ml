
let rec heap_queue_largest (nums : int list) (n : int) : int list =
    let heap_queue = ref [] in
    let heap_contains = ref [] in
    List.iter (fun num ->
        if heap_queue = [] || n > List.length !heap_queue then
            heap_queue := (num, num) :: !heap_queue
        else
            let top_priority, top_value = List.hd !heap_queue in
            if top_priority < num then begin
                heap_contains := top_value :: !heap_contains;
                heap_queue := (num, num) :: !heap_queue
            end else
                heap_queue := (top_priority, top_value) :: !heap_queue
    ) nums;
    !heap_queue

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
