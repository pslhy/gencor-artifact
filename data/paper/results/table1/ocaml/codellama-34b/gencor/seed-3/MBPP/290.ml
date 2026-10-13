
let rec max_length (list1 : int list list) :  int * int list =
  let max_length_helper l =
  match l with
    | [] -> (0, [])
    | h :: t ->
        let (len, ml) = max_length (t) in
        if h > len then (h, [h]) else (len, ml)in
max_length_helper list1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list of maximum length in a list of lists. *)
