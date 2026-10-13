let rec is_decimal (num : string) : bool =
    if num = "" then false
    else
    let ch = num.[0] in
    let rest = String.sub num 1 (String.length num - 1) in

    if ch = '.' then count_dot num > 0 && forall is_digit rest
    else is_digit ch && forall is_digit rest
and count_dot (num : string) : int =
    if String.length num = 0 then 0
    else if num.[0] = '.' then 1 + count_dot (String.sub num 1 (String.length num - 1))
    else count_dot (String.sub num 1 (String.length num - 1))
and forall f s =
    if String.length s = 0 then true
    else if f s.[0] then forall f (String.sub s 1 (String.length s - 1))
    else false
and is_digit ch =
    '0' <= ch && ch <= '9'


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
