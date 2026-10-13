let rec string_to_list (string : string) : string list = 
  let rec split acc = function
    | "" -> List.rev acc
    | s -> let i = String.search s ' ' in
          let word = String.sub s 0 i in
          let rest = String.sub s (i + 1) (String.length s - i - 1) in
          split (word :: acc) rest
  in split [] string


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a string to a list of strings split on the space character. *)
