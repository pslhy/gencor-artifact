
let rec remove_whitespaces (text1 : string) : string = 
  let rec helper (chars : char list) : char list = 
    match chars with 
    | [] -> []
    | ' ' :: rest -> helper rest
    | _ :: rest -> chars @ helper rest
  in 
  String.trim (List.fold_left (fun acc c -> acc ^ String.make 1 c) "" (helper (String.to_seq text1 |> List.of_seq)))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from the given string. *)
