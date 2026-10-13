let rec is_decimal (num : string) : bool =
  match num with
  | _ when num = "" -> false
  | "." -> false
  | _ when num.[0] = '.' -> is_decimal (String.sub num 1 (String.length num - 1))
  | _ when num.[String.length num-1] = '.' -> is_decimal (String.sub num 0 (String.length num - 1))
  | _ -> is_decimal_helper num 0 0

and is_decimal_helper (num : string) (point_pos : int) (decimal_count : int) : bool =
  match num with
  | "" -> point_pos <> 0 && point_pos = decimal_count
  | _ when num.[0] = '.' -> is_decimal_helper (String.sub num 1 (String.length num - 1)) (point_pos + 1) decimal_count
  | _ when Char.is_digit num.[0] -> is_decimal_helper (String.sub num 1 (String.length num - 1)) point_pos (decimal_count + 1)
  | _ -> false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
