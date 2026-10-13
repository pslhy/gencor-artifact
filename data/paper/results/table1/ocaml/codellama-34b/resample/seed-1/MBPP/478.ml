(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
let rec remove_lowercase (str1 : string) : string =
    let is_lowercase s =
        match s with
        | "" -> false
        | _ -> Char.lowercase s = s
    in
    if not (is_lowercase str1) then
        str1
    else
        let str2 = String.sub (str1, 1, (String.length str1) - 2) in
        if is_lowercase str2 then
            remove_lowercase str2
        else
            str1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:16: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_lowercase (str1 : string) : string =
  let is_lowercase s =
    match s with
    | "" -> false
    | _ -> (String.get s 0) >= 'a' && (String.get s 0) <= 'z'
  in
  if not (is_lowercase str1) then
    str1
  else
    let str2 = String.sub (str1, 1, (String.length str1) - 2) in
    if is_lowercase str2 then
      remove_lowercase str2
    else
      str1

