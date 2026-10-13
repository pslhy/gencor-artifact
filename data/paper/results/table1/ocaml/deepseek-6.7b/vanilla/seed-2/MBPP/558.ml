let rec digit_distance_nums (n1 : int) (n2 : int) : int =
  let sum = String.fold_left (fun acc digit -> acc + abs (int_of_char digit - int_of_char '0')) 0 in
  let str_n1 = string_of_int n1 in
  let str_n2 = string_of_int n2 in
  if String.length str_n1 <> String.length str_n2 then 
    invalid_arg "Number of digits doesn't match."
  else 
    abs (sum (String.map (fun c -> c) (str_n1)) - sum (String.map (fun c -> c) (str_n2)))
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the per-digit difference between two integers. *)
