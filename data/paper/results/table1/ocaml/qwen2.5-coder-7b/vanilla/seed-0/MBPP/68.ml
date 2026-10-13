let rec is_Monotonic (a : int list) : bool = 
  let is_non_decreasing = ref true in
  let is_non_increasing = ref true in
  List.iter2 (fun x y -> 
      if y < x then is_non_decreasing := false else if x < y then is_non_increasing := false) 
      a (List.tl a);
  !is_non_decreasing || !is_non_increasing


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given list is monotonic or not. *)
