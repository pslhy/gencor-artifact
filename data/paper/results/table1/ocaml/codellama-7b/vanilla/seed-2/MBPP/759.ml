let rec is_decimal (num : string) : bool =
  let len = String.length num in
  if len = 0 || len > 4 then false else
    let rec check_decimal (i : int) : bool =
      if i = len - 1 then true else
        let c = num.[i] in
        if c >= '0' && c <= '9' then check_decimal (i + 1) else false
    in check_decimal 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
