let rec tuple_str_int (test_str : string) :  int * int * int =
  let arr = String.split_on_char ',' test_str in
  try
  ((int_of_string (List.nth arr 0)), (int_of_string (List.nth arr 1)), (int_of_string (List.nth arr 2)))
  with
  | _ -> raise (Invalid_argument "Invalid input string")
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
