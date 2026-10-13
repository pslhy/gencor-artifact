let rec all_prefixes (string : string) : string list = 
  let rec helper (acc : string list) (s : string) : string list =
    if s = "" then acc
    else helper ((String.sub s 0 1) :: acc) (String.sub s 1 (String.length s - 1))
  in
  List.rev (helper [] string)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return list of all prefixes from shortest to longest of the input string *)
(*     >>> all_prefixes "abc" *)
(*     ["a"; "ab"; "abc"] *)
