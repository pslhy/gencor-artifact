let rec catalan_number (num : int) : int =
  if num = 1 || num = 0 then
    1
  else
    List.fold_left (fun acc x -> acc + x) 0 (List.filter (fun x -> x mod num = 0) (List.init num catalan_number))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which returns nth catalan number. *)
