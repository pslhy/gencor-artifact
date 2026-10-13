let rec reverse_Array_Upto_K (input : int list) (k : int) : int list =
  match (input, k) with
  | (x :: xs, 0) -> []
  | (x :: xs, _) when k > 1 ->
      let tail = reverse_Array_Upto_K (xs) (k - 1) in
      tail @ [x]
  | _ -> []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse a list upto a given position. *)
