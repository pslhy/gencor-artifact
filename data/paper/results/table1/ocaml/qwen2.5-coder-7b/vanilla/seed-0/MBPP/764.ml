let rec number_ctr (str : string) : int = 
  let is_digit c = Char.isdigit c in
  let filter_digits s = List.filter is_digit (String.to_list s) in
  List.length (filter_digits str)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count number of digits in a given string. *)
