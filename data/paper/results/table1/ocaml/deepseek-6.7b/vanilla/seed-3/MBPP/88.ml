let rec freq_count (list1 : int list) : (int * int) list =
  match list1 with
  | [] -> []
  | (x :: xs) -> 
      let rest = freq_count xs in
      let count = List.assoc_default 0 x rest in
      (x, count + 1) :: (List.remove_assoc x rest)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get the frequency of all the elements in a list, returned as an association list. *)
