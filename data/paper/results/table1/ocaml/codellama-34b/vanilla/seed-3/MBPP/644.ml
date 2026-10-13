let rec reverse_Array_Upto_K (input : int list) (k : int) : int list =
  if k = 0 then
    []
  else
    let n = List.length input in
    if k > n - 1 then
      []
    else
      let last_part = List.take (n - k) input in
      let first_part = List.drop (n - k - 1) input in
      first_part @ last_part


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse a list upto a given position. *)
