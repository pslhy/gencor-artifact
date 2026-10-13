let rec odd_values_string (str : string) : string =
  match str with
  | "" -> ""
  | _ ->
    let rec odd_helper (idx : int) (str : string) (acc : string) : string =
      match str with
      | "" -> acc
      | _ ->
        let char = String.get str idx in
        let new_acc = acc ^ char in
        odd_helper (idx + 1) str new_acc
    in
    let len = String.length str in
    let odd_str = String.sub str 0 (len - 1) in
    odd_helper 0 odd_str ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove the characters which have odd index values of a given string. *)
