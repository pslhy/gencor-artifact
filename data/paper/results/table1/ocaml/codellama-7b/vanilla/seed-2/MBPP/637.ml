let rec noprofit_noloss (actual_cost : int) (sale_amount : int) : bool =
  match (actual_cost - sale_amount) with
  | 0 -> true
  | x when x < 0 -> false
  | _ -> noprofit_noloss actual_cost (sale_amount - 1)

let () =
  print_int (noprofit_noloss 50 55);
  print_endline " ";
  print_int (noprofit_noloss 150 100);
  print_endline " ";
  print_int (noprofit_noloss 150 105)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given amount has no profit and no loss *)
