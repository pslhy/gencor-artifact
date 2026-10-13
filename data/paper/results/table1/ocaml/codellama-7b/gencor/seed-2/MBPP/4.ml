
let rec heap_queue_largest (nums : int list) (n : int) : int list =
  match nums with
  | [] -> []
  | [_] -> nums
  | _ ->
    let (smallest, rest) = List.partition nums (fun x -> x <= List.hd nums) in
    let (largest, _) = List.partition rest (fun x -> x >= List.hd smallest) in
    heap_queue_largest (largest @ List.tl smallest) (n - 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
