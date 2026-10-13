let rec armstrong_number (number : int) : bool =
  let num_str = string_of_int number in
  let len = String.length num_str in
  number = List.fold_left (fun acc curr -> acc + pow curr len) 0 (List.init len (fun _ -> int_of_string_of_char num_str))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)
