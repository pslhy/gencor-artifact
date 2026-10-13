let rec reverse_Array_Upto_K (input : int list) (k : int) : int list =
  let rec reverse input idx acc =
    match input with
    | [] -> acc
    | head::tail -> if idx > 0 then reverse tail (idx - 1) (head::acc)
                    else input
  in reverse input k []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse a list upto a given position. *)
