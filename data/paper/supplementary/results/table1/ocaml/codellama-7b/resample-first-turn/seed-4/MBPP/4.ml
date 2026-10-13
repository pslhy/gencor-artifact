let rec heap_queue_largest (nums : int list) (n : int) : int list =
  if n > 0 && nums <> [] then
    let min_heap = OCaml.List.heap_create (fun _ ->
         fun n -> n
       )
       (List.take nums n)
     in
     let rec consume heap = function
       | [] -> ()
       | h :: t ->
         let heap = OCaml.List.heap_add heap h in
         if OCaml.List.heap_size heap > n then
           let _ = OCaml.List.heap_pop heap in
           consume heap t
         else
           consume heap t
     in
     consume heap nums;
     OCaml.List.heap_to_list min_heap
  else
    []

let find_n_largest (nums : int list) (n : int) : int list =
  heap_queue_largest nums n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
