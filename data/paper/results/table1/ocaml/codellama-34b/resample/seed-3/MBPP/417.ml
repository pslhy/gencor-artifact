(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find common first element in given list of lists. *)
let rec group_tuples (input : string list list) : string list list =
  let rec group (l : string list list) : string list list =
    match l with
    | [] -> []
    | x :: xs ->
      let common_prefix =
        List.fold_left (fun acc y -> acc @ [List.hd y]) [] xs
      in
      if List.length common_prefix > 0
      then common_prefix
      else group xs
  in
  group input

