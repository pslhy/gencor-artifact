let rec is_decimal (num : string) : bool =
  if num = "" then false
  else
    let num = String.concat "" (List.map (fun c -> if c = "," then "." else c) (explode num)) in
    try
      let n = float_of_string num in
      abs_float (n - int_of_float n) < 0.01
    with
    | _ -> false

and explode (s : string) : string list =
  let rec aux (i : int) (acc : string list) =
    if i >= String.length s then acc
    else aux (i + 1) (s.[i] :: acc)
  in
  aux 0 []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
