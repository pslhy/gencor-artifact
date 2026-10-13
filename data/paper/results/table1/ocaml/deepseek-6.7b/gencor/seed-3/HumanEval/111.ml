
let rec histogram (test : string) : (string * int) list =
  let strList = String.split_on_char ' ' test in
  let rec count_letters (lst : string list) (acc : (string * int) list) : (string * int) list =
    match lst with 
    | [] -> acc
    | h::t -> let count = List.assoc_opt h acc |> Option.value ~- 0 in
              count_letters t ((h, count + 1)::(List.remove_assoc h acc))
    in
  count_letters strList []

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a string representing a space separated lowercase letters, return an association list *)
(*     of the letter with the most repetition and containing the corresponding count. *)
(*     If several letters have the same occurrence, return all of them. *)
(*     Example: *)
(*     >>> histogram "a b c" *)
(*     [("a", 1); ("b", 1); ("c", 1)] *)
(*     >>> histogram "a b b a" *)
(*     [("a", 2); ("b", 2)] *)
(*     >>> histogram "a b c a b" *)
(*     [("a", 2); ("b", 2)] *)
(*     >>> histogram "b b b b a" *)
(*     [("b", 4)] *)
(*     >>> histogram "" *)
(*     [] *)
