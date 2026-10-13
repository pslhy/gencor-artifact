
let rec heap_queue_largest (nums : int list) (n : int) : int list = 
  let rec build_max_heap (lst : int list) : int list =
    List.fold_left (fun acc x -> if List.length acc <= 1 then x :: acc
 else if x > List.hd acc then x :: List.tl acc
 else List.cons (List.hd acc) (build_max_heap (x :: List.tl acc)))
                  [] lst
  in
  let heap = build_max_heap nums in
  let rec extract_max (heap : int list) (acc : int list) (k : int) : int list =
    if k = 0 then acc
    else if List.length heap = 1 then acc @ heap
    else let max_val = List.hd heap in
         let rest = List.tl heap in
         List.sort compare (acc @ [max_val]) |> List.rev ?extract_max rest [] (k-1)
  in
  extract_max heap [] n

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
