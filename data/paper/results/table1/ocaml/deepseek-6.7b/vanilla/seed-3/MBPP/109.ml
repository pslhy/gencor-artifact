let rec odd_Equivalent (s : string) (n : int) : int =
  let b_str_len = String.length s in
  let rec rotate str =
    let rotate_once = String.sub str 1 (b_str_len - 1) ^ String.make 1 (String.get str 0) in
    rotate_once
  in
  let rec scan_bin (str : string) (n : int) : int = 
    let b_str_len = String.length str in 
    if (n = 0) then 0 
    else if (int_of_string ("0b" ^ str) mod 2 = 1) then 
      (scan_bin (rotate str) (n - 1)) + 1 
    else
      (scan_bin (rotate str) (n - 1))
  in
  scan_bin s n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
