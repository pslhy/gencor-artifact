(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert a string to a list of strings split on the space character. *)
let rec string_to_list (string : string) : string list = 
  let rec split acc = function
    | "" -> List.rev acc
    | s -> let i = String.search s ' ' in
          let word = String.sub s 0 i in
          let rest = String.sub s (i + 1) (String.length s - i - 1) in
          split (word :: acc) rest
  in split [] string

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:20: Unbound value "String.search" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_to_list (string : string) : string list = 
  let rec split acc = function
    | "" -> List.rev acc
    | s -> let i = try Some (String.index s ' ') with Not_found -> None in
          match i with
          | Some i -> let word = String.sub s 0 i in
                      let rest = String.sub s (i + 1) (String.length s - i - 1) in
                      split (word :: acc) rest
          | None -> split (string :: acc) ""
  in split [] string

