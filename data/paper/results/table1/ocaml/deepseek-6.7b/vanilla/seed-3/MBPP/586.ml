let rec split_Arr (l : int list) (n : int) : int list =
  match l, n with
  | [], _ -> []
  | _ , 0 -> l
  | _ , n -> if n > List.length l then l else split_Arr (List.tl l @ [List.hd l]) (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to split a list at the nth eelment and add the first part to the end. *)
