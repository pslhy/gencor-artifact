let rec is_decimal (num : string) : bool =
  match num with
  | "" -> true
  | "." -> false
  | "+" | "-" -> if String.length num > 1 then is_decimal (String.sub num 1 (String.length num - 1)) else false
  | _ when (num.[0] = '+' || num.[0] = '-') && String.length num > 1 -> is_decimal (String.sub num 1 (String.length num - 1))
  | _ -> if String.contains num '.' then
            let split = String.split_on_char '.' num in
            if List.length split = 2 && is_int (List.nth split 0) && is_int (List.nth split 1)
            then min (String.length (List.nth split 1)) 2 = 2
            else false
         else is_int num
and is_int (num : string) : bool =
  try ignore(int_of_string num); true
  with Failure _ -> false



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
