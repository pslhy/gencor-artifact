let rec heap_queue_largest (nums : int list) (n : int) : int list =
  match nums with
  | [] -> []
  | _ ->
      let open List in
      let rec build_heap = function
        | a::b::t ->
            if a < b then
              a :: build_heap (b :: t)
            else
              b :: build_heap (a :: t)
        | l -> l
      in
      let rec filter_greater_than = function
        | (x::xs as l), m when x < m ->
            let (o, y::ys) = partition ((>=) x) l in
            y :: filter_greater_than (y :: xs, y), ys
        | l, m -> l
      in
      let rec insert_and_filter l min_known =
        match l with
        | [] -> []
        | x::xs -> min_known :: insert_and_filter (filter_greater_than (xs,min_known)) x
      in
      let sorted = List.rev (insert_and_filter (tl nums) (hd nums)) in
      let (first_n_max, _) = partition ((>=) (nth sorted (length sorted - n))) sorted in
      List.rev (build_heap (sort (fun (x : int) (y : int) -> compare x y) first_n_max))
    
let nLargest nums n = heap_queue_largest nums n    


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
