let rec digit_distance_nums (n1 : int) (n2 : int) : int = 
  let pad_zeros n = 
    let str_n = string_of_int n in
    let len = String.length str_n in
    let zeros = String.make (max 0 (4 - len)) '0' in
    int_of_string (zeros ^ str_n)
  in
  let padded_n1 = pad_zeros n1 in
  let padded_n2 = pad_zeros n2 in
  let diff_count n1 n2 = 
    if n1 < 10 && n2 < 10 then
      abs (n1 - n2)
    else
      (abs (n1 mod 10 - n2 mod 10)) + (diff_count (n1 / 10) (n2 / 10))
  in
  diff_count padded_n1 padded_n2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the per-digit difference between two integers. *)
